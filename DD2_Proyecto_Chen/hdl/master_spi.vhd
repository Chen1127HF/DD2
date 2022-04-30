library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;
     ini:           in     std_logic;                     -- inicio de transacción
     dato:          in     std_logic_vector(15 downto 0); -- byte de dato introducido
     SDO:           in     std_logic;                     -- Slave Data Output (Master input)
     ena_rd:        buffer std_logic;                     -- habilitación de lectura
     data_rd:       buffer std_logic_vector(7 downto 0);  -- byte de SDO, entregado por slave
     nCS:           buffer std_logic;                     -- Chip Selection
     SPC:           buffer std_logic;                     -- clock SPI (5 MHz) 
     SDI:           buffer std_logic;                     -- Slave Data input  (connected to Master SDO)
     fin_tx:        buffer std_logic                      -- No hace falta pero creo que queda mejor
    );
end entity;

architecture rtl of master_spi is
  -- Divisor de frecuencias
  signal cnt_div:       std_logic_vector(3 downto 0); -- Le sobrabran bytes

  
  -- Cuenta para generacion de SPC y salidas
  signal ena_SDO:       std_logic;  -- Habilitacion de desplazamiento del registro de salida
  signal ena_SDI:       std_logic;  -- Habilitacion de desplazamiento del registro de entrada
  signal SPC_up:        std_logic;  -- Flanco de subida en SPC
  signal SPC_down:      std_logic;
  
	 
  -- Constantes correspondientes a las especificaciones de tiempo SPI
  constant SPI_T_SPC:        natural := 10; 
  constant SPI_T_SPC_L:      natural := 5;
  constant SPI_T_SPC_H:      natural := 5;

  constant SPI_t_su_CS:      natural := 1;
  constant SPI_t_hd_CS:      natural := 1;
  
  constant SPI_t_hd_SDI:     natural := 1;
  constant SPI_t_su_SDI:     natural := 1; -- A ver si funciona...

  constant SPI_t_v_SDO:      natural := 2;
  constant SPI_t_hd_SDO:     natural := 1;
  constant SPI_t_dis_SDO:    natural := 2;
  
  -- Contadores
  signal cnt_bit:  std_logic_vector(3 downto 0);
  signal cnt_byte: std_logic_vector(2 downto 0);
  signal ena_bit:  std_logic;

  signal ini_T1: std_logic;

  -- Registros
  signal reg_SDI: std_logic_vector(15 downto 0);
  signal reg_SDO: std_logic_vector(7 downto 0);
  signal reg_nWR: std_logic;

begin

  -- Contador modulo 10 para generación de nuevo reloj 5 MHz = 200 ns
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div <= (others => '0');
      reg_nWR <= '0';
    elsif clk'event and clk = '1' then

      if ini = '1' then                        -- Se inicia la comunicacion
        reg_nWR <= dato(15);  -- Esto aqui?
        cnt_div <= (0=>'1', others => '0');

      elsif fin_tx = '1' then                  -- Se termina la comunicacion
        cnt_div <= (others => '0');

      elsif cnt_div > 9 then                   -- Reiniciar contador			
        cnt_div <= (0=>'1', others => '0');
			
      elsif cnt_div /= 0 then                  -- Contar	
        cnt_div <= cnt_div + 1;
      end if;
    end if;
  end process;

  -- Generacion de SPC
  
  SPC      <= '0' when nCS = '0' and cnt_div /= 0 and cnt_div < 6 else
              '1';

  SPC_up   <= '1' when nCS = '0' and cnt_div = 6 else
              '0';

  SPC_down <= '1' when nCS = '0' and cnt_div = SPI_t_su_SDI else
              '0';

  nCS      <= '0' when ini = '1' or  cnt_div > 0 else
              '1';

  -- Contador bits
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_bit <= (others => '0');
    elsif clk'event and clk = '1' then
      if ena_bit = '1' then
        cnt_bit <= (others => '0');
      elsif SPC_up = '1' then
        cnt_bit <= cnt_bit + 1;
      end if;
    end if;
  end process;

  ena_bit <= '1' when cnt_bit = 7 and SPC_up = '1' and (reg_nWR = '0' or cnt_byte /= 2) else -- PREGUNTAR: por que hay un ciclo de reloj extra entre lectura y escritura?
             '1' when cnt_bit = 8 and SPC_up = '1' and cnt_byte = 2 and reg_nWR = '1' else  -- Generacion de las señales de control
             '0';

  -- Contador bytes
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_byte <= (0=> '1', others => '0');
    elsif clk'event and clk = '1' then
      if fin_tx = '1' then 
        cnt_byte <= (0=> '1', others => '0'); 
      elsif ena_bit = '1' and SPC_up = '1' then    
        cnt_byte <= cnt_byte + 1;
      end if;
    end if;
  end process;
  
  fin_tx  <= '1' when (cnt_byte = 5 and reg_nWR = '1') and ena_bit = '1' else
             '1' when (cnt_byte = 2 and reg_nWR = '0') and ena_bit = '1' else
             '0';

  ena_SDO <= '1' when SPC_up = '1' and reg_nWR = '1' and (cnt_byte > 1 ) else -- or (cnt_byte = 1 and ena_bit = '1') tb distinto de HE
             '0';

  ena_SDI <= '1' when SPC_down = '1' and reg_nWR = '0' else
             '1' when SPC_down = '1' and reg_nWR = '1' and cnt_byte = 1 else
             '0';

  ena_rd  <= '1' when ena_bit = '1' and SPC_up = '1' and ena_SDO = '1' else
             '0';                                 

  -- Registro de entrada    
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDO <= (others =>'0');
      data_rd <= (others =>'0');
    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
      elsif ena_SDO = '1' then     
        reg_SDO <= reg_SDO(6 downto 0) & SDO;
        if ena_rd = '1' then
          data_rd <= reg_SDO;
        end if;
      end if;
    end if;
  end process;
        

             
  -- Registro de salida     
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDI <= (others => '0');
      ini_T1 <= '0';
    elsif clk'event and clk = '1' then 
      ini_T1 <= ini;                    
      if nCS = '1' then
        reg_SDI <= (others => '0');
      elsif ena_SDI = '1' then 
        if ini_T1 = '1' then
          reg_SDI <= dato;
        else
          reg_SDI <= reg_SDI(14 downto 0) & '0';
        end if;
      end if;
    end if;
  end process;

  SDI <= reg_SDI(15) when ena_SDI = '1';

end rtl;
