library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity accumulator is
Port (
    clk : in std_logic;
    LD : in std_logic;
    INC : in std_logic;
    ACOUT : out std_logic_vector(7 downto 0);
    LOAD : in std_logic_vector(7 downto 0)
     
);
end accumulator;

architecture Behavioral of accumulator is
signal current_value : integer := 0;
begin

process (clk, LD, INC)
begin
    if (rising_edge(clk)) then
        if (INC='1') then
            current_value <= current_value + 1;
        elsif (LD='1') then
            current_value <= to_integer(unsigned(LOAD));
        end if;
    end if;
end process;

ACOUT <= std_logic_vector(to_unsigned(current_value, ACOUT'length));

end Behavioral;
