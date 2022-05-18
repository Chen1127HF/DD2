library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity acelerometro is
port(clk:      in     std_logic;
     nRst:     in     std_logic;
     SDO:      in     std_logic;
     SDI:      buffer std_logic;
     nCS:      buffer std_logic;
     SPC:      buffer std_logic;
     mux_disp: buffer std_logic_vector(7 downto 0);
     disp:     buffer std_logic_vector(7 downto 0);
     leds:     buffer std_logic_vector(7 downto 0));
end entity;

architecture estructural of acelerometro is
  signal dato:    std_logic_vector(15 downto 0); -- Byte de dato introducido

  signal ena_rd:  std_logic;                     -- Habilitación de lectura
  signal data_rd: std_logic_vector(7 downto 0);  -- Registro de lectura
  signal libre:   std_logic;                     -- Indica si el bus esta disponible para una transmision

  signal fin_tx:  std_logic;

  signal ena:     std_logic;

  signal pos_X:   std_logic_vector(1 downto 0);
  signal pos_Y:   std_logic_vector(1 downto 0);

  signal X_out_bias:  std_logic_vector(10 downto 0);
  signal Y_out_bias:  std_logic_vector(10 downto 0);
  signal muestra_bias_rdy: std_logic;

  signal X_media:  std_logic_vector(11 downto 0);
  signal Y_media:  std_logic_vector(11 downto 0);

  signal tic_200ns:	std_logic;

begin
	controlador: 
       entity work.controlador_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                fin_tx  => fin_tx,
                libre   => nCS,
                ini_tx  => ena,
                dato    => dato);

  master: 
       entity work.master_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ini_tx  => ena,
                dato    => dato,
                SDO     => SDO,
                ena_rd  => ena_rd,
                reg_SDO => data_rd,
                nCS     => nCS,
                SPC     => SPC,
                SDI     => SDI,
                fin_tx  => fin_tx);

  calc_offset: 
       entity work.calc_offset(rtl)
       port map(clk               => clk,
                nRst              => nRst,
                ena_rd            => ena_rd,
                dato_rd           => data_rd,
                X_out_bias        => X_out_bias,
                Y_out_bias        => Y_out_bias,
                muestra_bias_rdy  => muestra_bias_rdy);

  estimador: 
       entity work.estimador(rtl)
       port map(clk              => clk,
                nRst             => nRst,
                X_out_bias       => X_out_bias,
                Y_out_bias       => Y_out_bias,
                muestra_bias_rdy => muestra_bias_rdy,
                X_media          => X_media,
                Y_media          => Y_media);

  cuantificador:
       entity work.cuantificador(rtl)
       port map(clk      => clk,
                nRst     => nRst,
                X_media  => X_media,
                Y_media  => Y_media,
                ena      => muestra_bias_rdy,
                mux_disp => mux_disp,
                disp     => disp,
                leds     => leds);

end estructural;
