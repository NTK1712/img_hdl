library verilog;
use verilog.vl_types.all;
entity C_vlg_check_tst is
    port(
        doutb           : in     vl_logic_vector(7 downto 0);
        doutg           : in     vl_logic_vector(7 downto 0);
        doutr           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end C_vlg_check_tst;
