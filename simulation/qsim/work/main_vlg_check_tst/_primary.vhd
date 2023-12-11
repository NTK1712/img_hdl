library verilog;
use verilog.vl_types.all;
entity main_vlg_check_tst is
    port(
        blue_out        : in     vl_logic_vector(7 downto 0);
        done_out        : in     vl_logic;
        green_out       : in     vl_logic_vector(7 downto 0);
        red_out         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end main_vlg_check_tst;
