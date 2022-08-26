library verilog;
use verilog.vl_types.all;
entity decoder_shifter_11 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        shift           : in     vl_logic;
        data_in         : in     vl_logic_vector(10 downto 0);
        serial_out      : out    vl_logic
    );
end decoder_shifter_11;
