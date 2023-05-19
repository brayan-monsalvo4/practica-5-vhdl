library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity program_counter is port(
    PCLOAD : in std_logic_vector(5 downto 0);
    PCINC : in std_logic;
    PCOUT : out std_logic_vector(5 downto 0);
    clk : in std_logic;
    enable: in std_logic
);
end program_counter;

architecture Behavioral of program_counter is
signal current_count : integer := 0;
signal aux : integer := 0;

begin

process(clk, enable, PCINC)
begin

if (rising_edge(clk)) then
    if (enable='1') then
        if(PCINC='1') then
            current_count <= current_count + 1;
        else
            current_count <= to_integer(unsigned(PCLOAD));
        end if;
    end if;
end if;
end process;


PCOUT <= std_logic_vector(to_unsigned(current_count, PCOUT'length));

end Behavioral;
