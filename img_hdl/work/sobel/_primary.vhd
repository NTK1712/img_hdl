library verilog;
use verilog.vl_types.all;
entity sobel is
    generic(
        x0              : integer := -1;
        x1              : integer := 0;
        x2              : integer := 1;
        x3              : integer := -2;
        x4              : integer := 0;
        x5              : integer := 2;
        x6              : integer := -1;
        x7              : integer := 0;
        x8              : integer := 1;
        y0              : integer := -1;
        y1              : integer := -2;
        y2              : integer := -1;
        y3              : integer := 0;
        y4              : integer := 0;
        y5              : integer := 0;
        y6              : integer := 1;
        y7              : integer := 2;
        y8              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        din0            : in     vl_logic_vector(7 downto 0);
        din1            : in     vl_logic_vector(7 downto 0);
        din2            : in     vl_logic_vector(7 downto 0);
        din3            : in     vl_logic_vector(7 downto 0);
        din4            : in     vl_logic_vector(7 downto 0);
        din5            : in     vl_logic_vector(7 downto 0);
        din6            : in     vl_logic_vector(7 downto 0);
        din7            : in     vl_logic_vector(7 downto 0);
        din8            : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(8 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of x0 : constant is 1;
    attribute mti_svvh_generic_type of x1 : constant is 1;
    attribute mti_svvh_generic_type of x2 : constant is 1;
    attribute mti_svvh_generic_type of x3 : constant is 1;
    attribute mti_svvh_generic_type of x4 : constant is 1;
    attribute mti_svvh_generic_type of x5 : constant is 1;
    attribute mti_svvh_generic_type of x6 : constant is 1;
    attribute mti_svvh_generic_type of x7 : constant is 1;
    attribute mti_svvh_generic_type of x8 : constant is 1;
    attribute mti_svvh_generic_type of y0 : constant is 1;
    attribute mti_svvh_generic_type of y1 : constant is 1;
    attribute mti_svvh_generic_type of y2 : constant is 1;
    attribute mti_svvh_generic_type of y3 : constant is 1;
    attribute mti_svvh_generic_type of y4 : constant is 1;
    attribute mti_svvh_generic_type of y5 : constant is 1;
    attribute mti_svvh_generic_type of y6 : constant is 1;
    attribute mti_svvh_generic_type of y7 : constant is 1;
    attribute mti_svvh_generic_type of y8 : constant is 1;
end sobel;
