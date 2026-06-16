library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity neg0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(11 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity neg0;

architecture rtl of neg0 is
    signal res_overflow_0_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal op_0 : std_logic_vector(31 downto 0);
    signal res_arith_0 : std_logic_vector(31 downto 0);
    signal res_quant_0 : std_logic_vector(31 downto 0);
    signal res_overflow_0 : std_logic_vector(31 downto 0);

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                res_overflow_0_reg_0 <= res_overflow_0;
            end if;
        end if;
    end process;
    op_0 <= p_0_in;
    p_0_out <= res_overflow_0_reg_0;
    res_arith_0 <= (not op_0(31)) & op_0(30 downto 0);
    res_quant_0 <= res_arith_0(31 downto 0);
    res_overflow_0 <= res_quant_0(31 downto 0);

end architecture rtl;

