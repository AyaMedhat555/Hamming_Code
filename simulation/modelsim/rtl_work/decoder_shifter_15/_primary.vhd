library verilog;
use verilog.vl_types.all;
entity decoder_shifter_15 is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        reset           : in     vl_logic;
        shift           : in     vl_logic;
        \out\           : out    vl_logic_vector(14 downto 0)
    );
end decoder_shifter_15;
