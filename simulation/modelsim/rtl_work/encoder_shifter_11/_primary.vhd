library verilog;
use verilog.vl_types.all;
entity encoder_shifter_11 is
    port(
        \in\            : in     vl_logic;
        reset           : in     vl_logic;
        shift           : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(10 downto 0)
    );
end encoder_shifter_11;
