library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity program_counter is port(
    clk : in std_logic;
    LD : in std_logic;
    INC : in std_logic;
    LOAD : in std_logic_vector(5 downto 0);
    PCOUT : out std_logic_vector(5 downto 0)
);
end program_counter;

architecture Behavioral of program_counter is
signal current_count : integer := 0;

begin

process(clk, LD, INC)
begin
if (rising_edge(clk)) then
    if(INC='1') then
        current_count <= current_count + 1;
    elsif(LD='1') then
        current_count <= to_integer(unsigned(LOAD));
    end if;
end if;
end process;


PCOUT <= std_logic_vector(to_unsigned(current_count, PCOUT'length));

end Behavioral;
