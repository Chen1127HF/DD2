library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi_tb is
end entity;

architecture test of master_spi_tb is
  signal clk:     std_logic;
  signal nRst:    std_logic;
  signal ena:     std_logic;                     -- inicio de transacción
  signal dato:    std_logic_vector(15 downto 0); -- byte de dato introducido
  signal SDO:     std_logic;                     -- Slave Data Output (Master input)
  signal ena_rd:  std_logic;                     -- habilitación de lectura
  signal data_rd: std_logic_vector(7 downto 0);  -- byte de SDO, entregado por slave
  signal nCS:     std_logic;                     -- Chip Selection
  signal SPC:     std_logic;                     -- clock SPI (5 MHz) 
  signal SDI:     std_logic;                     -- Slave Data input  (connected to Master SDO)
  signal nWR:     std_logic;
  signal fin_tx:  std_logic;
  signal pos_X:   std_logic_vector(1 downto 0);
  signal pos_Y:   std_logic_vector(1 downto 0);

  signal tic_200ns:	std_logic;
  
	

  constant T_CLK: 	time:= 20 ns;
  constant T_CLK5:	time:= 200 ns;


begin



  -- Reloj de 20 ns (50 MHz)
  process
  begin
    clk <= '0';
    wait for T_CLK/2;
    clk <= '1';
    wait for T_CLK/2;
  end process;

--  -- Reloj de 200 ns (5 MHz)
--  process
--  begin
--    clk <= '0';
--    wait for T_CLK5/2;
--    clk <= '1';
--    wait for T_CLK5/2;
--  end process;

  process
  begin
    -- Reset
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '0';

    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '1';

    -- Inicializacion entradas
    nWR <= '0';
    ena <= '0';
    dato <= (others => '0');

    -- Esperamos 10 ciclos de reloj
    wait for 10*T_CLK;
    wait until clk'event and clk = '1';


    -- Comprobacion de escritura del master-spi
    ena <= '1';
    nWR <= '0';
    dato <= "1111000011110000";

    wait until clk'event and clk = '1';
    ena <= '0';

    -- Esperamos 500 ciclos de reloj
    wait for 500*T_CLK;
    wait until clk'event and clk = '1';


    -- Comprobacion de lectura del master-spi
    pos_X <= "00";
    pos_Y <= "00";
    ena <= '1';
    nWR <= '1';
    dato <= "1111000011110000";

    wait until clk'event and clk = '1';
    ena <= '0';

   
    -- Fin de simulación
    wait for 1000*T_CLK;

    assert false
    report "done"
    severity failure;
  end process;

  dut: entity work.master_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ini     => ena,
                nWR     => nWR,
		dato    => dato,
		SDO     => SDO,
                ena_rd  => ena_rd,
                data_rd => data_rd,
		nCS     => nCS,
		SPC     => SPC,
		SDI     => SDI,
                fin_tx  => fin_tx);
  agente: 
       entity work.agente_spi(sim)
       port map(pos_X => pos_X,
                pos_Y => pos_Y,
                nCS => nCS,
                SPC => SPC,
                SDI => SDI,
                SDO => SDO);


  monitores:
       entity work.monitor_spi_tb(test)
       port map(clk     => clk,
                nRst    => nRst,
                ini     => ena,
                nWR     => nWR,
		dato    => dato,
		SDO     => SDO,
                ena_rd  => ena_rd,
                data_rd => data_rd,
		nCS     => nCS,
		SPC     => SPC,
		SDI     => SDI,
                fin_tx  => fin_tx);

end test;



