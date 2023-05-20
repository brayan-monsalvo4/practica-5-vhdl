library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_register is port (
    clk : in std_logic;
    LD : in std_logic;
    LOAD : in std_logic_vector(1 downto 0);
    IROUT : out std_logic_vector(1 downto 0)
);
end instruction_register;

architecture Behavioral of instruction_register is
signal current_instruction : std_logic_vector(1 downto 0) := "00";
begin

process(clk, LD)
begin
if(rising_edge(clk)) then
    if (LD='1') then
        current_instruction <= LOAD;
    end if;
end if;
end process;

IROUT <= current_instruction;

end Behavioral;
