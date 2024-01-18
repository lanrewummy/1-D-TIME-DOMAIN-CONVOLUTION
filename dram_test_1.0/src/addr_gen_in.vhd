library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config_pkg.all;
use work.user_pkg.all;

entity addr_gen_in is
  generic(width : positive);
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;
    size        : in  std_logic_vector(16 downto 0);
    go          : in  std_logic;
    delay_ack   : out std_logic;
    received    : in  std_logic;
    ready       : in  std_logic;
    stall       : in  std_logic;
    start_add   : in  std_logic_vector(14 downto 0);
    done        : out std_logic;
    valid_data  : out std_logic;
    address     : out std_logic_vector(14 downto 0)
  );
end addr_gen_in;

architecture addr of addr_gen_in is
  type state_t is (START, INIT, CONDITION1, CONDITION, CONDITION_B, FINISH);
  signal state_r      : state_t;
  signal start_add_reg: std_logic_vector(14 downto 0);
  signal size_reg     : std_logic_vector(16 downto 0);
begin
	process(clk, rst)
    variable count : unsigned(size'range) := (others => '0');
  begin
    if rst = '1' then
      state_r     <= START;
      done        <= '0';
      valid_data  <= '0';
      delay_ack   <= '0';
      address<=(others=>'0');
      size_reg<=(others=>'0');
      start_add_reg<=(others=>'0');

    elsif rising_edge(clk) then
      case state_r is
        when START =>
          if go = '1' then 
            done        <= '0';
            size_reg    <= size;
            start_add_reg<= start_add;
            valid_data  <= '0';
            delay_ack   <= '0';
            state_r     <= INIT;
          end if;

        when INIT =>
          delay_ack <= '0';
          count     := to_unsigned(0, size'length);
          state_r   <= CONDITION1;

        when CONDITION1 =>
          if received = '1' then
            state_r <= CONDITION;
          else
            state_r <= CONDITION1;
          end if;

        when CONDITION =>
          if ready = '1' then
              address    <= std_logic_vector(resize(count + unsigned(start_add_reg),15));
            valid_data <= '1';
            state_r    <= CONDITION_B;
          else
            state_r    <= CONDITION;
          end if;

        when CONDITION_B =>
          valid_data <= '0';
          if ready = '1' then
            if( count < unsigned(size_reg) and stall = '0' ) then 
                count      := count + 1;
               address    <= std_logic_vector(resize(count + unsigned(start_add_reg),15));
               valid_data <= '1';
              state_r    <= CONDITION_B;
              end if;
                 if stall<='1' then 
                 valid_data<='0';
                 state_r<=CONDITION_B;
               end if;
              if count = unsigned(size_reg)  then 
                 valid_data<='0';
                 state_r<=FINISH;
               end if;
            else
               state_r<=CONDITION_B;
           end if;
          

        when FINISH =>
          done <= '1';
          if go = '0' then
            state_r <= START;
          end if;

        when others => null;
        
      end case;
    end if;
  end process;
end addr;
