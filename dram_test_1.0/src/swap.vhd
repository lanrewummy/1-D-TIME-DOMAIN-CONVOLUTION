library ieee;
use ieee.std_logic_1164.all;

entity swap is
    port (
        input_vector : in  std_logic_vector(31 downto 0);
        output_vector: out std_logic_vector(31 downto 0)
    );
end entity swap;

architecture Behavioral of swap is
begin
    process (input_vector)
    begin
        output_vector <= input_vector(15 downto 0) & input_vector(31 downto 16);
    end process;
end architecture Behavioral;
