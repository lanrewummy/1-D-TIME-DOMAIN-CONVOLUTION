-- Greg Stitt
-- University of Florida
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.math_custom.all;

use work.config_pkg.all;
use work.user_pkg.all;

entity user_app is
    port (
        clk : in std_logic;
        rst : in std_logic;

        -- Memory-map interface
        mmap_wr_en   : in  std_logic;
        mmap_wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        mmap_rd_en   : in  std_logic;
        mmap_rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- DMA read interface for RAM 0
        ram0_rd_rd_en : out std_logic;
        ram0_rd_go    : out std_logic;
        ram0_rd_valid : in  std_logic;
        ram0_rd_data  : in  std_logic_vector(RAM0_RD_DATA_RANGE);
        ram0_rd_addr  : out std_logic_vector(RAM0_ADDR_RANGE);
        ram0_rd_size  : out std_logic_vector(RAM0_RD_SIZE_RANGE);
        ram0_rd_done  : in  std_logic;

        debug_ram0_rd_count      : in std_logic_vector(RAM0_RD_SIZE_RANGE);
        debug_ram0_rd_start_addr : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_addr       : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_size       : in std_logic_vector(C_RAM0_ADDR_WIDTH downto 0);
        debug_ram0_rd_prog_full  : in std_logic;
        debug_ram0_rd_empty      : in std_logic;

        -- DMA write interface for RAM 1 
        ram1_wr_ready : in  std_logic;
        ram1_wr_go    : out std_logic;
        ram1_wr_valid : out std_logic;
        ram1_wr_data  : out std_logic_vector(RAM1_WR_DATA_RANGE);
        ram1_wr_addr  : out std_logic_vector(RAM1_ADDR_RANGE);
        ram1_wr_size  : out std_logic_vector(RAM1_WR_SIZE_RANGE);
        ram1_wr_done  : in  std_logic
        );
end user_app;

architecture default of user_app is

    signal go   : std_logic;
    signal size : std_logic_vector(RAM0_RD_SIZE_RANGE);
    signal done : std_logic;
	signal kernel_load: std_logic;
	signal kernel_pipeline:std_logic_vector(C_KERNEL_SIZE*C_SIGNAL_WIDTH-1 downto 0);
    signal signal_pipeline:std_logic_vector(C_KERNEL_SIZE*C_SIGNAL_WIDTH-1 downto 0);
	signal clear,signal_buffer_empty,kernel_buffer_empty,signal_buffer_full,kernel_buffer_full,signal_rd_en,signal_wr_en,valid_pipe:std_logic;
	signal valid_data_pipeline:std_logic;
	signal pipeline_out: std_logic_vector(C_SIGNAL_WIDTH-1 downto 0);
	signal kernel_data_signal:std_logic_vector(KERNEL_WIDTH_RANGE);


begin

    U_MMAP : entity work.memory_map
        port map (
            clk => clk,
            rst => rst,

            wr_en   => mmap_wr_en,
            wr_addr => mmap_wr_addr,
            wr_data => mmap_wr_data,
            rd_en   => mmap_rd_en,
            rd_addr => mmap_rd_addr,
            rd_data => mmap_rd_data,

            -- circuit interface from software
            go => go,
            signal_size   => size,
            done  => done,
            clear=>clear,
            
			kernel_data => kernel_data_signal,
			kernel_load => kernel_load,
            kernel_ready => kernel_buffer_full
            --Debugging signals.
            --debug_ram0_rd_count      => debug_ram0_rd_count,
            --debug_ram0_rd_addr       => debug_ram0_rd_addr,
            --debug_ram0_rd_start_addr => debug_ram0_rd_start_addr,
            --debug_ram0_rd_size       => debug_ram0_rd_size,
            --debug_ram0_rd_prog_full  => debug_ram0_rd_prog_full,
            --debug_ram0_rd_empty      => debug_ram0_rd_empty
            );
			
			
    UUT_Signal_buffer : entity work.signal_buffer
        generic map (
            width =>  C_SIGNAL_WIDTH,
            size => C_KERNEL_SIZE)
        port map (
            clk    => clk,
            rst    => clear,
            wr_en  =>  signal_wr_en,
            rd_en  =>  signal_rd_en,
            full   => signal_buffer_full,
            empty  => signal_buffer_empty,
            input  => ram0_rd_data,
            output => signal_pipeline);
            
            
            
			signal_wr_en <=ram0_rd_valid and not signal_buffer_full;
			signal_rd_en <=ram1_wr_ready and not signal_buffer_empty ;
					
    UUT_Kernel_buffer : entity work.kernel_buffer
        generic map (
            width => C_KERNEL_WIDTH ,
            size => C_KERNEL_SIZE)
        port map (
            clk    => clk,
            rst    => clear,
            rd_en  => '0',
            wr_en  => kernel_load,
            full   => kernel_buffer_full,
            empty  => kernel_buffer_empty,
            input  => kernel_data_signal,
            output => kernel_pipeline);
			
			U_DP_SEND : entity work.delay
        generic map (
          CYCLES =>1,
            WIDTH => 1)
        port map (
            clk       => clk,
            rst       => rst or clear,
            en        => ram1_wr_ready,
            input(0)  => ram1_wr_ready and not signal_buffer_empty,
            output(0) => valid_pipe);
            
   UUT_PIPELINE : entity work.pipeline
         generic map (
		 num_inputs => C_KERNEL_SIZE,
            input1_width => C_SIGNAL_WIDTH,
            input2_width => C_SIGNAL_WIDTH)
		
      port map (
        clk    => clk,
        rst    => clear,
        en     => ram1_wr_ready,
        input1  => kernel_pipeline,
		input2  => signal_pipeline,
		valid_data_in_pipeline=> valid_pipe,
	        valid_data_out_pipeline=> valid_data_pipeline,
        output => pipeline_out);
		
		
		
    -- RAM0 control.
    ram0_rd_go    <= go;
    ram1_wr_go    <= go;
	
	
	done <= ram1_wr_done;
	
	
	ram0_rd_addr <= (others => '0');
    ram1_wr_addr <= (others => '0');
	
	
	ram0_rd_size  <= std_logic_vector(unsigned(size) + to_unsigned(2*(C_KERNEL_SIZE-1), ram0_rd_size'length));
    ram1_wr_size  <= std_logic_vector(unsigned(size) + to_unsigned(C_KERNEL_SIZE-1, ram1_wr_size'length));
	
	
    ram0_rd_rd_en <= ram0_rd_valid and not signal_buffer_full;
	
	ram1_wr_valid <= valid_data_pipeline and ram1_wr_ready;
    ram1_wr_data  <= pipeline_out;
    

     

    
	

end default;
