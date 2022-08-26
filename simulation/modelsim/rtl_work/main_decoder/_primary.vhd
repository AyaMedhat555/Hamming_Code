library verilog;
use verilog.vl_types.all;
entity main_decoder is
    port(
        datain          : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        dataout         : out    vl_logic;
        clkc            : out    vl_logic;
        clkd            : out    vl_logic
    );
end main_decoder;
