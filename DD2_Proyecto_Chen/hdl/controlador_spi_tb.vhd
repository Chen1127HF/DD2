library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity controlador_spi_tb is
end entity;

architecture test of controlador_spi_tb is
  signal clk:     std_logic;
  signal nRst:    std_logic;

  signal ena:     std_logic;                     -- Inicio de transmision
  signal dato:    std_logic_vector(15 downto 0); -- Byte de dato introducido

  signal ena_rd:  std_logic;                     -- Habilitación de lectura
  signal data_rd: std_logic_vector(7 downto 0);  -- Registro de lectura
  signal libre:   std_logic;                     -- Indica si el bus esta disponible para una transmision

  signal nCS:     std_logic;                     -- Chip Selection
  signal SPC:     std_logic;                     -- Clock SPI (5 MHz) 
  signal SDI:     std_logic;                     -- Slave Data input  (connected to Master SDO)
  signal SDO:     std_logic;                     -- Slave Data Output (Master input)

  signal fin_tx:  std_logic;

  signal ena_op:  std_logic;

  signal pos_X:   std_logic_vector(1 downto 0);
  signal pos_Y:   std_logic_vector(1 downto 0);

  signal X_out_bias:  std_logic_vector(10 downto 0);
  signal Y_out_bias:  std_logic_vector(10 downto 0);
  signal muestra_bias_rdy: std_logic;

  signal X_media:  std_logic_vector(11 downto 0);
  signal Y_media:  std_logic_vector(11 downto 0);

  signal mux_disp:   std_logic_vector(7 downto 0);
  signal disp:   std_logic_vector(7 downto 0);
  signal leds: std_logic_vector(7 downto 0);

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
    ena_op <= '0';

    -- Esperamos 10 ciclos de reloj
    wait for 10*T_CLK;
    wait until clk'event and clk = '1';


    -- Fin de simulación

    ena_op <= '1';
    wait until clk'event and clk = '1';
    ena_op <= '0';

    wait for 100000*T_CLK;

    assert false
    report "done"
    severity failure;
  end process;

  controlador: 
       entity work.controlador_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ena_rd  => ena_rd,
		reg_SDO => data_rd,
                fin_tx  => fin_tx,
		libre   => nCS,
                ini_tx  => ena,
                dato    => dato);

  master: 
       entity work.master_spi(rtl)
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
  calc_offset: 
       entity work.calc_offset(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ena_rd  => ena_rd,
		dato_rd => data_rd,
                X_out_bias  => X_out_bias,
		Y_out_bias   => Y_out_bias,
                muestra_bias_rdy    => muestra_bias_rdy);

  estimador: 
       entity work.estimador(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                X_out_bias  => X_out_bias,
		Y_out_bias   => Y_out_bias,
                muestra_bias_rdy    => muestra_bias_rdy,
                X_media    => X_media,
                Y_media    => Y_media);

  cuantificador:
       entity work.cuantificador(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                X_media => X_media,
                Y_media => Y_media,
                ena     => muestra_bias_rdy,
                mux_disp=> mux_disp,
		disp    => disp,
                leds    => leds);


end test;



