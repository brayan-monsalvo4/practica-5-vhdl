library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_testb is
--  Port ( );
end accumulator_testb;

architecture Behavioral of accumulator_testb is
signal clk : std_logic := '0';
signal senal_carga : std_logic := '0';
signal senal_inc : std_logic := '0';
signal load : std_logic_vector(7 downto 0) :="00000000";
signal salida : std_logic_vector(7 downto 0) := "00000000";
begin

uut: entity work.accumulator port map
(
    clk => clk,
    LD => senal_carga,
    LOAD => load,
    ACOUT => salida,
    INC => senal_inc
);

process
begin
    while True loop
        clk <= not clk;
        wait for 10 ns;
    end loop;
end process;

end Behavioral;
