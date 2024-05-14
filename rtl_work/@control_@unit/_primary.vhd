library verilog;
use verilog.vl_types.all;
entity Control_Unit is
    port(
        OP              : in     vl_logic_vector(6 downto 0);
        Funct3          : in     vl_logic_vector(2 downto 0);
        Funct7          : in     vl_logic_vector(6 downto 0);
        RegWrite        : out    vl_logic;
        ImmSrc          : out    vl_logic_vector(1 downto 0);
        ULASrc          : out    vl_logic;
        ULAControl      : out    vl_logic_vector(3 downto 0);
        MemWrite        : out    vl_logic;
        ResultSrc       : out    vl_logic_vector(1 downto 0);
        Branch          : out    vl_logic;
        Jump            : out    vl_logic
    );
end Control_Unit;
