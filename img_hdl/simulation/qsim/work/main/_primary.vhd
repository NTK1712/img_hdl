library verilog;
use verilog.vl_types.all;
entity main is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        value           : in     vl_logic_vector(7 downto 0);
        threshold       : in     vl_logic_vector(7 downto 0);
        select_oper     : in     vl_logic_vector(2 downto 0);
        done_in         : in     vl_logic;
        done_out        : out    vl_logic;
        red_in          : in     vl_logic_vector(7 downto 0);
        green_in        : in     vl_logic_vector(7 downto 0);
        blue_in         : in     vl_logic_vector(7 downto 0);
        red_out         : out    vl_logic_vector(7 downto 0);
        green_out       : out    vl_logic_vector(7 downto 0);
        blue_out        : out    vl_logic_vector(7 downto 0)
    );
end main;
