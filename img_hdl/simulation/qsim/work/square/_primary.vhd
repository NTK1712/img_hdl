library verilog;
use verilog.vl_types.all;
entity square is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        r1              : out    vl_logic_vector(15 downto 0);
        r2              : out    vl_logic_vector(15 downto 0)
    );
end square;
