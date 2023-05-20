library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_register_tb is
--  Port ( );
end instruction_register_tb;

architecture Behavioral of instruction_register_tb is
signal clk : std_logic := '1';
signal senal_carga : std_logic := '0';
signal load : std_logic_vector(1 downto 0) := "00";
signal salida : std_logic_vector(1 downto 0) := "00";

begin

uut : entity work.instruction_register port map
(
clk => clk,
LD => senal_carga,
IROUT => salida,
LOAD => load
);

process
begin
while true loop
clk <= not clk;
wait for 10 ns;
end loop;
end process;

end Behavioral;
