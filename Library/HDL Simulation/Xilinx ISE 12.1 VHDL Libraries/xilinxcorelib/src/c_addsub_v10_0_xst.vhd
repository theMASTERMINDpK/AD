
library IEEE;
use IEEE.std_logic_1164.all;

library XilinxCoreLib;
use XilinxCoreLib.c_addsub_v10_0_comp.all;

--core_if on entity c_addsub_v10_0_xst
  entity c_addsub_v10_0_xst is
    GENERIC (
      C_VERBOSITY           : integer := 0;
      C_XDEVICEFAMILY       : string  := "no_family";
      C_IMPLEMENTATION      : integer := 0;
      C_A_WIDTH             : integer := 15;
      C_B_WIDTH             : integer := 15;
      C_OUT_WIDTH           : integer := 16;
      C_CE_OVERRIDES_SCLR   : integer := 0;            -- replaces c_sync_enable
      C_A_TYPE              : integer := 0;
      C_B_TYPE              : integer := 0;
      C_LATENCY             : integer := 1;
      C_ADD_MODE            : integer := 0;
      C_B_CONSTANT          : integer := 0;
      C_B_VALUE             : string  := "";
      C_AINIT_VAL           : string  := "";
      C_SINIT_VAL           : string  := "";
      C_CE_OVERRIDES_BYPASS : integer := 0;            -- replaces c_bypass_enable
      C_BYPASS_LOW          : integer := 0;
      C_SCLR_OVERRIDES_SSET : integer := 0;            -- replaces c_sync_priority
      C_HAS_C_IN            : integer := 0;
      C_HAS_C_OUT           : integer := 0;            -- may be registered in step with c_latency
      C_BORROW_LOW          : integer := 1;            -- only applies to implementation = 1
--      C_HAS_OVFL            : integer := 0;            -- may be registered in step with c_latency
      C_HAS_CE              : integer := 0;
      C_HAS_BYPASS          : integer := 0;
      C_HAS_SCLR            : integer := 0;
      C_HAS_SSET            : integer := 0;
      C_HAS_SINIT           : integer := 0
      );
    PORT (
      A      : in  std_logic_vector(C_A_WIDTH-1 downto 0)     := (others => '0');
      B      : in  std_logic_vector(C_B_WIDTH-1 downto 0)     := (others => '0');
      CLK    : in  std_logic                                  := '0';
      ADD    : in  std_logic                                  := '0';
      C_IN   : in  std_logic                                  := '0';
      CE     : in  std_logic                                  := '1';
      BYPASS : in  std_logic                                  := '0';
      SCLR   : in  std_logic                                  := '0';
      SSET   : in  std_logic                                  := '0';
      SINIT  : in  std_logic                                  := '0';
--      OVFL   : out std_logic                                  := '0';
      C_OUT  : out std_logic                                  := '0';
      S      : out std_logic_vector(C_OUT_WIDTH - 1 downto 0) := (others => '0')
      );
--core_if off
end entity c_addsub_v10_0_xst;

architecture behavioral of c_addsub_v10_0_xst is

begin  -- architecture behavioral

  --core_if on instance i_behv c_addsub_v10_0
  i_behv : c_addsub_v10_0
    GENERIC MAP (
      C_VERBOSITY           => C_VERBOSITY,
      C_XDEVICEFAMILY       => C_XDEVICEFAMILY,
      C_IMPLEMENTATION      => C_IMPLEMENTATION,
      C_A_WIDTH             => C_A_WIDTH,
      C_B_WIDTH             => C_B_WIDTH,
      C_OUT_WIDTH           => C_OUT_WIDTH,
      C_CE_OVERRIDES_SCLR   => C_CE_OVERRIDES_SCLR,
      C_A_TYPE              => C_A_TYPE,
      C_B_TYPE              => C_B_TYPE,
      C_LATENCY             => C_LATENCY,
      C_ADD_MODE            => C_ADD_MODE,
      C_B_CONSTANT          => C_B_CONSTANT,
      C_B_VALUE             => C_B_VALUE,
      C_AINIT_VAL           => C_AINIT_VAL,
      C_SINIT_VAL           => C_SINIT_VAL,
      C_CE_OVERRIDES_BYPASS => C_CE_OVERRIDES_BYPASS,
      C_BYPASS_LOW          => C_BYPASS_LOW,
      C_SCLR_OVERRIDES_SSET => C_SCLR_OVERRIDES_SSET,
      C_HAS_C_IN            => C_HAS_C_IN,
      C_HAS_C_OUT           => C_HAS_C_OUT,
      C_BORROW_LOW          => C_BORROW_LOW,
--      C_HAS_OVFL            => C_HAS_OVFL,
      C_HAS_CE              => C_HAS_CE,
      C_HAS_BYPASS          => C_HAS_BYPASS,
      C_HAS_SCLR            => C_HAS_SCLR,
      C_HAS_SSET            => C_HAS_SSET,
      C_HAS_SINIT           => C_HAS_SINIT
      )
    PORT MAP (
      A      => A,
      B      => B,
      CLK    => CLK,
      ADD    => ADD,
      C_IN   => C_IN,
      CE     => CE,
      BYPASS => BYPASS,
      SCLR   => SCLR,
      SSET   => SSET,
      SINIT  => SINIT,
--      OVFL   => OVFL,
      C_OUT  => C_OUT,
      S      => S
      );

--core_if off      

end architecture behavioral;





