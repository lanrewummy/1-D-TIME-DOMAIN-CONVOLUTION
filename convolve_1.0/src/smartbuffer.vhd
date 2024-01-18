library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_buffer is
    generic (
        width : positive;
        size  : positive
    );
    port ( 
        clk      : in std_logic;
        rst      : in std_logic;
        rd_en    : in std_logic;
        wr_en    : in std_logic;
        full     : out std_logic;
        empty    : out std_logic;
        input    : in std_logic_vector(width-1 downto 0);
        output   : out std_logic_vector(size*width-1 downto 0)
    );
end signal_buffer;

architecture STR of signal_buffer is
    type input_array is array (integer range <>) of std_logic_vector(width-1 downto 0);
    signal output_window: input_array(0 to size-1);

    function vectorize(input : input_array; arraySize : natural; elementWidth : positive) return std_logic_vector is
        variable temp : std_logic_vector(arraySize*elementWidth-1 downto 0);
    begin
        for i in 0 to arraySize-1 loop
            temp((i+1)*elementWidth-1 downto i*elementWidth) := input(input'left+i);
        end loop;
        return temp;
    end function;

begin
    process(clk, rst)
        variable count : natural := 0;
    begin
        if (rst = '1') then
            count := 0;
            for i in 0 to size-1 loop
                output_window(i) <= (others => '0');
            end loop;
            full<='0';
            empty<='1';
        elsif (rising_edge(clk)) then
            if (wr_en = '1') then
                output_window(size-1) <= input;
                count := count + 1;
                for i in size-1 downto 1 loop
                    output_window(i-1) <= output_window(i);
                end loop;
            end if;
            if (rd_en = '1') then
                count := count - 1;
            end if;
        end if;

        -- Check conditions based on the count value
        if count < 128 then
            -- Set signals based on the condition
            full <= '0';
            empty <= '1';
        elsif count = 128 then
            -- Set signals based on the condition
            full <= '1';
            empty <= '0';
            if rd_en = '1' and wr_en = '1' then
                -- Additional condition check
                full <= '0';
                empty <= '0';
            end if;
        elsif count > 128 then
            -- Set signals based on the condition
            full <= '1';
            empty <= '0';
        end if;
    end process;

    output <= vectorize(output_window, size, width);
end STR;