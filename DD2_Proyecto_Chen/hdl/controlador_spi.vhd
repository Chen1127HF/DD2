library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity controlador_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;                     -- Habilita la cuenta
     ena_rd:        in     std_logic;                     -- Habilitación de lectura
     reg_SDO:       in     std_logic_vector(7 downto 0);  -- Dato lectura
     libre:         in     std_logic;                     -- Indica el final de la transmision
     fin_tx:        in     std_logic;
     ini_tx:        buffer std_logic;                     -- Inicio de transmision
     dato:          buffer std_logic_vector(15 downto 0)  -- Byte a enviar
    );
end entity;

architecture rtl of controlador_spi is
  type t_estado is (config, offset, medidas);
  signal estado: t_estado;

 -- constant fdc_5ms: natural := 250000; 
  constant fdc_5ms: natural := 500;  --Simulacion
  signal cnt_reg: std_logic_vector(1 downto 0);

  signal cnt_5ms: std_logic_vector(17 downto 0);
  signal ena_5ms: std_logic;
  signal cnt_320ms: std_logic_vector(6 downto 0);
  signal ena_320ms: std_logic;

  signal dato_lectura: std_logic_vector(7 downto 0);
  signal ena_medida: std_logic;
  signal ena_medida_offset: std_logic;


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

   ena_5ms <= '1' when cnt_5ms = fdc_5ms else
              '0';

  -- Contador medidas 320 ms
  process(nRst, clk)
  begin
    if nRst = '0' then
      cnt_320ms <= (0=>'1', others => '0');
    elsif clk'event and clk = '1' then
      if ena_320ms = '1' then
        cnt_320ms <= (0=>'1', others => '0');
      elsif estado = offset and ena_5ms = '1' then
        cnt_320ms <= cnt_320ms+1;
      end if;
    end if;
   end process;

   ena_320ms <= '1' when cnt_320ms > 63 and  cnt_5ms = fdc_5ms else --Arreglo
                '0';
  -- Logica de estados
  process(nRst, clk)
  begin
    if nRst = '0' then
      estado <= config;
      dato <= (others => '0');
    elsif clk'event and clk = '1' then
      case estado is
        when config  => -- Esto al final lo he puesto aqui para que el mismo proceso maneje dato. Además así solo pones el dato una vez y no constantemente
          if cnt_reg = 0 and libre = '1' then   
            dato <= "0101011110000000";             -- Registro 4

          elsif cnt_reg = 1 and libre = '1' then
            dato <= "0101010001100011";             -- Registro 1 
 
          elsif cnt_reg = 2 then
            estado <= offset;
            dato <= "1101110011110000";   -- El dato no vamos a tener que cambiarlo ya mas
          end if;

        when offset  =>
          if ena_320ms = '1' then
            estado <= medidas;
          end if;

        when medidas =>
 

      end case;
    end if;
  end process;

  -- Contador de registros
  process (nRst, clk)
  begin
    if nRst = '0' then
      cnt_reg <= (others => '0');

    elsif clk'event and clk = '1' then
      if fin_tx = '1' and estado = config then            
        cnt_reg <= cnt_reg +1;
      end if;

    end if;
  end process;


  
  --  Tomar medidas
  process(nRst, clk)
  begin

  if nRst = '0' then 
    ini_tx <= '0';
  elsif clk'event and clk = '1' then
    if estado = medidas or estado = offset then
      if libre = '1' and ena_5ms = '1' then
        ini_tx <= '1';
      else
        ini_tx <= '0';
      end if;

    elsif estado = config then
      if libre = '1' then
        ini_tx <= '1';
      else
        ini_tx <= '0';
      end if;
    end if;
  end if;
  end process;

  -- Proceso lectura de bytes
  process(nRst, clk)
  begin
  if nRst = '0' then
    dato_lectura <= (others => '0');
    ena_medida <= '0';
  elsif clk'event and clk = '1' then
    if ena_rd = '1' then
      dato_lectura <= reg_SDO;
      ena_medida <= '1';

    else
      ena_medida <= '0';
    end if;
  end if;
  end process;

  ena_medida_offset <= ena_medida when estado = offset else
                       '0';

end rtl;
