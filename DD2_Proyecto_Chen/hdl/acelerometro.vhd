-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 18/05/2022
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Acelerometro

-- Funcionalidad: Muestra la inclinacion de la tarjeta usando los leds (eje X) y los displays (eje y)

entity acelerometro is
port(clk:      in     std_logic;
     nRst:     in     std_logic;
     SDO:      in     std_logic;                     -- Output del esclavo en la comunicación SPI (entrada del master).
     SDI:      buffer std_logic;                     -- Input del esclavo en la comuncacion SPI (salida del master).
     nCS:      buffer std_logic;                     -- Chip Select
     SPC:      buffer std_logic;                     -- Serial Port Clock: reloj de la comunicacion SPI.
     mux_disp: buffer std_logic_vector(7 downto 0);  -- Indica que digito del display debe encenderse.
     disp:     buffer std_logic_vector(7 downto 0);  -- Indica que segmentos del display deben encenderse.
     leds:     buffer std_logic_vector(7 downto 0)); -- Inidca que leds deben encenderse.
end entity;

architecture estructural of acelerometro is
  signal dato_cmd:    std_logic_vector(15 downto 0); -- Dato que se desea enviar al esclavo (Controlador -> Master)
  signal libre:       std_logic;                     -- Inidica la disponibilidad para tx   (Master -> Controlador)

  signal ini_tx:      std_logic;                     -- Habilitacion transmision (Controlador -> Master)
  signal fin_tx:      std_logic;                     -- Fin transmision          (Master -> Controlador)

  signal ena_rd:      std_logic;                     -- Habilitación de lectura  (Master -> Calcular offset)
  signal dato_rd:     std_logic_vector(7 downto 0);  -- Registro de lectura      (Master -> Calcular offset)

  signal X_out_bias:  std_logic_vector(10 downto 0); -- Medida eje X referenciada (Calcular offset -> estimador)
  signal Y_out_bias:  std_logic_vector(10 downto 0); -- Medida eje Y referenciada (Calcular offset -> estimador)

  signal muestra_bias_rdy: std_logic;                -- Habilitacion lectura de muestra (Calcular offset -> Estimador y Cuantificador)

  signal X_media:  std_logic_vector(11 downto 0);    -- Medida final del eje X    (Estimador -> Cuantificador)
  signal Y_media:  std_logic_vector(11 downto 0);    -- Medida final del eje Y    (Estimador -> Cuantificador)

  signal ena_1ms: std_logic;
  signal ena_5ms: std_logic;

begin

  timer:
       entity work.timer(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ena_1ms	=> ena_1ms,
                ena_5ms	=> ena_5ms);

  controlador: 
       entity work.controlador_spi(rtl)
       port map(clk      => clk,
                nRst     => nRst,
                fin_tx   => fin_tx,
                libre    => nCS,
                ena_5ms	 => ena_5ms,
                ini_tx   => ini_tx,
                dato_cmd => dato_cmd);

  master: 
       entity work.master_spi(rtl)
       port map(clk      => clk,
                nRst     => nRst,
                ini_tx   => ini_tx,
                dato_cmd => dato_cmd,
                SDO      => SDO,
                ena_rd   => ena_rd,
                dato_rd  => dato_rd,
                nCS      => nCS,
                SPC      => SPC,
                SDI      => SDI,
                fin_tx   => fin_tx);

  calc_offset: 
       entity work.calc_offset(rtl)
       generic map( N => 64)
       port map(clk               => clk,
                nRst              => nRst,
                ena_rd            => ena_rd,
                dato_rd           => dato_rd,
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
                ena_1ms  => ena_1ms,
                mux_disp => mux_disp,
                disp     => disp,
                leds     => leds);

end estructural;
