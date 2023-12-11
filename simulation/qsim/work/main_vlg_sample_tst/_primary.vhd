library verilog;
use verilog.vl_types.all;
entity main_vlg_sample_tst is
    port(
        blue_in         : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        done_in         : in     vl_logic;
        green_in        : in     vl_logic_vector(7 downto 0);
        red_in          : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        select_oper     : in     vl_logic_vector(2 downto 0);
        threshold       : in     vl_logic_vector(7 downto 0);
        value           : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end main_vlg_sample_tst;
