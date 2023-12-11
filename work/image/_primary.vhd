library verilog;
use verilog.vl_types.all;
entity image is
    port(
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        value           : in     vl_logic_vector(7 downto 0);
        din0            : in     vl_logic_vector(7 downto 0);
        din1            : in     vl_logic_vector(7 downto 0);
        din2            : in     vl_logic_vector(7 downto 0);
        din3            : in     vl_logic_vector(7 downto 0);
        din4            : in     vl_logic_vector(7 downto 0);
        din5            : in     vl_logic_vector(7 downto 0);
        din6            : in     vl_logic_vector(7 downto 0);
        din7            : in     vl_logic_vector(7 downto 0);
        din8            : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(7 downto 0)
    );
end image;
