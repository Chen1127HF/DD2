-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 20/05/2022
library work;
use work.auxiliar.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity cuantificador is
generic(N:        in positive := 16);  -- numero de registros del banco (potencia de 2)

port(nRst:       in     std_logic;
     clk:        in     std_logic;

     X_media:    in     std_logic_vector(11 downto 0); 
     Y_media:    in     std_logic_vector(11 downto 0);

     ena_1ms:    in	std_logic;

     mux_disp:   buffer std_logic_vector(7 downto 0);
     disp:       buffer std_logic_vector(7 downto 0);
     leds:       buffer std_logic_vector(7 downto 0));

end entity;

architecture rtl of cuantificador is			

  signal dig_activo:     std_logic;
  signal digitos:        std_logic_vector(7 downto 0);

begin

  leds <= "11111110" when X_media(11 downto 0) < -217 else -- N = 1 (2*1-15)/15 *(1000/4  =*250) 
          "11111100" when X_media(11 downto 0) < -183 else
          "11111000" when X_media(11 downto 0) < -150 else
          "11110000" when X_media(11 downto 0) < -117 else
          "11100000" when X_media(11 downto 0) < -83  else
          "11000000" when X_media(11 downto 0) < -50  else
          "10000000" when X_media(11 downto 0) < -17  else
          "00000000" when X_media(11 downto 0) < 17   else
          "00000001" when X_media(11 downto 0) < 50   else
          "00000011" when X_media(11 downto 0) < 83   else
          "00000111" when X_media(11 downto 0) < 117  else
          "00001111" when X_media(11 downto 0) < 150  else
          "00011111" when X_media(11 downto 0) < 183  else
          "00111111" when X_media(11 downto 0) < 217  else
          "01111111";

  digitos <=  "00000001" when Y_media(11 downto 0) < -217 else -- N = 1 (2*1-15)/15 *(1000/4  =*250) 
              "00000011" when Y_media(11 downto 0) < -183 else
              "00000111" when Y_media(11 downto 0) < -150 else
              "00001111" when Y_media(11 downto 0) < -117 else
              "00011111" when Y_media(11 downto 0) < -83  else
              "00111111" when Y_media(11 downto 0) < -50  else
              "01111111" when Y_media(11 downto 0) < -17  else
              "11111111" when Y_media(11 downto 0) < 17   else
              "11111110" when Y_media(11 downto 0) < 50   else
              "11111100" when Y_media(11 downto 0) < 83   else
              "11111000" when Y_media(11 downto 0) < 117  else
              "11110000" when Y_media(11 downto 0) < 150  else
              "11100000" when Y_media(11 downto 0) < 183  else
              "11000000" when Y_media(11 downto 0) < 217  else
              "10000000";

 -- Activacion de los catodos
 catodos: process(clk, nRst)
  begin
    if nRst = '0' then
      mux_disp <= (0=> '0',others => '1');
    elsif clk'event and clk = '1' then
      if ena_1ms = '1' then
        mux_disp <= mux_disp(6 downto 0) & mux_disp(7);
      end if;
    end if;
  end process catodos;
 
  -- Multiplexion de los digitos
 dig_activo <= digitos(0)   when mux_disp(0) = '0' else
               digitos(1)   when mux_disp(1) = '0' else
               digitos(2)   when mux_disp(2) = '0' else
               digitos(3)   when mux_disp(3) = '0' else
               digitos(4)   when mux_disp(4) = '0' else
               digitos(5)   when mux_disp(5) = '0' else
               digitos(6)   when mux_disp(6) = '0' else
               digitos(7);

  -- BCD a 7 segmentos
  process(dig_activo) --punto_abcdefg
  begin
    case(dig_activo) is
      when '0' => disp <= "00000000";
      when '1' => disp <= "01111111";
      when others => null;
    end case;
  end process;

end architecture;
