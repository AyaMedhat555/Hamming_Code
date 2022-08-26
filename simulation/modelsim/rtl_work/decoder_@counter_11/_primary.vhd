library verilog;
use verilog.vl_types.all;
entity decoder_Counter_11 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        write           : out    vl_logic
    );
end decoder_Counter_11;
