library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity master_spi_tv is
end entity;

architecture test of master_spi_tv is
  signal clk:		std_logic;
  signal nRst:	        std_logic;
  signal dato:	        std_logic_vector(7 downto 0);
  signal SDO:		std_logic;
  signal nCS:		std_logic;
  signal SPC:		std_logic;
  signal SDI:		std_logic;

  signal tic_200ns:	std_logic;	

  constant T_CLK: 	time:= 20 ns;
  constant T_CLK5:	time:= 200 ns;


begin

  dut: entity work.master_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
		dato    => dato,
		SDO     => SDO,
		nCS     => nCS,
		SPC     => SPC,
		SDI     => SDI);

  -- Reloj de 20 ns (50 MHz)
  process
  begin
    clk <= '0';
    wait for T_CLK/2;
    clk <= '1';
    wait for T_CLK/2;
  end process;

  -- Reloj de 200 ns (5 MHz)
  process
  begin
    clk <= '0';
    wait for T_CLK5/2;
    clk <= '1';
    wait for T_CLK5/2;
  end process;

  process
    -- Reset
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '1';

    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    nRst <= '0';

    -- Comprobacion de escritura del master-spi


    -- Esperamos 100 ciclos de reloj
    wait for 100*T_CLK;
    wait until clk'event and clk = '1';


    -- Comprobacion de escritura del master-spi


    -- Esperamos 100 ciclos de reloj
    wait for 100*T_CLK;
    wait until clk'event and clk = '1';
	

    -- Comprobacion de lectura del master-spi


    -- Fin de simulación
    wait for 1000*Tclk;

    assert false
    report "done"
    severity failure;
  end process;
end test;



