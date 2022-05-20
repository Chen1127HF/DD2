-- Autores: Haofan Chen e Isabel Nieto
-- Fecha: 18/05/2022

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Controlador SPI

-- Funcionalidad
-- El modulo maneja la comunicacion con el master SPI. Se encarga de:
--       1.- Enviar los registros de configuracion. Actualmente los registros configurados son:
--              Registro 1 (h20): 01100011                   valor
--                         - bit [7..4]  -> frecuencia 200Hz   0110
--                         - bit (3)    -> normal mode         1
--                         - bit (2)    -> Z-axis              0
--                         - bit (1)    -> Y-axis              1
--                         - bit (0)    -> X-axis              1
--
--              Registro 4 (h23): 10000000 (activar bit BDU)
--
--       2.- Ordenar la medida de los ejes X e Y del acelerómetro cada 5ms. 
--           Para ello se envia el dato 11101000:
--                         - bit (7)    -> R/W lectura          1
--                         - bit (6)    -> auto incrementar     1
--                         - bit [5..0] -> direccion           101000 (h28)

-- Entradas:
--        libre:   Indica si esta libre para comenzar la comunicacion.     Origen: Master SPI
--        fin_tx:  Indica cuando se ha terminador de transferir el         Origen: Master SPI
--                 último bit de la transmision.
-- Salidas:                           
--        ini_tx:   Indica que se desea realizar una tranferencia.         Destino: Master SPI
--        dato_cmd: Indica cual es el dato que se desea transferir.        Destino: Master SPI

entity controlador_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;                     
     libre:         in     std_logic;                     -- Indica si se puede iniciar la comunicación
     fin_tx:        in     std_logic;                     -- Indica el final de la transmision
     ena_5ms:       in     std_logic;
     ini_tx:        buffer std_logic;                     -- Inicio de transmision
     dato_cmd:      buffer std_logic_vector(15 downto 0)  -- Byte a enviar
    );
end entity;

architecture rtl of controlador_spi is

  -- Contador registros. Indica cuantos registros se han enviado y 
  -- cual es el siguiente a enviar. 
  --     0: Se debe enviar el registro de configuracion 4.
  --     1: Se debe enviar el registro de configuracion 1.
  --     2: Se debe enviar el comando para ordenar una transferencia de lectura.
  signal cmd: std_logic_vector(1 downto 0);  

begin

  -- Logica
  process(nRst, clk)
  begin
    if nRst = '0' then
      dato_cmd <= (others => '0');
    elsif clk'event and clk = '1' then
      if    cmd = 0 and libre = '1' then   
        dato_cmd <= X"23" & "10000000";             -- Registro 4

      elsif cmd = 1 and libre = '1' then
        dato_cmd <= X"20" & "01100011";             -- Registro 1 
 
      elsif cmd = 2 then                            
        dato_cmd <= "11101000" & "11110000";        -- Medidas
       end if;
    end if;
  end process;

  -- Contador comandos
  -- Indica cual es el proximo dato a enviar.
  process (nRst, clk)
  begin
    if nRst = '0' then
      cmd <= (others => '0');

    elsif clk'event and clk = '1' then
      if fin_tx = '1' and cmd <2 then            
        cmd <= cmd + 1;
      end if;

    end if;
  end process;

  -- Iniciacion de la transimision.
  process(nRst, clk)
  begin
  if nRst = '0' then 
    ini_tx <= '0';
  elsif clk'event and clk = '1' then
    if libre = '1' and ini_tx = '0' and ena_5ms = '1' then -- Se inciará la comunicacion si: 
      ini_tx <= '1';                                       -- El master esta libre   
    else                                                   -- No se ha iniciado ya la comunicacion
      ini_tx <= '0';                                       -- Si se están enviado registros o se ha activado la señal ena_5ms
    end if;
  end if;
  end process;

end rtl;
