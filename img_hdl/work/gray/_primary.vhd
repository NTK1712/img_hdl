library verilog;
use verilog.vl_types.all;
entity gray is
    port(
        clk             : in     vl_logic;
        red_in          : in     vl_logic_vector(7 downto 0);
        green_in        : in     vl_logic_vector(7 downto 0);
        blue_in         : in     vl_logic_vector(7 downto 0);
        gray_out        : out    vl_logic_vector(7 downto 0)
    );
end gray;
