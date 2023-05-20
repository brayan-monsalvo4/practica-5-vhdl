library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity data_register_tb is
--  Port ( );
end data_register_tb;

architecture Behavioral of data_register_tb is

signal dato : std_logic_vector(7 downto 0) := "00000000";
signal senal : std_logic := '0';
signal clk : std_logic := '1';
signal arout : std_logic_vector(7 downto 0) := "00000000";

begin

uut: entity work.data_register port map(
LD => senal,
clk => clk,
DROUT => arout,
LOAD => dato
);

process
begin
while true loop
clk <= not clk;
wait for 10 ns;
end loop;
end process;



end Behavioral;
