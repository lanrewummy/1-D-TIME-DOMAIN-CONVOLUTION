library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_custom.all;
use work.config_pkg.all;
use work.user_pkg.all;


entity dram_rd1 is 

       port(dram_clk   : in  std_logic;
            user_clk   : in  std_logic;
            dram_rst   : in  std_logic;
			user_rst   : in std_logic;
            go         : in  std_logic;
            rd_en      : in  std_logic;
            stall      : in  std_logic;
            start_addr : in  std_logic_vector(14 downto 0);
            size       : in  std_logic_vector(16 downto 0);
            valid      : out std_logic;
            data       : out std_logic_vector(15 downto 0);
            done       : out std_logic;
            dram_ready    : in  std_logic;
            dram_rd_en    : out std_logic;
            dram_rd_addr  : out std_logic_vector(14 downto 0);
            dram_rd_data  : in  std_logic_vector(31 downto 0);
            dram_rd_valid : in  std_logic
            );
			
end dram_rd1;


architecture BHV of dram_rd1 is 
signal size_1 :std_logic_vector(16 downto 0);
signal dp_received,done_gen,delay_ack,mem_in_ack,output_signal_done,prog_full: std_logic;
signal dram_swapped_data:  std_logic_vector(31 downto 0);
signal mem_fifo_empty : std_logic;
signal mem_fifo_full  : std_logic;
signal data_out: std_logic_vector(15 downto 0);
begin

    U_MEM_ADDR_GEN : entity work.addr_gen_in
        generic map (
            width => 16)
        port map (
            clk      => dram_clk,
            rst      => dram_rst,
            size     => size_1,
			start_add=>start_addr,
			stall    => prog_full,
			done => done_gen,
            go       => dp_received,
            delay_ack     => delay_ack,
            received => mem_in_ack,
			ready=> dram_ready,
			valid_data=>dram_rd_en,
            address     => dram_rd_addr);
 
 
			
    U_DP_IN_SYNC : entity work.handshake
        port map (
            clk_src   => user_clk,
            clk_dest  => dram_clk,
            rst       => dram_rst,
            go        => go,
            delay_ack => delay_ack,
            rcv       => dp_received,
            ack       => mem_in_ack);


    U_COUNTER : entity work.counter
        port map (
            clk   => user_clk,
            rst   => user_rst or output_signal_done,
			size=>size,
            enable => rd_en and not mem_fifo_empty,
            output_signal => output_signal_done
         );
    U_ROUNDUP : entity work.DivideAndRoundUp
        port map (
            input_vector => size,
            output_vector => size_1
         );
   
    U_SWAP : entity work.swap
        port map (
            input_vector => dram_rd_data,
            output_vector => dram_swapped_data
         );
	U_MEM_IN_FIFO : entity work.fifo32_16
        port map (
          rst => dram_rst or output_signal_done,
          clk_src => dram_clk,
          clk_dest => user_clk,
          data_in(31 downto 16) => dram_rd_data(15 downto 0),
           data_in(15 downto 0) => dram_rd_data(31 downto 16),
            wr => dram_rd_valid,
            rd => rd_en and not mem_fifo_empty,
         data_out => data_out,
          full => mem_fifo_full,
          empty => mem_fifo_empty,
        prog_full => prog_full
            );
  data<=data_out;
  done <= output_signal_done;
  valid <= not output_signal_done and not mem_fifo_empty;
end BHV;

			