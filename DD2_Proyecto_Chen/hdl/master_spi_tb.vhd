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
    ena <= '0';
    dato <= (others => '0');

    -- Esperamos 10 ciclos de reloj
    wait for 10*T_CLK;
    wait until clk'event and clk = '1';

    -- Comprobacion de escritura del master-spi
    dato <= (others => '0');
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    dato <= "0101010101010101";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    dato <= "0101011110000000";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    dato <= "0101010001100011";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    -- Esperamos 500 ciclos de reloj
    wait for 500*T_CLK;
    wait until clk'event and clk = '1';





    -- Comprobacion de lectura del master-spi
    dato <= (others => '1');
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    dato <= "1010101010101010";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

    dato <= "1101110011110000";
    ena <= '1';
    wait until clk'event and clk = '1';
    ena <= '0';
    wait until clk'event and clk = '1' and fin_tx = '1';

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
		dato    => dato,
		SDO     => SDO,
                ena_rd  => ena_rd,
                reg_SDO => data_rd,
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

end test;



