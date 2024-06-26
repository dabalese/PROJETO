library verilog;
use verilog.vl_types.all;
entity Register_File is
    port(
        Write_Data      : in     vl_logic_vector(31 downto 0);
        Write_Adress    : in     vl_logic_vector(4 downto 0);
        Write_Enable    : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        ra1             : in     vl_logic_vector(4 downto 0);
        ra2             : in     vl_logic_vector(4 downto 0);
        rd1             : out    vl_logic_vector(31 downto 0);
        rd2             : out    vl_logic_vector(31 downto 0);
        x0              : out    vl_logic_vector(31 downto 0);
        x1              : out    vl_logic_vector(31 downto 0);
        x2              : out    vl_logic_vector(31 downto 0);
        x3              : out    vl_logic_vector(31 downto 0);
        x4              : out    vl_logic_vector(31 downto 0);
        x5              : out    vl_logic_vector(31 downto 0);
        x6              : out    vl_logic_vector(31 downto 0);
        x7              : out    vl_logic_vector(31 downto 0);
        x8              : out    vl_logic_vector(31 downto 0);
        x9              : out    vl_logic_vector(31 downto 0);
        x10             : out    vl_logic_vector(31 downto 0);
        x11             : out    vl_logic_vector(31 downto 0);
        x12             : out    vl_logic_vector(31 downto 0);
        x13             : out    vl_logic_vector(31 downto 0);
        x14             : out    vl_logic_vector(31 downto 0);
        x15             : out    vl_logic_vector(31 downto 0);
        x16             : out    vl_logic_vector(31 downto 0);
        x17             : out    vl_logic_vector(31 downto 0);
        x18             : out    vl_logic_vector(31 downto 0);
        x19             : out    vl_logic_vector(31 downto 0);
        x20             : out    vl_logic_vector(31 downto 0);
        x21             : out    vl_logic_vector(31 downto 0);
        x22             : out    vl_logic_vector(31 downto 0);
        x23             : out    vl_logic_vector(31 downto 0);
        x24             : out    vl_logic_vector(31 downto 0);
        x25             : out    vl_logic_vector(31 downto 0);
        x26             : out    vl_logic_vector(31 downto 0);
        x27             : out    vl_logic_vector(31 downto 0);
        x28             : out    vl_logic_vector(31 downto 0);
        x29             : out    vl_logic_vector(31 downto 0);
        x30             : out    vl_logic_vector(31 downto 0);
        x31             : out    vl_logic_vector(31 downto 0)
    );
end Register_File;
