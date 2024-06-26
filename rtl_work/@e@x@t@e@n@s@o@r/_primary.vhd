library verilog;
use verilog.vl_types.all;
entity EXTENSOR is
    port(
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        c               : in     vl_logic_vector(11 downto 0);
        d               : in     vl_logic_vector(19 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end EXTENSOR;
