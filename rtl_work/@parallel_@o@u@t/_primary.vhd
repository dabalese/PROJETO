library verilog;
use verilog.vl_types.all;
entity Parallel_OUT is
    port(
        EN              : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        RegData         : in     vl_logic_vector(31 downto 0);
        Address         : in     vl_logic_vector(31 downto 0);
        DataOut1        : out    vl_logic_vector(31 downto 0);
        DataOut2        : out    vl_logic_vector(31 downto 0)
    );
end Parallel_OUT;
