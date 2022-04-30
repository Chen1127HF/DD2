library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity monitor_spi_tb is
port(clk:           in std_logic;
     nRst:          in std_logic;
     ini:           in std_logic;                     -- inicio de transacción
     dato:          in std_logic_vector(15 downto 0); -- byte de dato introducido
     SDO:           in std_logic;                     -- Slave Data Output (Master input)
     ena_rd:        in std_logic;                     -- habilitación de lectura
     data_rd:       in std_logic_vector(7 downto 0);  -- byte de SDO, entregado por slave
     nCS:           in std_logic;                     -- Chip Selection
     SPC:           in std_logic;                     -- clock SPI (5 MHz) 
     SDI:           in std_logic;                     -- Slave Data input  (connected to Master SDO)
     fin_tx:        in std_logic);
end entity;

architecture test of monitor_spi_tb is


begin

  -- MONITOR 1
  -- Comprobación de la generación de la señal CS
  process(clk, nRst)
   variable ena_assert: boolean := false;
   variable nCS_T1: std_logic;
   variable fin_tx_T1: std_logic;
  begin
    if nRst'event and nRst = '0' then
      ena_assert := false;

    elsif nRst'event and nRst = '1' and nRst'last_value = '0' then
      ena_assert := true;
      
    elsif clk'event and clk = '1' and ena_assert then

      if ini = '1' then
        assert nCS = '0'
        report "Error: CS no se ha activado "
        severity error;

      elsif nCS_T1 = '1' then
        assert nCS = '1'
        report "Error: CS se ha activado cuando no debería"
        severity error;

      elsif fin_tx_T1 = '1' then
        assert nCS = '1'
        report "Error: CS no se ha desactivado cuando se ha terminado la tx"
        severity error;

      elsif nCS_T1 = '0' then
        assert nCS = '0'
        report "Error: CS se ha desactivado cuando no debería"
        severity error;
      end if;
      fin_tx_T1 := fin_tx;
      nCS_T1 := nCS;
    end if;
  end process;

  -- MONITOR 2 
  -- Comprobación de la señal SPC
  process(clk, nRst)
   variable ena_assert: boolean := false;

  begin
    if nRst'event and nRst = '0' then
      ena_assert := false;

    elsif nRst'event and nRst = '1' and nRst'last_value = '0' then
      ena_assert := true;
    end if;
  end process;


  -- MONITOR 3 
  process(clk, nRst)
   variable ena_assert: boolean := false;

  begin
    if nRst'event and nRst = '0' then
      ena_assert := false;

    elsif nRst'event and nRst = '1' and nRst'last_value = '0' then
      ena_assert := true;
    end if;
  end process;
end test;
