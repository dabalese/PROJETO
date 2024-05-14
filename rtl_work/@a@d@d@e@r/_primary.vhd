library verilog;
use verilog.vl_types.all;
entity ADDER is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end ADDER;
