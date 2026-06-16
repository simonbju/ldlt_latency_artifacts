library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(7 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_1_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity mul0;

architecture rtl of mul0 is
    signal res_overflow_0_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal p_0_in_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal p_1_in_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal op_0 : std_logic_vector(31 downto 0);
    signal op_1 : std_logic_vector(31 downto 0);
    component fp_mul
        port (
            aclk : in std_logic;
            s_axis_a_tdata : in std_logic_vector(31 downto 0);
            s_axis_a_tvalid : in std_logic;
            s_axis_b_tdata : in std_logic_vector(31 downto 0);
            s_axis_b_tvalid : in std_logic;
            m_axis_result_tdata : out std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic
        );
    end component fp_mul;
    signal res_arith_0 : std_logic_vector(31 downto 0);
    signal fp_result_tvalid : std_logic;
    signal res_quant_0 : std_logic_vector(31 downto 0);
    signal res_overflow_0 : std_logic_vector(31 downto 0);

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                res_overflow_0_reg_0 <= res_overflow_0;
                p_0_in_reg_0 <= p_0_in;
                p_1_in_reg_0 <= p_1_in;
            end if;
        end if;
    end process;
    op_0 <= p_0_in_reg_0;
    op_1 <= p_1_in_reg_0;
    p_0_out <= res_overflow_0_reg_0;
    u_fp_mul : fp_mul
        port map (
            aclk => clk,
            s_axis_a_tdata => op_0,
            s_axis_a_tvalid => en,
            s_axis_b_tdata => op_1,
            s_axis_b_tvalid => en,
            m_axis_result_tdata => res_arith_0,
            m_axis_result_tvalid => fp_result_tvalid
        );
    res_quant_0 <= res_arith_0(31 downto 0);
    res_overflow_0 <= res_quant_0(31 downto 0);

end architecture rtl;

