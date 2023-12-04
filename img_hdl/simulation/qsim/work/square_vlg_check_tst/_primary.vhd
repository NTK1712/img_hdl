library verilog;
use verilog.vl_types.all;
entity square_vlg_check_tst is
    port(
        r1              : in     vl_logic_vector(15 downto 0);
        r2              : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end square_vlg_check_tst;
