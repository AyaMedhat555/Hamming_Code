library verilog;
use verilog.vl_types.all;
entity CLK_DIVIDER is
    generic(
        WIDTH           : integer := 4;
        N               : integer := 11
    );
    port(
        CLK_IN          : in     vl_logic;
        REST            : in     vl_logic;
        CLK_OUT         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of N : constant is 1;
end CLK_DIVIDER;
