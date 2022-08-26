library verilog;
use verilog.vl_types.all;
entity encoder_Counter_11 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        write           : out    vl_logic
    );
end encoder_Counter_11;
