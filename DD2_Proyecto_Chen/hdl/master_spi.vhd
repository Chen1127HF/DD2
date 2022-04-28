library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;
	 ini:           in     std_logic;                     -- inicio de transacción
     dato:          in     std_logic_vector(15 downto 0)  -- byte de dato introducido
     SDO:           in     std_logic;                     -- Slave Data Output (Master input)
     ena_rd:        buffer std_logic;                     -- habilitación de lectura
     data_rd:       buffer std_logic_vector(7 downto 0)   -- byte de SDO, entregado por slave
     nCS:           buffer std_logic;                     -- Chip Selection
     SPC:           buffer std_logic;                     -- clock SPI (5 MHz) 
     SDI:           buffer std_logic                      -- Slave Data input  (connected to Master SDO)
    );
end entity;

architecture rtl of master_spi is
  -- Estado del automata
  type t_estado is (libre, cargar_byte, enviar_byte);
  signal estado: t_estado;
  
  -- Divisor de frecuencias
  signal cnt_div:       std_logic_vector(5 downto 0);

  -- Tipo de operacion (lectura o escritura)
  signal nWR:           std_logic;
  
  -- Cuenta para generacion de SPC y salidas
  signal cnt_SPC:       std_logic_vector(4 downto 0); 
  signal ena_SDO:       std_logic;  -- Habilitacion de desplazamiento del registro de salida
  signal ena_SDI:       std_logic;  -- Habilitacion de desplazamiento del registro de entrada
  signal ena_up_CS:     std_logic;  -- Deshabilitacion de CS (paso de '0' a '1')
  signal ena_down_CS:   std_logic;  -- Habilitacion de CS (paso de '1' a '0')
	 
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
  
  signal reg_SDI: std_logic_vector(15 downto 0);
  signal reg_SDO: std_logic_vector(8 downto 0);

begin

  -- Contador modulo 10 para generación de nuevo reloj 5 MHz = 200 ns
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div <= (others => '0');
    elsif clk'event and clk = '1' then
      if cnt_div = 9 then 				
        cnt_div <= 0;			
      else						
        cnt_div <= cnt_div + 1;			
      end if;
    end if;
  end process;
  
  -- Generacion de SPC
  
  --SPC <= '0' when cnt_div < 5 else
  --           '1';
  
  process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_SPC <= (0 => '1', others => '0');
    elsif clk'event and clk = '1' then
      if nCS = '0' then
        if cnt_div < 5 then
          SPC <= '0';
        else
          SPC <= '1';
        end if;
      end if;
    end if;
  end process;

  -- cnt_SPC <= cnt_SPC + 1;
  
  -- Generacion de las señales de control
                                
  ena_SDO <= '1' when nCS = '0' and cnt_SPC = SPI_t_v_SDO else
             '0';

  ena_SDI <= '1' when nCS = '0' and cnt_SPC = SPI_T_SPC_L - SPI_t_su_SDI else
             '0'; 

  ena_SDO <= '1' when nCS = '0' and cnt_SPC = SPI_t_v_SDO else
             '0';

  ena_SDI <= '1' when nCS = '0' and cnt_SPC = SPI_T_SPC_L - SPI_t_su_SDI else
             '0'; 

  -- Maquina de estados para el control de transacciones
  process(clk, nRst)
  begin
    if nRst = '0' then
      estado <= libre;
      nWR    <= '0';
    elsif clk'event and clk = '1' then
      case estado is
        when libre =>
          if ini = '1' then
		    dato_in <= dato;
            nWR     <= dato_in(7);
            nCS     <= '0';
            estado  <= enviar_byte;
          end if;
        when enviar_byte =>
          if __________ then
		    
		  elsif nWR = '1' then
		    estado <= cargar_byte;
          else
            nCS <= '1';
            estado <= libre;
          end if;
        when cargar_byte =>
          if __________ then
		    
          elsif
            nCS <= '1';
            estado <= libre;
          end if;
      end case;
    end if;
  end process;



  -- Lógica de control
  process(clk, nRst)
  begin
    if nRst = '0' then
      
    elsif clk'event and clk = '1' then
      
    end if;
  end process;
  
  


  -- Registro de entrada    
  process(clk, nRst)
  begin
    if nRst = '0' then

    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
        cnt_rd <= (others => '0');
		cnt_rd <= (0 => '1', others => '0');
      elsif ena_SDO = '1' and estado = cargar_byte then
        if cnt_rd < 8 then
          cnt_rd <= cnt_rd + 1;
        else
          cnt_rd <= (0 => '1', others => '0');
        end if;
		
        reg_SDO <= reg_SDO(6 downto 0) & SDO;
      end if;
    end if;
  end process;
			
  ena_rd <= '1' when cnt_rd = 8 else
            '0';

  data_rd <= reg_SDO when ena_rd = '1' else
             (others => '0');
             
  -- Registro de salida     
  process(clk, nRst)
  begin
    if nRst = '0' then
      reg_SDI <= (others => '0');
    elsif clk'event and clk = '1' then                     
      if nCS = '1' then
        SDI <= '0';
      elsif ena_SDI = '1' and estado = enviar_byte then  
        SDI <= reg_SDI(15);
        reg_SDI <= reg_SDI(14 downto 0) & '0';
      end if;
    end if;
  end process;

end rtl;
