-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 20/05/2022
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi is
port(clk:      in     std_logic;
     nRst:     in     std_logic;
     ini_tx:   in     std_logic;                     -- Inicio de transmision
     dato_cmd: in     std_logic_vector(15 downto 0); -- Byte de dato introducido
     SDO:      in     std_logic;                     -- Slave Data Output (Master input)
     ena_rd:   buffer std_logic;                     -- Habilitación de lectura
     dato_rd:  buffer std_logic_vector(7 downto 0);  -- Byte de SDO, entregado por slave
     nCS:      buffer std_logic;                     -- Chip Selection
     SPC:      buffer std_logic;                     -- Clock SPI (5 MHz) 
     SDI:      buffer std_logic;                     -- Slave Data input  (connected to Master SDO)
     fin_tx:   buffer std_logic                      -- fin de la comunicacion
     );
end entity;

architecture rtl of master_spi is
  -- Divisor de frecuencias
  signal cnt_div:       std_logic_vector(5 downto 0); 

  
  -- Cuenta para generacion de SPC y salidas
  signal ena_SDO:       std_logic;  -- Habilitacion de desplazamiento del registro de salida
  signal ena_SDI:       std_logic;  -- Habilitacion de desplazamiento del registro de entrada
  signal SPC_up:        std_logic;  -- Flanco de subida en SPC
  signal SPC_down:      std_logic;
  
  -- Contadores
  signal cnt_bit:  std_logic_vector(3 downto 0);
  signal cnt_byte: std_logic_vector(2 downto 0);
  signal ena_bit:  std_logic;


  -- Registros
  signal reg_SDI: std_logic_vector(15 downto 0);
  signal reg_nWR: std_logic;

	signal SDO_T1:	std_logic;

begin

  -- Contador modulo 10 para generación de nuevo reloj 5 MHz = 200 ns
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div <= (others => '0');
      reg_nWR <= '0';
    elsif clk'event and clk = '1' then

      if ini_tx = '1' then                     -- Se inicia la comunicacion
        reg_nWR <= dato_cmd(15);
        cnt_div <= (0=>'1', others => '0');

      elsif fin_tx = '1' then                  -- Se termina la comunicacion
        cnt_div <= (others => '0');

      elsif cnt_div > 50 then                  -- Reiniciar contador			
        cnt_div <= (1=>'1', others => '0');
			
      elsif cnt_div /= 0 then                  -- Contar	
        cnt_div <= cnt_div + 1;
      end if;
    end if;
  end process;

  process(clk, nRst)
  begin
    if nRst = '0' then
      SPC <= '1';
    elsif clk'event and clk = '1' then
      if nCS = '0' and cnt_div > 1 and cnt_div < 35 then
        SPC <= '0';
      else
        SPC <= '1';
      end if;
    end if;
  end process;

  -- Generacion de las seńales SPI
  SPC_up   <= '1' when nCS = '0' and cnt_div = 35 else
              '0';
  SPC_down <= '1' when nCS = '0' and cnt_div = 3 else
              '0';
  nCS      <= '0' when cnt_div > 0 else
              '1';

  -- Contador bits (hasta 8 bits) enviados/recibidos en la comunicacion
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

  ena_bit <= '1' when cnt_bit = 7 and SPC_up = '1' else
             '0';

  -- Contador bytes totales enviados en la comunicacion
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_byte <= (0=> '1', others => '0');
    elsif clk'event and clk = '1' then

      if fin_tx = '1' then           
        cnt_byte <= (0=> '1', others => '0'); 

      elsif ena_bit = '1' then    
        cnt_byte <= cnt_byte + 1;

      end if;
    end if;
  end process;
  
  fin_tx  <= '1' when (cnt_byte = 5 and reg_nWR = '1') and ena_bit = '1' else  -- Lectura 5 bytes (1 escritura, 4 lectura)
             '1' when (cnt_byte = 2 and reg_nWR = '0') and ena_bit = '1' else  -- Escritura 2 bytes
             '0';

  ena_SDO <= '1' when SPC_up   = '1' and reg_nWR = '1' and (cnt_byte > 1 ) else -- Activacion lectura (SDO slave)
             '0';

  ena_SDI <= '1' when SPC_down = '1' and reg_nWR = '0' else                     -- Activacion escritura (SDI slave)
             '1' when SPC_down = '1' and reg_nWR = '1' and cnt_byte = 1 else    -- 1er byte de la operacion de lectura es escritura
             '0';                            

  -- Registro de entrada
  process(clk, nRst)
  begin
    if nRst = '0' then
      SDO_T1 <= '0';
    elsif clk'event and clk = '1' then
      SDO_T1 <= SDO;
    end if;
  end process;

    
  process(clk, nRst)
  begin
    if nRst = '0' then
      dato_rd <= (others =>'0');
    elsif clk'event and clk = '1' then
      if ena_SDO = '1' then    
        dato_rd <= dato_rd(6 downto 0) & SDO_T1;   -- Se desplaza el registro de entrada

        if ena_bit = '1' then                   -- Si el contador ha leido 8 bits se muestra la salida
          ena_rd <= '1';
        end if;

      else                                      -- La seńal solo dura un ciclo de reloj
        ena_rd <= '0';

      end if;
    end if;
  end process;
        

  -- Registro de salida     
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDI <= (others => '0');
    elsif clk'event and clk = '1' then 
        
      if ini_tx = '1' then
        reg_SDI <= dato_cmd;

      elsif ena_SDI = '1' and (not (cnt_byte = 1 and cnt_bit = 0)) then -- Si se habilita la salida y no es el primer bit
        reg_SDI <= reg_SDI(14 downto 0) & '0';

      end if;
    end if;
  end process;

  SDI <= reg_SDI(15) when ena_SDI = '1';

end rtl;
