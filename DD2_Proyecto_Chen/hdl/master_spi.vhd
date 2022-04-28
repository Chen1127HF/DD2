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
     SDI:           buffer std_logic                      -- Slave Data input  (connected to Master SDO)
    );
end entity;

architecture rtl of master_spi is
  -- Estado del automata
  type t_estado is (libre, escritura, lectura);
  signal estado: t_estado;
  
  -- Divisor de frecuencias
  signal cnt_div:       std_logic_vector(5 downto 0);

  
  -- Cuenta para generacion de SPC y salidas
--  signal cnt_SPC:       std_logic_vector(4 downto 0); 
  signal ena_SDO:       std_logic;  -- Habilitacion de desplazamiento del registro de salida
  signal ena_SDI:       std_logic;  -- Habilitacion de desplazamiento del registro de entrada
  signal ena_up_CS:     std_logic;  -- Deshabilitacion de CS (paso de '0' a '1')
  signal ena_down_CS:   std_logic;  -- Habilitacion de CS (paso de '1' a '0')
  signal SPC_up:        std_logic;
	 
  -- Constantes correspondientes a las especificaciones de tiempo SPI
  constant SPI_T_SPC:        natural := 10; 
  constant SPI_T_SPC_L:      natural := 5;
  constant SPI_T_SPC_H:      natural := 5;

  constant SPI_t_su_CS:      natural := 1;
  constant SPI_t_hd_CS:      natural := 1;
  
  constant SPI_t_hd_SDI:     natural := 1;
  constant SPI_t_su_SDI:     natural := 1;

  constant SPI_t_v_SDO:      natural := 2;
  constant SPI_t_hd_SDO:     natural := 1;
  constant SPI_t_dis_SDO:    natural := 2;
  
  -- Registros
  signal cnt: std_logic_vector(5 downto 0);
  signal reg_SDI: std_logic_vector(15 downto 0);
  signal reg_SDO: std_logic_vector(7 downto 0);

begin

  -- Contador modulo 10 para generación de nuevo reloj 5 MHz = 200 ns
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div <= (others => '0');
    elsif clk'event and clk = '1' and nCS = '0' then
      if cnt_div = 9 then 				
        cnt_div <= (others => '0');			
      else						
        cnt_div <= cnt_div + 1;			
      end if;
    end if;
  end process;
  
  -- Generacion de SPC
  
  SPC <= '0' when cnt_div /= 0 and cnt_div < 6 and nCS = '0' else
         '1';
  SPC_up <= '1' when cnt_div = 6 and nCS = '0' else
            '0';
  nCS <= '0' when ini = '1' or cnt > 0 else
         '1';
  
  -- Generacion de las señales de control
                                
  ena_SDO <= '1' when nCS = '0' and nWR = '1' and cnt_div = SPI_T_SPC_L + SPI_t_v_SDO else
             '0';

  ena_SDI <= '1' when nCS = '0' and nWR = '0' and cnt_div = SPI_t_su_SDI else
             '0'; 

  -- Contador 

  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt <= (others => '0');
    elsif clk'event and clk = '1' then
      if ini = '1' then
        cnt <= (0 => '1', others => '0');
      elsif SPC_up = '1' then
        if (cnt = 32 and nWR = '1') or (cnt = 16 and nWR = '0') then
          cnt <= (others => '0');        
        else
          cnt <= cnt + 1;
        end if;
      end if;
    end if;
  end process;

  ena_rd <= '1' when (cnt = 8 or cnt = 16 or cnt = 24 or cnt = 32) and SPC_up = '1' and nWR = '1' else
            '0';



  -- Registro de entrada    
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDO <= (others =>'0');
    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
      elsif ena_SDO = '1' and nWR = '1' then
        reg_SDO <= reg_SDO(6 downto 0) & SDO;
      end if;
    end if;
  end process;

  data_rd <= reg_SDO when ena_rd = '1' else
             (others => '0');

             
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
      elsif ena_SDI = '1' and nWR = '0' then  
        reg_SDI <= reg_SDI(14 downto 0) & '0';
      end if;
    end if;
  end process;

  SDI <= reg_SDI(15) when ena_SDI = '1';





--  process(clk, nRst)
--  begin
--    if nRst = '0' then
--      cnt_SPC <= (0 => '1', others => '0');
--    elsif clk'event and clk = '1' then
--      if nCS = '0' then
--        if cnt_div < 5 then
--          SPC <= '0';
--        else
--          SPC <= '1';
--        end if;
--      end if;
--    end if;
--  end process;

  -- cnt_SPC <= cnt_SPC + 1;
  



  -- Maquina de estados para el control de transacciones
--  process(clk, nRst)
--  begin
--    if nRst = '0' then
--      estado <= libre;
--      nWR    <= '0';
--    elsif clk'event and clk = '1' then
--      case estado is
--        when libre =>
--          if ini = '1' then
--            if nWR= '1' then
--              estado  <= escritura;
--            else
--              estado <= lectura;
--            end if;
--          end if;
--        when escritura =>
--          if __________ then
--		    
--          elsif nWR = '1' then
--		    estado <= cargar_byte;
--          else
--            nCS <= '1';
--            estado <= libre;
--          end if;
--        when lectura =>
--          if __________ then
--		    
--          elsif
--            nCS <= '1';
--            estado <= libre;
--          end if;
--      end case;
--    end if;
--  end process;

  -- Contador

  



end rtl;
