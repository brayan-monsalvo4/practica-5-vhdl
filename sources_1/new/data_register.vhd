library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity data_register is
Port (
    clk : in std_logic;
    DRLOAD : in std_logic;
    LOAD : in std_logic_vector(7 downto 0);
    DROUT : out std_logic_vector(7 downto 0)
 );
end data_register;

architecture Behavioral of data_register is
signal current_data : std_logic_vector(7 downto 0) := "00000000"; 
begin

process(clk, DRLOAD)
begin
    if (rising_edge(clk)) then
        if (DRLOAD='1') then
            current_data <= LOAD;
        end if;
    end if;
end process;

DROUT <= current_data;

end Behavioral;
