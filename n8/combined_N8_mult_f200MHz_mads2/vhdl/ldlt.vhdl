library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ldlt is
    port (
        clk : in std_logic;
        rst : in std_logic;
        in0_0_in : in std_logic_vector(31 downto 0);
        out0_0_out : out std_logic_vector(31 downto 0)
    );
end entity ldlt;

architecture rtl of ldlt is
    -- Component declaration
    component mads0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_1_in : in std_logic_vector(31 downto 0);
            p_2_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component mads1
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_1_in : in std_logic_vector(31 downto 0);
            p_2_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component out0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component neg0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component rec0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component in0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory1
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory2
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory3
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory4
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory5
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory6
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(8 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    -- mads0 signals
    signal mads0_0_in : std_logic_vector(31 downto 0);
    signal mads0_1_in : std_logic_vector(31 downto 0);
    signal mads0_2_in : std_logic_vector(31 downto 0);
    signal mads0_0_out : std_logic_vector(31 downto 0);

    -- mads1 signals
    signal mads1_0_in : std_logic_vector(31 downto 0);
    signal mads1_1_in : std_logic_vector(31 downto 0);
    signal mads1_2_in : std_logic_vector(31 downto 0);
    signal mads1_0_out : std_logic_vector(31 downto 0);

    -- out0 signals
    signal out0_0_in : std_logic_vector(31 downto 0);

    -- neg0 signals
    signal neg0_0_in : std_logic_vector(31 downto 0);
    signal neg0_0_out : std_logic_vector(31 downto 0);

    -- rec0 signals
    signal rec0_0_in : std_logic_vector(31 downto 0);
    signal rec0_0_out : std_logic_vector(31 downto 0);

    -- in0 signals
    signal in0_0_out : std_logic_vector(31 downto 0);

    -- memory0 signals
    signal memory0_0_in : std_logic_vector(31 downto 0);
    signal memory0_0_out : std_logic_vector(31 downto 0);

    -- memory1 signals
    signal memory1_0_in : std_logic_vector(31 downto 0);
    signal memory1_0_out : std_logic_vector(31 downto 0);

    -- memory2 signals
    signal memory2_0_in : std_logic_vector(31 downto 0);
    signal memory2_0_out : std_logic_vector(31 downto 0);

    -- memory3 signals
    signal memory3_0_in : std_logic_vector(31 downto 0);
    signal memory3_0_out : std_logic_vector(31 downto 0);

    -- memory4 signals
    signal memory4_0_in : std_logic_vector(31 downto 0);
    signal memory4_0_out : std_logic_vector(31 downto 0);

    -- memory5 signals
    signal memory5_0_in : std_logic_vector(31 downto 0);
    signal memory5_0_out : std_logic_vector(31 downto 0);

    -- memory6 signals
    signal memory6_0_in : std_logic_vector(31 downto 0);
    signal memory6_0_out : std_logic_vector(31 downto 0);

    signal schedule_cnt : unsigned(8 downto 0) := (others => '0');

    -- Internal signals for pipelined I/O
    signal in0_0_in_internal : std_logic_vector(31 downto 0);
    signal out0_0_out_internal : std_logic_vector(31 downto 0);

    -- Multiplexer control signals
    signal mads0_0_sel : std_logic_vector(1 downto 0);
    signal mads0_0_sel_next : std_logic_vector(1 downto 0);
    signal mads0_1_sel : std_logic_vector(2 downto 0);
    signal mads0_1_sel_next : std_logic_vector(2 downto 0);
    signal mads0_2_sel : std_logic_vector(2 downto 0);
    signal mads0_2_sel_next : std_logic_vector(2 downto 0);
    signal mads1_0_sel : std_logic_vector(1 downto 0);
    signal mads1_0_sel_next : std_logic_vector(1 downto 0);
    signal mads1_1_sel : std_logic_vector(2 downto 0);
    signal mads1_1_sel_next : std_logic_vector(2 downto 0);
    signal mads1_2_sel : std_logic_vector(2 downto 0);
    signal mads1_2_sel_next : std_logic_vector(2 downto 0);
    signal out0_0_sel : std_logic_vector(1 downto 0);
    signal out0_0_sel_next : std_logic_vector(1 downto 0);
    signal neg0_0_sel : std_logic_vector(1 downto 0);
    signal neg0_0_sel_next : std_logic_vector(1 downto 0);
    signal rec0_0_sel : std_logic_vector(0 downto 0);
    signal rec0_0_sel_next : std_logic_vector(0 downto 0);
    signal memory0_0_sel : std_logic_vector(1 downto 0);
    signal memory0_0_sel_next : std_logic_vector(1 downto 0);
    signal memory1_0_sel : std_logic_vector(0 downto 0);
    signal memory1_0_sel_next : std_logic_vector(0 downto 0);
    signal memory2_0_sel : std_logic_vector(1 downto 0);
    signal memory2_0_sel_next : std_logic_vector(1 downto 0);
    signal memory3_0_sel : std_logic_vector(0 downto 0);
    signal memory3_0_sel_next : std_logic_vector(0 downto 0);
    signal memory4_0_sel : std_logic_vector(1 downto 0);
    signal memory4_0_sel_next : std_logic_vector(1 downto 0);
    signal memory5_0_sel : std_logic_vector(1 downto 0);
    signal memory5_0_sel_next : std_logic_vector(1 downto 0);
    signal memory6_0_sel : std_logic_vector(1 downto 0);
    signal memory6_0_sel_next : std_logic_vector(1 downto 0);

begin
    -- Pipelining of I/O
    input_reg_proc: process(clk)
    begin
        if rising_edge(clk) then
            in0_0_in_internal <= in0_0_in;
        end if;
    end process input_reg_proc;

    output_reg_proc: process(clk)
    begin
        if rising_edge(clk) then
            out0_0_out <= out0_0_out_internal;
        end if;
    end process output_reg_proc;

    -- Component instantiation
    mads0_inst: mads0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => mads0_0_in,
            p_1_in => mads0_1_in,
            p_2_in => mads0_2_in,
            p_0_out => mads0_0_out
        );

    mads1_inst: mads1
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => mads1_0_in,
            p_1_in => mads1_1_in,
            p_2_in => mads1_2_in,
            p_0_out => mads1_0_out
        );

    out0_inst: out0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => out0_0_in,
            p_0_out => out0_0_out_internal
        );

    neg0_inst: neg0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => neg0_0_in,
            p_0_out => neg0_0_out
        );

    rec0_inst: rec0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => rec0_0_in,
            p_0_out => rec0_0_out
        );

    in0_inst: in0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => in0_0_in_internal,
            p_0_out => in0_0_out
        );

    memory0_inst: memory0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory0_0_in,
            p_0_out => memory0_0_out
        );

    memory1_inst: memory1
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory1_0_in,
            p_0_out => memory1_0_out
        );

    memory2_inst: memory2
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory2_0_in,
            p_0_out => memory2_0_out
        );

    memory3_inst: memory3
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory3_0_in,
            p_0_out => memory3_0_out
        );

    memory4_inst: memory4
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory4_0_in,
            p_0_out => memory4_0_out
        );

    memory5_inst: memory5
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory5_0_in,
            p_0_out => memory5_0_out
        );

    memory6_inst: memory6
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => memory6_0_in,
            p_0_out => memory6_0_out
        );

    -- Schedule counter
    schedule_cnt_proc: process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                schedule_cnt <= (others => '0');
            else
                if schedule_cnt = 271 then
                    schedule_cnt <= (others => '0');
                else
                    schedule_cnt <= schedule_cnt + 1;
                end if;
            end if;
        end if;
    end process schedule_cnt_proc;

    -- Multiplexer control signal generation
    with schedule_cnt select
        mads0_0_sel_next <=
            "10" when "000010111",
            "10" when "000011000",
            "01" when "000011001",
            "01" when "000011010",
            "01" when "000011011",
            "10" when "000011100",
            "10" when "000011101",
            "10" when "000011110",
            "10" when "000011111",
            "10" when "000100000",
            "10" when "000100001",
            "10" when "000100010",
            "10" when "000100011",
            "10" when "000100100",
            "00" when "000110100",
            "00" when "000110101",
            "00" when "000110110",
            "00" when "000110111",
            "10" when "000111000",
            "00" when "000111001",
            "01" when "000111010",
            "01" when "000111011",
            "00" when "000111100",
            "01" when "000111101",
            "00" when "000111110",
            "00" when "000111111",
            "00" when "001000000",
            "00" when "001000001",
            "00" when "001010001",
            "10" when "001010010",
            "00" when "001010011",
            "00" when "001010100",
            "00" when "001010101",
            "00" when "001010110",
            "00" when "001010111",
            "10" when "001011000",
            "10" when "001011001",
            "10" when "001011010",
            "00" when "001011011",
            "01" when "001011100",
            "00" when "001011101",
            "10" when "001011110",
            "01" when "001101110",
            "01" when "001101111",
            "00" when "001110000",
            "00" when "001110001",
            "00" when "001110010",
            "10" when "001110011",
            "01" when "001110100",
            "00" when "001110101",
            "10" when "001110110",
            "10" when "001110111",
            "00" when "001111000",
            "10" when "001111001",
            "01" when "001111010",
            "00" when "001111011",
            "01" when "010001011",
            "00" when "010001100",
            "01" when "010001101",
            "00" when "010001110",
            "10" when "010001111",
            "00" when "010010000",
            "10" when "010010001",
            "10" when "010010010",
            "10" when "010010011",
            "10" when "010010100",
            "00" when "010010110",
            "00" when "010010111",
            "00" when "010011000",
            "00" when "010101000",
            "10" when "010101001",
            "00" when "010101010",
            "10" when "010101011",
            "01" when "010101100",
            "10" when "010101101",
            "10" when "010101111",
            "01" when "010110011",
            "00" when "010110100",
            "10" when "010110101",
            "00" when "010110110",
            "00" when "010110111",
            "10" when "010111000",
            "10" when "011000101",
            "00" when "011000110",
            "00" when "011000111",
            "00" when "011001011",
            "10" when "011001100",
            "10" when "011010001",
            "01" when "011010010",
            "01" when "011010011",
            "10" when "011010100",
            "10" when "011010101",
            "00" when "011010110",
            "00" when "011010111",
            "10" when "011011000",
            "10" when "011101001",
            "00" when "011101011",
            "10" when "011101101",
            "00" when "011101111",
            "00" when "011110000",
            "10" when "011110001",
            "00" when "011110010",
            "01" when "011110011",
            "10" when "011110100",
            "01" when "011110101",
            "00" when "011110110",
            "00" when "011110111",
            "00" when "011111000",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads0_0_sel <= mads0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mads0_1_sel_next <=
            "101" when "000001100",
            "101" when "000001101",
            "100" when "000010100",
            "011" when "000010101",
            "011" when "000010110",
            "101" when "000010111",
            "101" when "000011000",
            "100" when "000011001",
            "100" when "000011010",
            "010" when "000011011",
            "010" when "000011100",
            "010" when "000011101",
            "010" when "000011110",
            "101" when "000011111",
            "101" when "000100000",
            "101" when "000100001",
            "011" when "000101001",
            "011" when "000101010",
            "011" when "000101011",
            "010" when "000101100",
            "000" when "000101101",
            "000" when "000110001",
            "101" when "000110010",
            "101" when "000110011",
            "011" when "000110100",
            "011" when "000110101",
            "101" when "000110110",
            "101" when "000110111",
            "011" when "000111000",
            "011" when "000111001",
            "011" when "000111010",
            "100" when "000111011",
            "011" when "000111100",
            "110" when "000111101",
            "101" when "000111110",
            "101" when "001000110",
            "100" when "001000111",
            "010" when "001001000",
            "101" when "001001001",
            "000" when "001001010",
            "000" when "001001110",
            "101" when "001001111",
            "100" when "001010000",
            "101" when "001010001",
            "101" when "001010010",
            "100" when "001010011",
            "100" when "001010100",
            "000" when "001010101",
            "100" when "001010110",
            "011" when "001010111",
            "000" when "001011000",
            "011" when "001011001",
            "101" when "001011010",
            "000" when "001011011",
            "011" when "001100011",
            "100" when "001100100",
            "010" when "001100101",
            "010" when "001100110",
            "100" when "001100111",
            "000" when "001101000",
            "000" when "001101011",
            "011" when "001101100",
            "101" when "001101101",
            "100" when "001101110",
            "100" when "001101111",
            "100" when "001110000",
            "000" when "001110001",
            "000" when "001110010",
            "011" when "001110011",
            "000" when "001110100",
            "000" when "001110101",
            "110" when "001110110",
            "011" when "001110111",
            "000" when "001111000",
            "000" when "010000000",
            "110" when "010000001",
            "101" when "010000010",
            "101" when "010000011",
            "101" when "010000100",
            "010" when "010000101",
            "000" when "010000110",
            "000" when "010000111",
            "011" when "010001000",
            "101" when "010001001",
            "101" when "010001010",
            "011" when "010001011",
            "011" when "010001100",
            "100" when "010001101",
            "100" when "010001110",
            "011" when "010001111",
            "011" when "010010000",
            "000" when "010010001",
            "000" when "010010010",
            "110" when "010010011",
            "110" when "010010100",
            "101" when "010010101",
            "100" when "010011101",
            "110" when "010011110",
            "101" when "010011111",
            "101" when "010100000",
            "100" when "010100001",
            "100" when "010100010",
            "100" when "010100011",
            "010" when "010100100",
            "011" when "010100101",
            "100" when "010100110",
            "000" when "010100111",
            "000" when "010101000",
            "011" when "010101001",
            "011" when "010101010",
            "010" when "010101011",
            "001" when "010101100",
            "000" when "010101101",
            "000" when "010101110",
            "000" when "010101111",
            "110" when "010110000",
            "110" when "010110001",
            "000" when "010110010",
            "001" when "010110011",
            "100" when "010110100",
            "011" when "010110101",
            "110" when "010111010",
            "010" when "010111011",
            "101" when "010111100",
            "101" when "010111101",
            "101" when "010111110",
            "101" when "010111111",
            "101" when "011000000",
            "010" when "011000001",
            "011" when "011000010",
            "011" when "011000011",
            "011" when "011000100",
            "010" when "011000101",
            "010" when "011000110",
            "101" when "011000111",
            "100" when "011001000",
            "000" when "011001001",
            "000" when "011001010",
            "000" when "011001011",
            "000" when "011001100",
            "000" when "011001101",
            "001" when "011001110",
            "001" when "011001111",
            "000" when "011010000",
            "110" when "011010001",
            "000" when "011010010",
            "100" when "011010011",
            "011" when "011010100",
            "000" when "011010101",
            "010" when "011010111",
            "101" when "011011000",
            "101" when "011011001",
            "101" when "011011010",
            "010" when "011011011",
            "010" when "011011100",
            "010" when "011011101",
            "101" when "011011110",
            "101" when "011011111",
            "101" when "011100000",
            "010" when "011100001",
            "010" when "011100010",
            "101" when "011100011",
            "101" when "011100100",
            "000" when "011100101",
            "110" when "011100110",
            "000" when "011100111",
            "001" when "011101000",
            "000" when "011101001",
            "001" when "011101010",
            "000" when "011101011",
            "001" when "011101100",
            "011" when "011101101",
            "100" when "011101110",
            "011" when "011101111",
            "100" when "011110000",
            "000" when "011110001",
            "100" when "011110010",
            "100" when "011110011",
            "110" when "011110100",
            "000" when "011110101",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads0_1_sel <= mads0_1_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mads0_2_sel_next <=
            "011" when "000001100",
            "000" when "000001101",
            "110" when "000010100",
            "000" when "000010101",
            "001" when "000010110",
            "000" when "000010111",
            "111" when "000011000",
            "000" when "000011001",
            "000" when "000011010",
            "000" when "000011011",
            "111" when "000011100",
            "000" when "000011101",
            "111" when "000011110",
            "001" when "000011111",
            "001" when "000100000",
            "111" when "000100001",
            "011" when "000101001",
            "000" when "000101010",
            "000" when "000101011",
            "000" when "000101100",
            "010" when "000101101",
            "110" when "000110001",
            "000" when "000110010",
            "001" when "000110011",
            "000" when "000110100",
            "001" when "000110101",
            "000" when "000110110",
            "001" when "000110111",
            "000" when "000111000",
            "001" when "000111001",
            "111" when "000111010",
            "010" when "000111011",
            "101" when "000111100",
            "010" when "000111101",
            "010" when "000111110",
            "011" when "001000110",
            "000" when "001000111",
            "000" when "001001000",
            "000" when "001001001",
            "101" when "001001010",
            "110" when "001001110",
            "001" when "001001111",
            "100" when "001010000",
            "000" when "001010001",
            "100" when "001010010",
            "000" when "001010011",
            "100" when "001010100",
            "101" when "001010101",
            "100" when "001010110",
            "101" when "001010111",
            "101" when "001011000",
            "101" when "001011001",
            "010" when "001011010",
            "010" when "001011011",
            "011" when "001100011",
            "000" when "001100100",
            "000" when "001100101",
            "000" when "001100110",
            "000" when "001100111",
            "010" when "001101000",
            "110" when "001101011",
            "000" when "001101100",
            "100" when "001101101",
            "001" when "001101110",
            "100" when "001101111",
            "000" when "001110000",
            "010" when "001110001",
            "101" when "001110010",
            "010" when "001110011",
            "010" when "001110100",
            "101" when "001110101",
            "101" when "001110110",
            "010" when "001110111",
            "101" when "001111000",
            "011" when "010000000",
            "000" when "010000001",
            "000" when "010000010",
            "000" when "010000011",
            "000" when "010000100",
            "000" when "010000101",
            "101" when "010000110",
            "010" when "010000111",
            "110" when "010001000",
            "100" when "010001001",
            "100" when "010001010",
            "010" when "010001011",
            "001" when "010001100",
            "111" when "010001101",
            "001" when "010001110",
            "111" when "010001111",
            "001" when "010010000",
            "111" when "010010001",
            "111" when "010010010",
            "001" when "010010011",
            "010" when "010010100",
            "111" when "010010101",
            "011" when "010011101",
            "000" when "010011110",
            "000" when "010011111",
            "000" when "010100000",
            "000" when "010100001",
            "000" when "010100010",
            "000" when "010100011",
            "000" when "010100100",
            "110" when "010100101",
            "100" when "010100110",
            "001" when "010100111",
            "101" when "010101000",
            "111" when "010101001",
            "010" when "010101010",
            "000" when "010101011",
            "010" when "010101100",
            "101" when "010101101",
            "001" when "010101110",
            "010" when "010101111",
            "001" when "010110000",
            "001" when "010110001",
            "111" when "010110010",
            "111" when "010110011",
            "010" when "010110100",
            "111" when "010110101",
            "011" when "010111010",
            "000" when "010111011",
            "000" when "010111100",
            "000" when "010111101",
            "000" when "010111110",
            "000" when "010111111",
            "000" when "011000000",
            "000" when "011000001",
            "110" when "011000010",
            "101" when "011000011",
            "101" when "011000100",
            "000" when "011000101",
            "000" when "011000110",
            "000" when "011000111",
            "111" when "011001000",
            "111" when "011001001",
            "010" when "011001010",
            "101" when "011001011",
            "010" when "011001100",
            "111" when "011001101",
            "010" when "011001110",
            "101" when "011001111",
            "101" when "011010000",
            "101" when "011010001",
            "111" when "011010010",
            "010" when "011010011",
            "101" when "011010100",
            "101" when "011010101",
            "011" when "011010111",
            "000" when "011011000",
            "000" when "011011001",
            "000" when "011011010",
            "000" when "011011011",
            "000" when "011011100",
            "000" when "011011101",
            "000" when "011011110",
            "000" when "011011111",
            "000" when "011100000",
            "000" when "011100001",
            "000" when "011100010",
            "000" when "011100011",
            "000" when "011100100",
            "001" when "011100101",
            "001" when "011100110",
            "101" when "011100111",
            "001" when "011101000",
            "101" when "011101001",
            "001" when "011101010",
            "010" when "011101011",
            "001" when "011101100",
            "101" when "011101101",
            "101" when "011101110",
            "010" when "011101111",
            "010" when "011110000",
            "010" when "011110001",
            "101" when "011110010",
            "010" when "011110011",
            "010" when "011110100",
            "010" when "011110101",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads0_2_sel <= mads0_2_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mads1_0_sel_next <=
            "10" when "000010111",
            "10" when "000011000",
            "10" when "000011001",
            "10" when "000011010",
            "10" when "000011011",
            "10" when "000011100",
            "10" when "000011101",
            "10" when "000011110",
            "10" when "000011111",
            "10" when "000100000",
            "10" when "000100001",
            "10" when "000100010",
            "10" when "000100011",
            "10" when "000101111",
            "00" when "000110100",
            "01" when "000110101",
            "10" when "000110110",
            "01" when "000110111",
            "00" when "000111000",
            "01" when "000111001",
            "01" when "000111010",
            "00" when "000111011",
            "01" when "000111100",
            "10" when "000111101",
            "00" when "000111110",
            "01" when "000111111",
            "00" when "001000000",
            "01" when "001000001",
            "10" when "001010001",
            "00" when "001010010",
            "10" when "001010011",
            "00" when "001010100",
            "10" when "001010101",
            "01" when "001010110",
            "01" when "001010111",
            "00" when "001011000",
            "00" when "001011001",
            "01" when "001011010",
            "10" when "001011011",
            "01" when "001011100",
            "10" when "001011101",
            "01" when "001011110",
            "10" when "001101110",
            "01" when "001101111",
            "10" when "001110000",
            "10" when "001110001",
            "00" when "001110010",
            "01" when "001110011",
            "00" when "001110100",
            "10" when "001110101",
            "10" when "001110110",
            "01" when "001110111",
            "10" when "001111000",
            "00" when "001111001",
            "10" when "001111010",
            "01" when "001111011",
            "00" when "010001011",
            "01" when "010001100",
            "00" when "010001101",
            "01" when "010001110",
            "01" when "010001111",
            "01" when "010010000",
            "10" when "010010001",
            "10" when "010010010",
            "01" when "010010011",
            "10" when "010010100",
            "10" when "010010101",
            "01" when "010010110",
            "01" when "010010111",
            "01" when "010011000",
            "10" when "010011001",
            "10" when "010101000",
            "01" when "010101001",
            "01" when "010101010",
            "00" when "010101011",
            "10" when "010101100",
            "00" when "010101101",
            "10" when "010101110",
            "10" when "010101111",
            "01" when "010110000",
            "01" when "010110011",
            "10" when "010110100",
            "01" when "010110101",
            "10" when "010110110",
            "10" when "010110111",
            "01" when "010111000",
            "00" when "011000101",
            "10" when "011000110",
            "00" when "011000111",
            "10" when "011001000",
            "00" when "011001100",
            "00" when "011001101",
            "10" when "011001110",
            "01" when "011010001",
            "00" when "011010010",
            "10" when "011010011",
            "00" when "011010100",
            "10" when "011010101",
            "01" when "011010110",
            "01" when "011010111",
            "10" when "011011000",
            "10" when "011101000",
            "10" when "011101001",
            "10" when "011101010",
            "01" when "011101110",
            "01" when "011101111",
            "10" when "011110000",
            "10" when "011110001",
            "10" when "011110010",
            "10" when "011110011",
            "10" when "011110100",
            "00" when "011110101",
            "10" when "011110110",
            "01" when "011110111",
            "01" when "011111000",
            "10" when "011111001",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads1_0_sel <= mads1_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mads1_1_sel_next <=
            "101" when "000001100",
            "100" when "000001101",
            "011" when "000001110",
            "011" when "000010011",
            "110" when "000010100",
            "110" when "000010101",
            "100" when "000010110",
            "110" when "000010111",
            "110" when "000011000",
            "101" when "000011001",
            "101" when "000011010",
            "101" when "000011011",
            "001" when "000011100",
            "001" when "000011101",
            "110" when "000011110",
            "110" when "000011111",
            "110" when "000100000",
            "110" when "000100001",
            "000" when "000101001",
            "110" when "000101010",
            "110" when "000101011",
            "110" when "000101100",
            "100" when "000110001",
            "100" when "000110010",
            "110" when "000110011",
            "100" when "000110100",
            "100" when "000110101",
            "110" when "000110110",
            "110" when "000110111",
            "110" when "000111000",
            "100" when "000111001",
            "100" when "000111010",
            "000" when "000111011",
            "010" when "000111100",
            "101" when "000111101",
            "101" when "000111110",
            "000" when "001000110",
            "110" when "001000111",
            "101" when "001001000",
            "110" when "001001001",
            "000" when "001001010",
            "110" when "001001110",
            "101" when "001001111",
            "101" when "001010000",
            "110" when "001010001",
            "110" when "001010010",
            "101" when "001010011",
            "101" when "001010100",
            "000" when "001010101",
            "010" when "001010110",
            "010" when "001010111",
            "100" when "001011000",
            "000" when "001011001",
            "100" when "001011010",
            "010" when "001011011",
            "000" when "001100011",
            "110" when "001100100",
            "110" when "001100101",
            "101" when "001100110",
            "101" when "001100111",
            "000" when "001101000",
            "000" when "001101001",
            "100" when "001101011",
            "110" when "001101100",
            "110" when "001101101",
            "101" when "001101110",
            "010" when "001101111",
            "010" when "001110000",
            "010" when "001110001",
            "000" when "001110010",
            "100" when "001110011",
            "100" when "001110100",
            "000" when "001110101",
            "000" when "001110110",
            "010" when "001110111",
            "010" when "001111000",
            "100" when "010000000",
            "110" when "010000001",
            "010" when "010000010",
            "110" when "010000011",
            "001" when "010000100",
            "001" when "010000101",
            "010" when "010000110",
            "000" when "010000111",
            "000" when "010001000",
            "000" when "010001001",
            "110" when "010001010",
            "100" when "010001011",
            "100" when "010001100",
            "101" when "010001101",
            "101" when "010001110",
            "100" when "010001111",
            "100" when "010010000",
            "010" when "010010001",
            "010" when "010010010",
            "100" when "010010011",
            "010" when "010010100",
            "101" when "010010101",
            "101" when "010010110",
            "100" when "010011101",
            "010" when "010011110",
            "110" when "010011111",
            "110" when "010100000",
            "110" when "010100001",
            "101" when "010100010",
            "010" when "010100011",
            "010" when "010100100",
            "101" when "010100101",
            "000" when "010100110",
            "000" when "010100111",
            "000" when "010101000",
            "100" when "010101001",
            "100" when "010101010",
            "100" when "010101011",
            "010" when "010101100",
            "100" when "010101101",
            "000" when "010101110",
            "000" when "010101111",
            "101" when "010110000",
            "100" when "010110001",
            "110" when "010110010",
            "010" when "010110011",
            "000" when "010110100",
            "010" when "010110101",
            "100" when "010111010",
            "001" when "010111011",
            "110" when "010111100",
            "110" when "010111101",
            "110" when "010111110",
            "110" when "010111111",
            "110" when "011000000",
            "110" when "011000001",
            "111" when "011000010",
            "100" when "011000011",
            "100" when "011000100",
            "100" when "011000101",
            "001" when "011000110",
            "110" when "011000111",
            "110" when "011001000",
            "101" when "011001001",
            "101" when "011001010",
            "010" when "011001011",
            "000" when "011001100",
            "000" when "011001101",
            "101" when "011001110",
            "111" when "011001111",
            "111" when "011010000",
            "100" when "011010001",
            "100" when "011010010",
            "000" when "011010011",
            "000" when "011010100",
            "010" when "011010101",
            "010" when "011010111",
            "110" when "011011000",
            "110" when "011011001",
            "110" when "011011010",
            "110" when "011011011",
            "001" when "011011100",
            "001" when "011011101",
            "001" when "011011110",
            "110" when "011011111",
            "110" when "011100000",
            "001" when "011100001",
            "001" when "011100010",
            "110" when "011100011",
            "001" when "011100100",
            "100" when "011100101",
            "111" when "011100110",
            "101" when "011100111",
            "000" when "011101000",
            "000" when "011101001",
            "000" when "011101010",
            "101" when "011101011",
            "111" when "011101100",
            "000" when "011101101",
            "100" when "011101110",
            "010" when "011101111",
            "000" when "011110000",
            "010" when "011110001",
            "000" when "011110010",
            "010" when "011110011",
            "000" when "011110100",
            "100" when "011110101",
            "000" when "011110110",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads1_1_sel <= mads1_1_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mads1_2_sel_next <=
            "011" when "000001100",
            "000" when "000001101",
            "000" when "000001110",
            "000" when "000010011",
            "110" when "000010100",
            "001" when "000010101",
            "111" when "000010110",
            "001" when "000010111",
            "000" when "000011000",
            "001" when "000011001",
            "111" when "000011010",
            "001" when "000011011",
            "001" when "000011100",
            "001" when "000011101",
            "000" when "000011110",
            "111" when "000011111",
            "000" when "000100000",
            "000" when "000100001",
            "011" when "000101001",
            "000" when "000101010",
            "000" when "000101011",
            "111" when "000101100",
            "110" when "000110001",
            "100" when "000110010",
            "100" when "000110011",
            "100" when "000110100",
            "100" when "000110101",
            "100" when "000110110",
            "100" when "000110111",
            "111" when "000111000",
            "100" when "000111001",
            "100" when "000111010",
            "010" when "000111011",
            "010" when "000111100",
            "010" when "000111101",
            "010" when "000111110",
            "011" when "001000110",
            "000" when "001000111",
            "000" when "001001000",
            "000" when "001001001",
            "010" when "001001010",
            "110" when "001001110",
            "000" when "001001111",
            "001" when "001010000",
            "001" when "001010001",
            "000" when "001010010",
            "001" when "001010011",
            "000" when "001010100",
            "010" when "001010101",
            "101" when "001010110",
            "010" when "001010111",
            "010" when "001011000",
            "010" when "001011001",
            "010" when "001011010",
            "101" when "001011011",
            "011" when "001100011",
            "000" when "001100100",
            "000" when "001100101",
            "000" when "001100110",
            "000" when "001100111",
            "100" when "001101000",
            "101" when "001101001",
            "110" when "001101011",
            "001" when "001101100",
            "000" when "001101101",
            "000" when "001101110",
            "010" when "001101111",
            "101" when "001110000",
            "100" when "001110001",
            "100" when "001110010",
            "101" when "001110011",
            "100" when "001110100",
            "100" when "001110101",
            "101" when "001110110",
            "010" when "001110111",
            "100" when "001111000",
            "011" when "010000000",
            "000" when "010000001",
            "000" when "010000010",
            "000" when "010000011",
            "000" when "010000100",
            "000" when "010000101",
            "000" when "010000110",
            "001" when "010000111",
            "110" when "010001000",
            "100" when "010001001",
            "100" when "010001010",
            "111" when "010001011",
            "101" when "010001100",
            "010" when "010001101",
            "101" when "010001110",
            "010" when "010001111",
            "101" when "010010000",
            "111" when "010010001",
            "111" when "010010010",
            "101" when "010010011",
            "010" when "010010100",
            "001" when "010010101",
            "001" when "010010110",
            "011" when "010011101",
            "000" when "010011110",
            "000" when "010011111",
            "000" when "010100000",
            "000" when "010100001",
            "000" when "010100010",
            "000" when "010100011",
            "000" when "010100100",
            "110" when "010100101",
            "010" when "010100110",
            "111" when "010100111",
            "100" when "010101000",
            "001" when "010101001",
            "100" when "010101010",
            "101" when "010101011",
            "111" when "010101100",
            "111" when "010101101",
            "100" when "010101110",
            "111" when "010101111",
            "101" when "010110000",
            "001" when "010110001",
            "100" when "010110010",
            "100" when "010110011",
            "010" when "010110100",
            "010" when "010110101",
            "011" when "010111010",
            "000" when "010111011",
            "000" when "010111100",
            "000" when "010111101",
            "000" when "010111110",
            "000" when "010111111",
            "000" when "011000000",
            "000" when "011000001",
            "111" when "011000010",
            "010" when "011000011",
            "010" when "011000100",
            "101" when "011000101",
            "000" when "011000110",
            "000" when "011000111",
            "000" when "011001000",
            "010" when "011001001",
            "010" when "011001010",
            "010" when "011001011",
            "101" when "011001100",
            "101" when "011001101",
            "101" when "011001110",
            "010" when "011001111",
            "111" when "011010000",
            "101" when "011010001",
            "010" when "011010010",
            "010" when "011010011",
            "111" when "011010100",
            "111" when "011010101",
            "011" when "011010111",
            "000" when "011011000",
            "000" when "011011001",
            "000" when "011011010",
            "000" when "011011011",
            "000" when "011011100",
            "000" when "011011101",
            "000" when "011011110",
            "000" when "011011111",
            "000" when "011100000",
            "000" when "011100001",
            "000" when "011100010",
            "000" when "011100011",
            "000" when "011100100",
            "001" when "011100101",
            "001" when "011100110",
            "001" when "011100111",
            "010" when "011101000",
            "010" when "011101001",
            "101" when "011101010",
            "101" when "011101011",
            "010" when "011101100",
            "101" when "011101101",
            "101" when "011101110",
            "101" when "011101111",
            "010" when "011110000",
            "101" when "011110001",
            "101" when "011110010",
            "010" when "011110011",
            "010" when "011110100",
            "010" when "011110101",
            "010" when "011110110",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mads1_2_sel <= mads1_2_sel_next;
        end if;
    end process;

    with schedule_cnt select
        out0_0_sel_next <=
            "01" when "011010111",
            "10" when "011101101",
            "10" when "011101110",
            "10" when "011101111",
            "10" when "011110000",
            "10" when "011110001",
            "10" when "011110010",
            "10" when "011110011",
            "10" when "011110100",
            "10" when "011110101",
            "10" when "011110110",
            "10" when "011110111",
            "11" when "011111000",
            "11" when "011111001",
            "00" when "011111010",
            "11" when "011111011",
            "00" when "011111100",
            "11" when "011111101",
            "00" when "011111110",
            "11" when "011111111",
            "00" when "100000000",
            "11" when "100000001",
            "00" when "100000010",
            "11" when "100000011",
            "00" when "100000100",
            "11" when "100000101",
            "00" when "100000110",
            "00" when "100000111",
            "00" when "100001000",
            "00" when "100001001",
            "00" when "100001010",
            "00" when "100001011",
            "11" when "100001100",
            "00" when "100001101",
            "00" when "100001110",
            "11" when "100001111",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            out0_0_sel <= out0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        neg0_0_sel_next <=
            "01" when "000010100",
            "01" when "000110001",
            "01" when "001000011",
            "01" when "001001110",
            "01" when "001011101",
            "10" when "001011110",
            "01" when "001101011",
            "01" when "001110111",
            "01" when "001111000",
            "01" when "001111001",
            "01" when "010001000",
            "01" when "010010011",
            "00" when "010010100",
            "00" when "010010101",
            "10" when "010010110",
            "01" when "010100101",
            "01" when "010101110",
            "01" when "010101111",
            "10" when "010110000",
            "00" when "010110001",
            "10" when "010110010",
            "01" when "011000010",
            "01" when "011001010",
            "01" when "011001011",
            "10" when "011001100",
            "10" when "011001101",
            "00" when "011001110",
            "10" when "011001111",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            neg0_0_sel <= neg0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        rec0_0_sel_next <=
            "0" when "100001111",
            "1" when "000011100",
            "1" when "000111001",
            "1" when "001010110",
            "1" when "001110011",
            "1" when "010010000",
            "1" when "010101101",
            "1" when "011001010",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            rec0_0_sel <= rec0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory0_0_sel_next <=
            "10" when "001111001",
            "10" when "001111011",
            "10" when "001111100",
            "10" when "001111101",
            "10" when "001111110",
            "10" when "010001000",
            "10" when "010001011",
            "10" when "010001101",
            "10" when "010010001",
            "10" when "010010010",
            "10" when "010011000",
            "10" when "010011010",
            "10" when "010011011",
            "10" when "010011101",
            "01" when "010010111",
            "10" when "010100111",
            "10" when "010101010",
            "10" when "010101110",
            "10" when "010110101",
            "10" when "010110110",
            "10" when "010111010",
            "10" when "010111011",
            "10" when "010111100",
            "10" when "011000010",
            "10" when "011000011",
            "10" when "011000100",
            "00" when "000011100",
            "10" when "011000110",
            "00" when "000011101",
            "10" when "011000111",
            "00" when "000100000",
            "00" when "000100001",
            "10" when "000110001",
            "10" when "000110010",
            "10" when "000110100",
            "10" when "000110101",
            "10" when "000111011",
            "10" when "000111100",
            "10" when "001000000",
            "10" when "011010101",
            "10" when "001000100",
            "10" when "011011001",
            "10" when "011011010",
            "10" when "011011011",
            "10" when "011011111",
            "10" when "011100000",
            "10" when "011100001",
            "10" when "011100011",
            "01" when "001001111",
            "10" when "011100100",
            "10" when "011100101",
            "10" when "001011011",
            "10" when "001011110",
            "10" when "011101101",
            "00" when "000000000",
            "00" when "000000001",
            "10" when "011110010",
            "00" when "000000110",
            "10" when "001100001",
            "10" when "011110101",
            "10" when "011110110",
            "10" when "001100010",
            "10" when "001100000",
            "10" when "011111000",
            "10" when "011111001",
            "10" when "011111010",
            "10" when "011111011",
            "00" when "000001110",
            "10" when "011111100",
            "10" when "011111101",
            "00" when "000001111",
            "00" when "000010010",
            "10" when "000100010",
            "00" when "000010101",
            "00" when "000010111",
            "00" when "000011000",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory0_0_sel <= memory0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory1_0_sel_next <=
            "0" when "001110001",
            "0" when "001110110",
            "0" when "001111010",
            "0" when "001111011",
            "0" when "001111111",
            "1" when "001111001",
            "0" when "010000000",
            "0" when "010001100",
            "0" when "010001110",
            "0" when "010010001",
            "0" when "010010101",
            "0" when "010011010",
            "1" when "010010100",
            "0" when "010011100",
            "0" when "010011110",
            "0" when "001100000",
            "0" when "010101010",
            "0" when "010101011",
            "0" when "010110001",
            "0" when "010110011",
            "0" when "010110100",
            "1" when "010110000",
            "0" when "010111000",
            "0" when "010111011",
            "0" when "000100100",
            "0" when "011000101",
            "0" when "000101000",
            "0" when "000101001",
            "0" when "000110011",
            "0" when "000110100",
            "0" when "000111010",
            "0" when "011010011",
            "0" when "000111101",
            "0" when "000111110",
            "0" when "000111111",
            "0" when "011010101",
            "0" when "001000001",
            "0" when "011010110",
            "0" when "001000010",
            "0" when "011010111",
            "0" when "011011000",
            "0" when "001000110",
            "0" when "011011010",
            "0" when "011011100",
            "0" when "001010010",
            "0" when "011100011",
            "0" when "001011010",
            "0" when "001011011",
            "0" when "001011100",
            "0" when "011101011",
            "0" when "001100010",
            "0" when "000010101",
            "0" when "000011011",
            "0" when "000011101",
            "0" when "001101101",
            "0" when "000011111",
            "0" when "000100000",
            "0" when "000100001",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory1_0_sel <= memory1_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory2_0_sel_next <=
            "01" when "001110011",
            "01" when "001111101",
            "01" when "001111110",
            "10" when "010000000",
            "01" when "010001000",
            "01" when "010001001",
            "10" when "010001010",
            "10" when "010001110",
            "10" when "010001111",
            "01" when "010010000",
            "01" when "010010010",
            "01" when "010010100",
            "01" when "010010111",
            "10" when "010011001",
            "01" when "010011101",
            "10" when "010100101",
            "01" when "010100110",
            "01" when "010101000",
            "01" when "010101001",
            "01" when "010101101",
            "10" when "010101111",
            "10" when "010110000",
            "10" when "010110010",
            "01" when "010110101",
            "01" when "010110111",
            "01" when "010111010",
            "01" when "010111101",
            "01" when "011000010",
            "00" when "000011011",
            "01" when "011000111",
            "01" when "000100110",
            "10" when "011001000",
            "00" when "000011110",
            "10" when "011001001",
            "00" when "000011111",
            "10" when "000101000",
            "10" when "011001011",
            "00" when "000100010",
            "01" when "011001100",
            "01" when "011001101",
            "10" when "011010000",
            "10" when "011010001",
            "10" when "011010010",
            "01" when "000111011",
            "10" when "011010011",
            "10" when "000111101",
            "01" when "001000000",
            "10" when "011010111",
            "01" when "001000101",
            "10" when "011011000",
            "01" when "011011001",
            "10" when "001000110",
            "01" when "011011011",
            "10" when "011011100",
            "10" when "001001111",
            "01" when "011011101",
            "01" when "011011111",
            "01" when "001010000",
            "10" when "011100010",
            "01" when "011100101",
            "01" when "001010111",
            "01" when "001011000",
            "01" when "011100111",
            "10" when "001011010",
            "10" when "011101001",
            "10" when "001011100",
            "10" when "001011101",
            "00" when "000011001",
            "00" when "000000011",
            "00" when "000000100",
            "00" when "000000101",
            "00" when "000001000",
            "00" when "000001011",
            "01" when "001100011",
            "00" when "000001101",
            "00" when "000010000",
            "00" when "000010001",
            "00" when "000010100",
            "01" when "001100001",
            "10" when "000011101",
            "01" when "001101100",
            "00" when "000010110",
            "10" when "000100000",
            "01" when "001101111",
            "10" when "001110000",
            "10" when "000100001",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory2_0_sel <= memory2_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory3_0_sel_next <=
            "1" when "001111010",
            "1" when "010010110",
            "1" when "010101111",
            "1" when "010110010",
            "1" when "011001100",
            "1" when "011001110",
            "1" when "011010000",
            "1" when "001000100",
            "0" when "000010011",
            "1" when "000010101",
            "1" when "001011111",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory3_0_sel <= memory3_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory4_0_sel_next <=
            "10" when "001110111",
            "00" when "001111000",
            "01" when "010001010",
            "01" when "010001011",
            "01" when "010001101",
            "01" when "010010110",
            "01" when "010011000",
            "00" when "010010101",
            "10" when "010100110",
            "01" when "010100111",
            "10" when "010101000",
            "01" when "001110101",
            "10" when "010110001",
            "01" when "010110010",
            "10" when "010110100",
            "10" when "010110111",
            "01" when "010111001",
            "01" when "010111100",
            "01" when "000100011",
            "01" when "011000110",
            "10" when "000100110",
            "01" when "011001000",
            "01" when "000110010",
            "00" when "011001011",
            "01" when "000111100",
            "01" when "011010100",
            "10" when "000111111",
            "10" when "001000011",
            "10" when "001001110",
            "01" when "011100000",
            "01" when "001010001",
            "10" when "011100110",
            "01" when "011101001",
            "01" when "001011110",
            "10" when "001100011",
            "10" when "000010100",
            "01" when "000010110",
            "01" when "001101011",
            "10" when "000011110",
            "10" when "001101101",
            "01" when "001101110",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory4_0_sel <= memory4_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory5_0_sel_next <=
            "10" when "001111010",
            "00" when "010000000",
            "01" when "001111100",
            "10" when "001111111",
            "10" when "010001001",
            "01" when "010001111",
            "10" when "010010011",
            "10" when "010010100",
            "10" when "010010101",
            "10" when "010010110",
            "00" when "010011101",
            "01" when "010011001",
            "01" when "010011011",
            "01" when "010100101",
            "10" when "010101011",
            "01" when "010101100",
            "01" when "001110100",
            "10" when "001110101",
            "01" when "010110000",
            "00" when "010111010",
            "01" when "010110110",
            "10" when "010111101",
            "00" when "000101001",
            "01" when "011000011",
            "01" when "011000100",
            "10" when "000100100",
            "10" when "011000101",
            "01" when "000100101",
            "01" when "011001001",
            "01" when "000100111",
            "01" when "000110001",
            "10" when "011001100",
            "10" when "011001101",
            "01" when "011001110",
            "01" when "011010001",
            "00" when "011010111",
            "01" when "000111001",
            "01" when "011010010",
            "00" when "001000110",
            "10" when "011010110",
            "10" when "001000001",
            "10" when "001000010",
            "01" when "001000100",
            "10" when "001000101",
            "01" when "001001110",
            "01" when "001001111",
            "01" when "011100001",
            "10" when "001010001",
            "01" when "011100010",
            "01" when "001010110",
            "01" when "011100100",
            "10" when "011100111",
            "01" when "001011001",
            "01" when "011101000",
            "01" when "011101010",
            "10" when "011101011",
            "00" when "001100011",
            "01" when "001011111",
            "10" when "011101110",
            "00" when "000001100",
            "10" when "011101111",
            "10" when "011110000",
            "10" when "011110001",
            "10" when "011110011",
            "10" when "011110100",
            "01" when "000100010",
            "01" when "000010100",
            "10" when "011110111",
            "01" when "011111000",
            "01" when "011111001",
            "01" when "011111010",
            "10" when "000010101",
            "01" when "011111011",
            "01" when "011111100",
            "01" when "011111101",
            "01" when "011111110",
            "01" when "000011100",
            "10" when "001101100",
            "10" when "001101011",
            "01" when "000011110",
            "10" when "001101110",
            "10" when "001101111",
            "01" when "001110000",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory5_0_sel <= memory5_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory6_0_sel_next <=
            "10" when "001111000",
            "01" when "001101100",
            "10" when "010001100",
            "01" when "010001001",
            "10" when "010010111",
            "10" when "010011100",
            "10" when "010101001",
            "01" when "010100110",
            "10" when "001110100",
            "10" when "001110110",
            "01" when "010110001",
            "10" when "010111000",
            "10" when "010111001",
            "01" when "010110011",
            "00" when "000011010",
            "10" when "000100011",
            "10" when "000100101",
            "10" when "000100111",
            "01" when "011000011",
            "10" when "000101001",
            "10" when "000110011",
            "01" when "000110010",
            "10" when "000111010",
            "01" when "011001101",
            "10" when "000111110",
            "10" when "011010100",
            "01" when "011001111",
            "10" when "011011101",
            "10" when "001010000",
            "10" when "001010010",
            "10" when "001010111",
            "10" when "001011000",
            "10" when "001011001",
            "10" when "001011111",
            "00" when "000000010",
            "00" when "000000111",
            "00" when "000001001",
            "00" when "000001010",
            "00" when "000001100",
            "01" when "001011110",
            "10" when "000011111",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory6_0_sel <= memory6_0_sel_next;
        end if;
    end process;

    -- Interconnect
    with mads0_0_sel select
        mads0_0_in <=
            memory1_0_out when "00",
            memory6_0_out when "01",
            memory0_0_out when "10",
            (others => '-') when others;

    with mads0_1_sel select
        mads0_1_in <=
            memory5_0_out when "000",
            mads0_0_out when "001",
            memory3_0_out when "010",
            memory2_0_out when "011",
            memory0_0_out when "100",
            memory6_0_out when "101",
            memory1_0_out when "110",
            (others => '-') when others;

    with mads0_2_sel select
        mads0_2_in <=
            memory5_0_out when "000",
            memory4_0_out when "001",
            memory3_0_out when "010",
            rec0_0_out when "011",
            memory2_0_out when "100",
            memory6_0_out when "101",
            mads1_0_out when "110",
            memory1_0_out when "111",
            (others => '-') when others;

    with mads1_0_sel select
        mads1_0_in <=
            memory4_0_out when "00",
            memory5_0_out when "01",
            memory2_0_out when "10",
            (others => '-') when others;

    with mads1_1_sel select
        mads1_1_in <=
            memory5_0_out when "000",
            memory3_0_out when "001",
            memory4_0_out when "010",
            in0_0_out when "011",
            memory2_0_out when "100",
            memory0_0_out when "101",
            memory6_0_out when "110",
            mads1_0_out when "111",
            (others => '-') when others;

    with mads1_2_sel select
        mads1_2_in <=
            memory5_0_out when "000",
            memory4_0_out when "001",
            memory3_0_out when "010",
            rec0_0_out when "011",
            memory0_0_out when "100",
            memory6_0_out when "101",
            mads1_0_out when "110",
            memory1_0_out when "111",
            (others => '-') when others;

    with out0_0_sel select
        out0_0_in <=
            memory5_0_out when "00",
            rec0_0_out when "01",
            mads1_0_out when "10",
            memory0_0_out when "11",
            (others => '-') when others;

    with neg0_0_sel select
        neg0_0_in <=
            memory5_0_out when "00",
            mads1_0_out when "01",
            memory2_0_out when "10",
            (others => '-') when others;

    with rec0_0_sel select
        rec0_0_in <=
            in0_0_out when "0",
            mads0_0_out when "1",
            (others => '-') when others;

    with memory0_0_sel select
        memory0_0_in <=
            in0_0_out when "00",
            neg0_0_out when "01",
            mads0_0_out when "10",
            (others => '-') when others;

    with memory1_0_sel select
        memory1_0_in <=
            mads1_0_out when "0",
            neg0_0_out when "1",
            (others => '-') when others;

    with memory2_0_sel select
        memory2_0_in <=
            in0_0_out when "00",
            mads1_0_out when "01",
            mads0_0_out when "10",
            (others => '-') when others;

    with memory3_0_sel select
        memory3_0_in <=
            in0_0_out when "0",
            neg0_0_out when "1",
            (others => '-') when others;

    with memory4_0_sel select
        memory4_0_in <=
            neg0_0_out when "00",
            mads1_0_out when "01",
            mads0_0_out when "10",
            (others => '-') when others;

    with memory5_0_sel select
        memory5_0_in <=
            rec0_0_out when "00",
            mads1_0_out when "01",
            mads0_0_out when "10",
            (others => '-') when others;

    with memory6_0_sel select
        memory6_0_in <=
            in0_0_out when "00",
            neg0_0_out when "01",
            mads0_0_out when "10",
            (others => '-') when others;

end architecture rtl;


