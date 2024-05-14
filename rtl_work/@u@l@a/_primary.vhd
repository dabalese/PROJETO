library verilog;
use verilog.vl_types.all;
entity ULA is
    port(
        SrcA            : in     vl_logic_vector(31 downto 0);
        SrcB            : in     vl_logic_vector(31 downto 0);
        ULAControl      : in     vl_logic_vector(3 downto 0);
        ULAResult       : out    vl_logic_vector(31 downto 0);
        Zero            : out    vl_logic
    );
end ULA;
