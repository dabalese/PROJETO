library verilog;
use verilog.vl_types.all;
entity MUX2X1 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        res             : out    vl_logic_vector(31 downto 0)
    );
end MUX2X1;
