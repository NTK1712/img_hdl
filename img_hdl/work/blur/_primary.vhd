library verilog;
use verilog.vl_types.all;
entity blur is
    generic(
        k0              : integer := 45354;
        k1              : integer := 56641;
        k2              : integer := 45354;
        k3              : integer := 56641;
        k4              : integer := 70736;
        k5              : integer := 56641;
        k6              : integer := 45354;
        k7              : integer := 56641;
        k8              : integer := 45354
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
        dout            : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k0 : constant is 1;
    attribute mti_svvh_generic_type of k1 : constant is 1;
    attribute mti_svvh_generic_type of k2 : constant is 1;
    attribute mti_svvh_generic_type of k3 : constant is 1;
    attribute mti_svvh_generic_type of k4 : constant is 1;
    attribute mti_svvh_generic_type of k5 : constant is 1;
    attribute mti_svvh_generic_type of k6 : constant is 1;
    attribute mti_svvh_generic_type of k7 : constant is 1;
    attribute mti_svvh_generic_type of k8 : constant is 1;
end blur;
