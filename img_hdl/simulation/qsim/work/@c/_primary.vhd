library verilog;
use verilog.vl_types.all;
entity C is
    port(
        clk             : in     vl_logic;
        dinr            : in     vl_logic_vector(7 downto 0);
        ding            : in     vl_logic_vector(7 downto 0);
        dinb            : in     vl_logic_vector(7 downto 0);
        doutr           : out    vl_logic_vector(7 downto 0);
        doutg           : out    vl_logic_vector(7 downto 0);
        doutb           : out    vl_logic_vector(7 downto 0)
    );
end C;
