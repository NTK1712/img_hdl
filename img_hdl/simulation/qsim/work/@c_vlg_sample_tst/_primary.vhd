library verilog;
use verilog.vl_types.all;
entity C_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dinb            : in     vl_logic_vector(7 downto 0);
        ding            : in     vl_logic_vector(7 downto 0);
        dinr            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end C_vlg_sample_tst;
