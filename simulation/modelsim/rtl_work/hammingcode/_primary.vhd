library verilog;
use verilog.vl_types.all;
entity hammingcode is
    port(
        datain          : in     vl_logic;
        clk_encoder     : in     vl_logic;
        clk_decoder     : in     vl_logic;
        reset_encoder   : in     vl_logic;
        reset_decoder   : in     vl_logic;
        enable          : in     vl_logic;
        serial_out      : out    vl_logic;
        clkc_encoder    : out    vl_logic;
        clkd_encoder    : out    vl_logic;
        clkc_decoder    : out    vl_logic;
        clkd_decoder    : out    vl_logic
    );
end hammingcode;
