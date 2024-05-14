library verilog;
use verilog.vl_types.all;
entity Parallel_IN is
    port(
        MemData         : in     vl_logic_vector(31 downto 0);
        Address         : in     vl_logic_vector(31 downto 0);
        DataIn1         : in     vl_logic_vector(31 downto 0);
        DataIn2         : in     vl_logic_vector(31 downto 0);
        RegData         : out    vl_logic_vector(31 downto 0)
    );
end Parallel_IN;
