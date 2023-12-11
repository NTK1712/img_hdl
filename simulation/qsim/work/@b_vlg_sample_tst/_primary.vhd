library verilog;
use verilog.vl_types.all;
entity B_vlg_sample_tst is
    port(
        ad              : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        we              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end B_vlg_sample_tst;
