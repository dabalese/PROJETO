library verilog;
use verilog.vl_types.all;
entity E_OR is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end E_OR;
