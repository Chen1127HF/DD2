-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 20/05/2022

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi_tb is
end entity;

-- Test del master SPI
-- Pruebas:
--    1. Escritura de comandos. Se prueba con 4 datos:
--              - Dato X"0000"
--              - Dato X"5555"
--              - Registro 1 de configuracion X"2000"
--              - Registro 4 de configuracion X"2363"
--
--    2. Lectura de medidas. Se ha probado introduciendo los siguientes datos:
--              - Dato X"1111"
--              - Dato X"AAAA"
--              - Registro X"E800" 

architecture test of master_spi_tb is
  signal clk:      std_logic;
  signal nRst:     std_logic;

  signal ena:      std_logic;                     -- Inicio de transmision
  signal dato_cmd: std_logic_vector(15 downto 0); -- Byte de dato introducido

  signal ena_rd:   std_logic;                     -- Habilitación de lectura
  signal data_rd:  std_logic_vector(7 downto 0);  -- Registro de lectura
 
  signal nCS:      std_logic;                     -- Chip Selection
  signal SPC:      std_logic;                     -- Clock SPI (5 MHz) 
  signal SDI:      std_logic;                     -- Slave Data input  (connected to Master SDO)
  signal SDO:      std_logic;                     -- Slave Data Output (Master input)

  signal fin_tx:   std_logic;

  signal pos_X:    std_logic_vector(1 downto 0);
  signal pos_Y:    std_logic_vector(1 downto 0);

  signal tic_200ns: std_logic;
	
  constant T_CLK:   time:= 20 ns;
  constant T_CLK5:  time:= 200 ns;

begin

  -- Reloj de 20 ns (50 MHz)
  process
  begin
    clk <= '0';
    wait for T_CLK/2;
    clk <= '1';
    wait for T_CLK/2;
  end process;

  process
  begin
    -----------------------------------------------------
    --                      RESET                      --
    -----------------------------------------------------
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '0';

    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '1';
   
    -- Inicializacion entradas
    ena <= '0';
    dato_cmd <= (others => '0');
    pos_X <= "00";
    pos_Y <= "00";

    -- Esperamos 10 ciclos de reloj
    wait for 10*T_CLK;
    wait until clk'event and clk = '1';

    -----------------------------------------------------
    --    Comprobacion de escritura del master-spi     --
    -----------------------------------------------------
    -- Dato: 0
    dato_cmd <= (others => '0');
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait until clk'event and clk = '1' and nCS = '1';    -- Esperar a que se termine la tx
    wait for 50*T_CLK;
    wait until clk'event and clk = '1';

    -- Dato: alternar 1 y 0
    dato_cmd <= X"5555";                         
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait until clk'event and clk = '1' and nCS = '1';
    wait for 50*T_CLK;
    wait until clk'event and clk = '1';

    -- Dato: Configuracion registro 4
    dato_cmd <= X"2363";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and nCS = '1';
    wait for 50*T_CLK;
    wait until clk'event and clk = '1';

    -- Dato: configuracion registro 1
    dato_cmd <= X"2000";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and nCS = '1';

    -- Esperamos 50 ciclos de reloj
    wait for 50*T_CLK;
    wait until clk'event and clk = '1';



    -----------------------------------------------------
    --     Comprobacion de lectura del master-spi      --
    -----------------------------------------------------
    -- Dato: FFFF
    dato_cmd <= (others => '1');
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait until clk'event and clk = '1' and nCS = '1';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';

    -- Dato: 1 y 0 alternando
    dato_cmd <= X"AAAA";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait until clk'event and clk = '1' and nCS = '1';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';

    -- Dato: pedir lectura bytes
    dato_cmd <= X"E800";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait until clk'event and clk = '1' and nCS = '1';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';

    -- Esperamos 50 ciclos de reloj
    wait for 200*T_CLK;
    wait until clk'event and clk = '1';    


    -- Comprobación activación de ena cuando no esta disponible el bus.
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';

    wait for 500*T_CLK;
    wait until clk'event and clk = '1'; 

    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';  

    wait until clk'event and clk = '1' and nCS = '1';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';


    assert false
    report "done"
    severity failure;
  end process;

  dut: entity work.master_spi(rtl)
       port map(clk      => clk,
                nRst     => nRst,
                ini_tx   => ena,
                dato_cmd => dato_cmd,
                SDO      => SDO,
                ena_rd   => ena_rd,
                dato_rd  => data_rd,
                nCS      => nCS,
                SPC      => SPC,
                SDI      => SDI,
                fin_tx   => fin_tx);
  agente: 
       entity work.agente_spi(sim)
       port map(pos_X => pos_X,
                pos_Y => pos_Y,
                nCS => nCS,
                SPC => SPC,
                SDI => SDI,
                SDO => SDO);

end test;



