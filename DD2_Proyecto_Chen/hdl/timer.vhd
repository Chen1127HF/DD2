-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 20/05/2022
library work;
use work.auxiliar.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity timer is

port(nRst:       in     std_logic;
     clk:        in     std_logic;
		 ena_1ms:		 buffer	std_logic;
		 ena_5ms:		 buffer	std_logic);
end entity;

architecture rtl of timer is			

  constant fdc_5ms: natural := 250000; 
	--constant fdc_5ms: natural		:= 2500;  --Simulacion

	constant DIV_1ms : natural  :=99999;

  signal cnt_div_1ms:    std_logic_vector(16 downto 0);

  signal cnt_5ms: std_logic_vector(17 downto 0);

begin


 -- generación del tic de 1 ms
 divisor_1ms: process(clk, nRst)
  begin
    if nRst = '0' then
      cnt_div_1ms <= (others => '0');
    elsif clk'event and clk = '1' then
      if ena_1ms = '1' then
        cnt_div_1ms <= (others => '0');
      else
        cnt_div_1ms <= cnt_div_1ms + 1;
      end if;
    end if;
  end process divisor_1ms;

  ena_1ms <= '1' when cnt_div_1ms = DIV_1ms else '0';


  -- Contador medidas 5 ms
  -- Solo se inicia la cuenta cuando se esta pidiendo 
  -- transferencias de lectura. (cmd = 2)
  process(nRst, clk)
  begin
    if nRst = '0' then
      cnt_5ms <= (0=>'1', others => '0');
    elsif clk'event and clk = '1' then                  
    	if ena_5ms = '1' then
      		cnt_5ms <= (0=>'1', others => '0');
      	else
      	cnt_5ms <= cnt_5ms + 1;
      end if;
    end if;
   end process;

   ena_5ms <= '1' when cnt_5ms = fdc_5ms else
              '0';

end architecture;
