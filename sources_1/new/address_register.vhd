library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity address_register is
Port ( 
    ARLOAD : in std_logic;
    clk : in std_logic;
    LOAD : in std_logic_vector(5 downto 0);
    AROUT : out std_logic_vector(5 downto 0)
);
end address_register;

architecture Behavioral of address_register is
signal current_address : std_logic_vector(5 downto 0) := "000000";
begin


process(clk, ARLOAD)
begin
if (rising_edge(clk)) then
    if (ARLOAD='1') then    
        current_address <= LOAD;
    end if;
end if;
end process;

AROUT <= current_address;

end Behavioral;
