library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity controlador_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;
     ena:           in     std_logic;
     ena_rd:        in     std_logic;                     -- Habilitaci�n de lectura
     reg_SDO:       in     std_logic_vector(7 downto 0);  -- Dato lectura
     fin_tx:        in     std_logic;                     -- Indica el final de la transmision
     ini_tx:        buffer std_logic;                     -- Inicio de transmision
     dato:          buffer std_logic_vector(15 downto 0) -- Byte a enviar
    );
end entity;

architecture rtl of controlador_spi is
  type t_estado is (preconfig, config, offset, medidas);
  signal estado: t_estado;

  signal cnt_reg: std_logic_vector(1 downto 0);

  signal cnt_5ms: std_logic_vector(6 downto 0);
  signal ena_5ms: std_logic;
  signal cnt_320ms: std_logic_vector(5 downto 0);
  signal ena_320ms: std_logic;


begin
  -- Contador medidas 5 ms
  process(nRst, clk)
  begin
    if nRst = '0' then
      cnt_5ms <= (0=>'1', others => '0');
    elsif clk'event and clk = '1' then
      if estado = offset or estado = medidas then
        if ena_5ms = '1' then
          cnt_5ms <= (0=>'1', others => '0');
        else
          cnt_5ms <= cnt_5ms+1;
        end if;
      end if;
    end if;
   end process;

   ena_5ms <= '1' when cnt_5ms =100 else
              '0';

  -- Contador medidas 320 ms
  process(nRst, clk)
  begin
    if nRst = '0' then
      cnt_320ms <= (0=>'1', others => '0');
    elsif clk'event and clk = '1' then
      if estado = offset and ena_5ms = '1' then
        if ena_320ms = '1' then
          cnt_320ms <= (0=>'1', others => '0');
        else
          cnt_320ms <= cnt_320ms+1;
        end if;
      end if;
    end if;
   end process;

   ena_320ms <= '1' when cnt_320ms = 64 else
                '0';
  -- Logica de estados
  process(nRst, clk)
  begin
    if nRst = '0' then
      estado <= preconfig;
    elsif clk'event and clk = '1' then
      case estado is
        when preconfig =>
          if ena = '1' then
            estado <= config;
          end if;
        when config  =>
          if cnt_reg = 2 then
            estado <= offset;
          end if;

        when offset  =>
          if ena_320ms = '1' then
            estado <= medidas;
          end if;

        when medidas =>
          if ena_5ms = '1' then
            ini_tx <= '1';
            dato <= "1101110011110000";
          else
            ini_tx <= '0';
          end if;
      end case;
    end if;
  end process;

  -- Contador de registros
  process (nRst, clk)
  begin
    if nRst = '0' then
      cnt_reg <= (others => '0');

    elsif clk'event and clk = '1' then
      if fin_tx = '1' then
        cnt_reg <= cnt_reg +1;
      end if;
    end if;
  end process;

  -- Escribir configuracion
  process (nRst, clk)
  begin
    if nRst = '0' then
      ini_tx <= '0';
      dato <= (others => '0');

    elsif clk'event and clk = '1' then
      if estado = config then
        if ini_tx = '1' then           --Chapuza n�1
          ini_tx <= '0';
        elsif cnt_reg = 0 then
          dato <= "0101011110000000";  --Registro 4
          ini_tx <= '1';
        elsif cnt_reg = 1 then
          dato <= "0101010001100011";  --Registro 1
          ini_tx <= '1';
        end if;
      end if;
    end if;
  end process;
  

end rtl;
