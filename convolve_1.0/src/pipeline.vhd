
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.math_custom.all;


entity pipeline is
  generic (
    num_inputs   : positive;
    input1_width : positive;
    input2_width : positive);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    en     : in  std_logic;
    input1 : in  std_logic_vector(num_inputs*input1_width-1 downto 0);
    input2 : in  std_logic_vector(num_inputs*input2_width-1 downto 0);
	valid_data_in_pipeline: in std_logic;
	valid_data_out_pipeline:out std_logic;
    output : out std_logic_vector(input1_width-1 downto 0));
end pipeline;

architecture  bhv of  pipeline is 

signal multtree_output : std_logic_vector(input1_width+input2_width+clog2(num_inputs)-1 downto 0);

begin
   DUT : entity work.mult_add_tree(unsigned_arch)
         generic map (
	num_inputs   => num_inputs,
    input1_width => input1_width,
    input2_width => input2_width)
       
      port map (
        clk    => clk,
        rst    => rst,
        en     => en,
        input1  => input1,
		input2  => input2,
        output => multtree_output);
		
	
    U_DELAY : entity work.delay
        generic map (
            CYCLES => 7,
            WIDTH  => 1
            )
        port map (
            clk       => clk,
            rst       => rst,
            en        => en,
            input(0)  =>  valid_data_in_pipeline,
            output(0) => valid_data_out_pipeline);
		   
    U_CLIP: entity work.clipping  
          generic map (
	num_inputs   => num_inputs,
    input1_width => input1_width,
    input2_width => input2_width,
    OUTPUT_WIDTH => input1_width)	
		  port map(
		   input_signal=> multtree_output,
		   output_signal=> output);
end bhv;