library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;
     ini:           in     std_logic;                     -- inicio de transacción
     nWR:           in     std_logic;
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
  
	 
  -- Constantes correspondientes a las especificaciones de tiempo SPI
  constant SPI_T_SPC:        natural := 10; 
  constant SPI_T_SPC_L:      natural := 5;
  constant SPI_T_SPC_H:      natural := 5;

  constant SPI_t_su_CS:      natural := 1;
  constant SPI_t_hd_CS:      natural := 1;
  
  constant SPI_t_hd_SDI:     natural := 1;
  constant SPI_t_su_SDI:     natural := 0; -- A ver si funciona...

  constant SPI_t_v_SDO:      natural := 2;
  constant SPI_t_hd_SDO:     natural := 1;
  constant SPI_t_dis_SDO:    natural := 2;
  
  -- Registros
  signal cnt: std_logic_vector(5 downto 0);
  signal reg_SDI: std_logic_vector(15 downto 0);
  signal reg_SDO: std_logic_vector(7 downto 0);
  signal reg_nWR: std_logic;

begin

  -- Contador modulo 10 para generación de nuevo reloj 5 MHz = 200 ns
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div <= (others => '0');
    elsif clk'event and clk = '1' then
      if nCS = '0' then
        if cnt_div > 8 then 				
          cnt_div <= (others => '0');			
        else						
          cnt_div <= cnt_div + 1;			
        end if;
      else
        cnt_div <= (others => '0');
      end if;
    end if;
  end process;
  
  -- Generacion de SPC
  
  SPC    <= '0' when cnt_div /= 0 and cnt_div < 6 and nCS = '0' else
            '1';
  SPC_up <= '1' when cnt_div = 6 and nCS = '0' else
            '0';
  nCS    <= '0' when ini = '1' or cnt > 0 else
            '1';

   -- Generacion de las señales de control
                                
  ena_SDO <= '1' when nCS = '0' and reg_nWR = '1' and cnt>8 and cnt_div = SPI_T_SPC_L + SPI_t_v_SDO else
             '0';

  ena_SDI <= '1' when nCS = '0' and (reg_nWR = '0' or (reg_nWR = '1' and cnt<9 and cnt>0)) and cnt_div = SPI_t_su_SDI else
             '0'; 

  -- Contador 

  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt <= (others => '0');
      reg_nWR <= '0';
    elsif clk'event and clk = '1' then
      if ini = '1' then
        cnt <= (0 => '1', others => '0');
        reg_nWR <= nWR;
      elsif SPC_up = '1' then
        if (cnt = 40 and reg_nWR = '1') or (cnt = 16 and reg_nWR = '0') then
          cnt <= (others => '0');        
        else
          cnt <= cnt + 1;
        end if;
      end if;
    end if;
  end process;

  ena_rd <= '1' when (cnt = 41 or cnt = 17 or cnt = 25 or cnt = 33) and SPC_up = '1' and reg_nWR = '1' else
            '0'; -- Hay alguna forma facil de expresar esto?
  -- Como se arregla esta chapuza?

  -- Registro de entrada    
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDO <= (others =>'0');
    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
      elsif ena_SDO = '1' then      -- He quitado de aqui la comprobación de nRW porque se hace en ena_SDO
        reg_SDO <= reg_SDO(6 downto 0) & SDO;
      elsif ena_rd = '1' then
        data_rd <= reg_SDO;
      end if;
    end if;
  end process;

 -- data_rd <= reg_SDO when ena_rd = '1';  --Mantenemos el registro?
        

             
  -- Registro de salida     
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDI <= (others => '0');
    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
        reg_SDI <= (others => '0');
      elsif ini = '1' then
          reg_SDI <= dato;
      elsif ena_SDI = '1' then   -- He quitado de aqui la comprobación de nRW porque se hace en ena_SDO
        reg_SDI <= reg_SDI(14 downto 0) & '0';
      end if;
    end if;
  end process;

  SDI <= reg_SDI(15) when ena_SDI = '1';-- else  -- Mantenemos el registro?
         --'0'; -- Hay alguna forma de poner esto para que se mantenga el dato a la salida?

end rtl;
