library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity interfaz_spi is
port(clk:           in     std_logic;
     nRst:          in     std_logic;
     ena:           in     std_logic;                     -- inicio de transacción
     nWR:           in     std_logic;
     dato:          in     std_logic_vector(15 downto 0) -- byte de dato introducido
    );

end entity;

architecture estructural of interfaz_spi is                   

  signal SDO:     std_logic;                     -- Slave Data Output (Master input)
  signal ena_rd:  std_logic;                     -- habilitación de lectura
  signal data_rd: std_logic_vector(7 downto 0);  -- byte de SDO, entregado por slave
  signal nCS:     std_logic;                     -- Chip Selection
  signal SPC:     std_logic;                     -- clock SPI (5 MHz) 
  signal SDI:     std_logic;                     -- Slave Data input  (connected to Master SDO)
  
  signal fin_tx:  std_logic;
  signal pos_X:   std_logic_vector(1 downto 0);
  signal pos_Y:   std_logic_vector(1 downto 0);
begin

  dut: entity work.master_spi(rtl)
       port map(clk     => clk,
                nRst    => nRst,
                ini     => ena,
                nWR     => nWR,
		dato    => dato,
		SDO     => SDO,
                ena_rd  => ena_rd,
                data_rd => data_rd,
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
end estructural;