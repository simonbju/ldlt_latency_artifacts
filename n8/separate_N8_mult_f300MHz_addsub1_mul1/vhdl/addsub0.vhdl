library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addsub0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(8 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_1_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity addsub0;

architecture rtl of addsub0 is
    signal res_overflow_0_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal p_0_in_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal p_1_in_reg_0 : std_logic_vector(31 downto 0) := (others => '0');
    signal op_0 : std_logic_vector(31 downto 0);
    signal op_1 : std_logic_vector(31 downto 0);
    signal is_add : std_logic := '0';
    signal is_add_comb : std_logic;
    signal mul_j : std_logic := '0';
    signal mul_j_comb : std_logic;
    signal shift_output : signed(0 downto 0) := (others => '0');
    signal shift_output_comb : signed(0 downto 0);
    constant WL_IS_ADD_INT : integer := 1;
    constant WL_MUL_J_INT : integer := 1;
    constant WL_SHIFT_OUTPUT_INT : integer := 1;
    component fp_addsub
        port (
            aclk : in std_logic;
            s_axis_a_tdata : in std_logic_vector(31 downto 0);
            s_axis_a_tvalid : in std_logic;
            s_axis_b_tdata : in std_logic_vector(31 downto 0);
            s_axis_b_tvalid : in std_logic;
            s_axis_operation_tdata : in std_logic_vector(7 downto 0);
            s_axis_operation_tvalid : in std_logic;
            m_axis_result_tdata : out std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic
        );
    end component fp_addsub;
    signal res_arith_0 : std_logic_vector(31 downto 0);
    signal fp_result_tvalid : std_logic;
    signal fp_operation : std_logic_vector(7 downto 0);
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
                is_add <= is_add_comb;
                mul_j <= mul_j_comb;
                shift_output <= shift_output_comb;
            end if;
        end if;
    end process;
    op_0 <= p_0_in_reg_0;
    op_1 <= p_1_in_reg_0;
    with schedule_cnt select
        is_add_comb <=
            '0' when "001111000",
            '0' when "001111001",
            '0' when "001111011",
            '0' when "001111010",
            '0' when "001111100",
            '1' when "001111110",
            '1' when "001111101",
            '1' when "001111111",
            '0' when "010000001",
            '1' when "010000000",
            '1' when "010000010",
            '1' when "010000100",
            '1' when "010000011",
            '1' when "010000101",
            '0' when "001110100",
            '0' when "001110011",
            '1' when "010000111",
            '1' when "010000110",
            '1' when "010001010",
            '1' when "010001110",
            '1' when "010001111",
            '0' when "000011111",
            '0' when "000100000",
            '0' when "010010111",
            '0' when "000100001",
            '0' when "000100010",
            '0' when "010011001",
            '0' when "010011000",
            '0' when "010011011",
            '0' when "000100011",
            '0' when "010011010",
            '0' when "000100101",
            '0' when "000100100",
            '0' when "010011101",
            '0' when "010011100",
            '0' when "000100110",
            '0' when "010011111",
            '0' when "010011110",
            '1' when "010100000",
            '0' when "000100111",
            '0' when "000101001",
            '1' when "010100010",
            '0' when "000101000",
            '1' when "010100001",
            '0' when "010100011",
            '0' when "000101010",
            '1' when "010100101",
            '1' when "010100100",
            '0' when "000101100",
            '1' when "010100110",
            '0' when "000101011",
            '0' when "000101101",
            '1' when "010101000",
            '1' when "010100111",
            '1' when "010101001",
            '0' when "000101111",
            '0' when "000101110",
            '0' when "000110000",
            '1' when "010101010",
            '1' when "010101100",
            '0' when "000110010",
            '1' when "010101011",
            '0' when "000110001",
            '0' when "000110011",
            '0' when "001110110",
            '1' when "010110001",
            '1' when "010110010",
            '0' when "001110101",
            '1' when "010110011",
            '0' when "000110101",
            '0' when "000110100",
            '1' when "010110101",
            '0' when "000111000",
            '1' when "010110100",
            '0' when "000111001",
            '1' when "010110110",
            '0' when "000110110",
            '0' when "000110111",
            '0' when "001000000",
            '0' when "010111111",
            '0' when "011000000",
            '0' when "011000010",
            '0' when "011000001",
            '0' when "001000111",
            '0' when "011000011",
            '0' when "001001001",
            '0' when "001001000",
            '1' when "011000101",
            '0' when "011000100",
            '0' when "001001010",
            '1' when "011000110",
            '0' when "001001100",
            '0' when "001001101",
            '1' when "011000111",
            '0' when "001001011",
            '1' when "011001001",
            '1' when "011001000",
            '0' when "001001110",
            '1' when "011001010",
            '1' when "011001100",
            '0' when "001010000",
            '1' when "011001011",
            '1' when "011001101",
            '0' when "001001111",
            '1' when "011001110",
            '0' when "001010010",
            '0' when "001010001",
            '1' when "011001111",
            '0' when "001010011",
            '1' when "011010000",
            '0' when "001010101",
            '0' when "001010110",
            '0' when "001010100",
            '0' when "001010111",
            '1' when "011011001",
            '0' when "001011001",
            '1' when "011011000",
            '0' when "001011000",
            '1' when "011011011",
            '1' when "001011010",
            '1' when "011011100",
            '0' when "001110111",
            '1' when "011011110",
            '1' when "011011101",
            '1' when "001011100",
            '1' when "011011111",
            '0' when "001011011",
            '0' when "001011110",
            '1' when "001011111",
            '1' when "011100000",
            '1' when "001011101",
            '1' when "011100011",
            '1' when "001100001",
            '1' when "011100100",
            '1' when "001100000",
            '0' when "011100111",
            '0' when "011101001",
            '0' when "011101000",
            '1' when "011101010",
            '1' when "100000011",
            '1' when "001101000",
            '1' when "011101100",
            '1' when "100000010",
            '1' when "011101011",
            '1' when "011101101",
            '1' when "100000100",
            '1' when "011101111",
            '1' when "011101110",
            '1' when "100000110",
            '1' when "011110000",
            '1' when "100001011",
            '1' when "011110001",
            '1' when "100001010",
            '0' when "001110000",
            '1' when "100001000",
            '0' when "001101111",
            '0' when "001110001",
            '1' when "011110011",
            '1' when "011110010",
            '0' when "100001111",
            '0' when "001110010",
            '1' when "100001110",
            '1' when "100010100",
            '1' when "100010111",
            '1' when "100010110",
            '1' when "100010101",
            '1' when "100011001",
            '1' when "100011000",
            '1' when "100011010",
            '1' when "100011011",
            '1' when "100110010",
            '1' when "100110001",
            '1' when "100110101",
            '1' when "100110100",
            '1' when "100110111",
            '1' when "100110110",
            '1' when "100111011",
            '1' when "100111000",
            '1' when "100111010",
            '1' when "100111110",
            '1' when "100111101",
            '1' when "101000010",
            '1' when "100111111",
            '1' when "101000001",
            '1' when "101000101",
            '1' when "101000100",
            '1' when "101000111",
            '1' when "101000110",
            '1' when "101001001",
            '1' when "101001000",
            '1' when "100000001",
            '1' when "101001010",
            '1' when "101101001",
            '1' when "101100111",
            '1' when "101101011",
            '1' when "101101101",
            '1' when "101101010",
            '1' when "101101100",
            '1' when "101101110",
            '1' when "101110100",
            '1' when "101110101",
            '1' when "101111000",
            '1' when "101110110",
            '1' when "101110111",
            '1' when "101111010",
            '1' when "101111100",
            '1' when "101111001",
            '1' when "101111011",
            '1' when "101111111",
            '1' when "101111101",
            '1' when "101111110",
            '1' when "110000000",
            '1' when "110000001",
            '1' when "110000010",
            '1' when "110000011",
            '1' when "110000100",
            '1' when "110000101",
            '1' when "110000110",
            '1' when "100010001",
            '1' when "110000111",
            '1' when "100010010",
            '1' when "100010011",
            '1' when "110001000",
            '1' when "100010000",
            '-' when others;

    mul_j_comb <= '0';

    shift_output_comb <= b"0";

    p_0_out <= res_overflow_0_reg_0;
    fp_operation <= "0000000" & not is_add;
    u_fp_addsub : fp_addsub
        port map (
            aclk => clk,
            s_axis_a_tdata => op_0,
            s_axis_a_tvalid => en,
            s_axis_b_tdata => op_1,
            s_axis_b_tvalid => en,
            s_axis_operation_tdata => fp_operation,
            s_axis_operation_tvalid => en,
            m_axis_result_tdata => res_arith_0,
            m_axis_result_tvalid => fp_result_tvalid
        );
    res_quant_0 <= res_arith_0(31 downto 0);
    res_overflow_0 <= res_quant_0(31 downto 0);

end architecture rtl;

