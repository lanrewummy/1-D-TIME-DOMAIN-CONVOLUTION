library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        enable        : in  std_logic;
        size          : in  std_logic_vector(16 downto 0);
        output_signal : out std_logic
    );
end entity counter;

architecture Behavioral of counter is
begin
    process (clk, rst)
        variable v_counter_value : unsigned(16 downto 0) := (others => '0');
    begin
        if rst = '1' then
            v_counter_value := (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                v_counter_value := v_counter_value + 1;
            end if;
        end if;

        if v_counter_value >= unsigned(size) then
            output_signal <= '1';
        else
            output_signal <= '0';
        end if;
    end process;
end architecture Behavioral;
