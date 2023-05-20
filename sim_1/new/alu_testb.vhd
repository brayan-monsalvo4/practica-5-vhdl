library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_testb is
--  Port ( );
end alu_testb;

architecture Behavioral of alu_testb is

signal LD : std_logic := '0';
signal INC : std_logic := '0';
signal clk : std_logic := '1';
signal LOAD : std_logic_vector(5 downto 0) := "000000";
signal PCOUT : std_logic_vector(5 downto 0) := "000000";

begin

uut : entity work.program_counter port map(
    LD => LD,
    INC => INC, 
    clk => clk,
    LOAD => LOAD,
    PCOUT => PCOUT
);

process
begin
    while true loop
        clk <= not clk;
        wait for 10 ns; 
    end loop;
end process;



end Behavioral;
