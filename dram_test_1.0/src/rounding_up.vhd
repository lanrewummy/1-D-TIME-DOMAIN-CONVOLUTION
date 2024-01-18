library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DivideAndRoundUp is
    port (
        input_vector : in  std_logic_vector(16 downto 0);
        output_vector: out std_logic_vector(16 downto 0)
    );
end entity DivideAndRoundUp;

architecture Behavioral of DivideAndRoundUp is
    signal input_unsigned : unsigned(16 downto 0);
    signal result_unsigned: unsigned(16 downto 0);
begin
    input_unsigned <= unsigned(input_vector);

    process (input_unsigned)
    begin
        result_unsigned <= (input_unsigned + 1) / 2;
    end process;

    output_vector <= std_logic_vector(result_unsigned);
end architecture Behavioral;
