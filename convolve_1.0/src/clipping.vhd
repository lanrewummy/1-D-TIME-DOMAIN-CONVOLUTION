library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.math_custom.all;

entity clipping is
    generic (
    num_inputs   : positive;
    input1_width : positive;
	OUTPUT_WIDTH : integer := 16;
    input2_width : positive
    );
    port (
		input_signal : in std_logic_vector(input1_width+input2_width+clog2(num_inputs)-1 downto 0);
        output_signal : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
    );
end  clipping;

architecture Behavioral of clipping is
begin
    process(input_signal)
    begin
        if (unsigned(input_signal) > to_unsigned(65535, input_signal'length)) then
        -- Condition: sel is greater than 65535
        output_signal <= (others=>'1');
    elsif(unsigned(input_signal) <= to_unsigned(65535, input_signal'length)) then
        -- Condition: sel is not greater than 65535
        output_signal<= input_signal(15 downto 0);
    end if;
    end process;
end  Behavioral;
