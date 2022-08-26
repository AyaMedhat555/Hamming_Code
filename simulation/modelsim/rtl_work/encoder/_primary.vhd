library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        datain          : in     vl_logic_vector(10 downto 0);
        dataout         : out    vl_logic_vector(14 downto 0)
    );
end encoder;
