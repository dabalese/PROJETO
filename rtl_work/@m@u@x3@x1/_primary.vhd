library verilog;
use verilog.vl_types.all;
entity MUX3X1 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end MUX3X1;
