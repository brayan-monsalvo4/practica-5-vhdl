library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_testb is
--  Port ( );
end alu_testb;

architecture Behavioral of alu_testb is

signal enable : std_logic := '0';
signal clk : std_logic := '1';
signal PCLOAD : std_logic_vector(5 downto 0) := "000000";
signal PCOUT : std_logic_vector(5 downto 0) := "000000";
signal PCINC : std_logic := '0';

begin

uut : entity work.program_counter port map(
clk => clk,
enable => enable,
PCLOAD => PCLOAD,
PCOUT => PCOUT,
PCINC => PCINC
);

process
begin
    while true loop
        clk <= not clk;
        wait for 10 ns; 
    end loop;
end process;



end Behavioral;
