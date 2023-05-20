

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity address_register_tb is
--  Port ( );
end address_register_tb;

architecture Behavioral of address_register_tb is

signal direccion : std_logic_vector(5 downto 0) := "000000";
signal senal : std_logic := '0';
signal clk : std_logic := '1';
signal arout : std_logic_vector(5 downto 0);

begin

uut: entity work.address_register port map(
ARLOAD => senal,
clk => clk,
AROUT => arout,
LOAD => direccion
);

process
begin
while true loop
clk <= not clk;
wait for 10 ns;
end loop;
end process;



end Behavioral;
