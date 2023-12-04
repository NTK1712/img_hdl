library verilog;
use verilog.vl_types.all;
entity B is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        dout            : out    vl_logic_vector(7 downto 0);
        din             : in     vl_logic_vector(7 downto 0);
        ad              : in     vl_logic_vector(4 downto 0)
    );
end B;
