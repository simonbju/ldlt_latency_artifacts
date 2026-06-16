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
    component in0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component rec0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component mul0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_1_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component mul1
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_1_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component addsub0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_1_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component out0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component neg0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory0
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory1
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory2
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory3
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory4
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory5
        port (
            clk : in std_logic;
            en : in std_logic;
            schedule_cnt : in unsigned(7 downto 0);
            p_0_in : in std_logic_vector(31 downto 0);
            p_0_out : out std_logic_vector(31 downto 0)
        );
    end component;

    -- in0 signals
    signal in0_0_out : std_logic_vector(31 downto 0);

    -- rec0 signals
    signal rec0_0_in : std_logic_vector(31 downto 0);
    signal rec0_0_out : std_logic_vector(31 downto 0);

    -- mul0 signals
    signal mul0_0_in : std_logic_vector(31 downto 0);
    signal mul0_1_in : std_logic_vector(31 downto 0);
    signal mul0_0_out : std_logic_vector(31 downto 0);

    -- mul1 signals
    signal mul1_0_in : std_logic_vector(31 downto 0);
    signal mul1_1_in : std_logic_vector(31 downto 0);
    signal mul1_0_out : std_logic_vector(31 downto 0);

    -- addsub0 signals
    signal addsub0_0_in : std_logic_vector(31 downto 0);
    signal addsub0_1_in : std_logic_vector(31 downto 0);
    signal addsub0_0_out : std_logic_vector(31 downto 0);

    -- out0 signals
    signal out0_0_in : std_logic_vector(31 downto 0);

    -- neg0 signals
    signal neg0_0_in : std_logic_vector(31 downto 0);
    signal neg0_0_out : std_logic_vector(31 downto 0);

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

    signal schedule_cnt : unsigned(7 downto 0) := (others => '0');

    -- Internal signals for pipelined I/O
    signal in0_0_in_internal : std_logic_vector(31 downto 0);
    signal out0_0_out_internal : std_logic_vector(31 downto 0);

    -- Multiplexer control signals
    signal rec0_0_sel : std_logic_vector(0 downto 0);
    signal rec0_0_sel_next : std_logic_vector(0 downto 0);
    signal mul0_0_sel : std_logic_vector(2 downto 0);
    signal mul0_0_sel_next : std_logic_vector(2 downto 0);
    signal mul0_1_sel : std_logic_vector(2 downto 0);
    signal mul0_1_sel_next : std_logic_vector(2 downto 0);
    signal mul1_0_sel : std_logic_vector(2 downto 0);
    signal mul1_0_sel_next : std_logic_vector(2 downto 0);
    signal mul1_1_sel : std_logic_vector(2 downto 0);
    signal mul1_1_sel_next : std_logic_vector(2 downto 0);
    signal addsub0_0_sel : std_logic_vector(2 downto 0);
    signal addsub0_0_sel_next : std_logic_vector(2 downto 0);
    signal addsub0_1_sel : std_logic_vector(2 downto 0);
    signal addsub0_1_sel_next : std_logic_vector(2 downto 0);
    signal out0_0_sel : std_logic_vector(1 downto 0);
    signal out0_0_sel_next : std_logic_vector(1 downto 0);
    signal neg0_0_sel : std_logic_vector(0 downto 0);
    signal neg0_0_sel_next : std_logic_vector(0 downto 0);
    signal memory0_0_sel : std_logic_vector(0 downto 0);
    signal memory0_0_sel_next : std_logic_vector(0 downto 0);
    signal memory1_0_sel : std_logic_vector(1 downto 0);
    signal memory1_0_sel_next : std_logic_vector(1 downto 0);
    signal memory2_0_sel : std_logic_vector(1 downto 0);
    signal memory2_0_sel_next : std_logic_vector(1 downto 0);
    signal memory3_0_sel : std_logic_vector(1 downto 0);
    signal memory3_0_sel_next : std_logic_vector(1 downto 0);
    signal memory4_0_sel : std_logic_vector(0 downto 0);
    signal memory4_0_sel_next : std_logic_vector(0 downto 0);
    signal memory5_0_sel : std_logic_vector(0 downto 0);
    signal memory5_0_sel_next : std_logic_vector(0 downto 0);

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
    in0_inst: in0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => in0_0_in_internal,
            p_0_out => in0_0_out
        );

    rec0_inst: rec0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => rec0_0_in,
            p_0_out => rec0_0_out
        );

    mul0_inst: mul0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => mul0_0_in,
            p_1_in => mul0_1_in,
            p_0_out => mul0_0_out
        );

    mul1_inst: mul1
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => mul1_0_in,
            p_1_in => mul1_1_in,
            p_0_out => mul1_0_out
        );

    addsub0_inst: addsub0
        port map (
            clk => clk,
            en => '1',
            schedule_cnt => schedule_cnt,
            p_0_in => addsub0_0_in,
            p_1_in => addsub0_1_in,
            p_0_out => addsub0_0_out
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

    -- Schedule counter
    schedule_cnt_proc: process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                schedule_cnt <= (others => '0');
            else
                if schedule_cnt = 255 then
                    schedule_cnt <= (others => '0');
                else
                    schedule_cnt <= schedule_cnt + 1;
                end if;
            end if;
        end if;
    end process schedule_cnt_proc;

    -- Multiplexer control signal generation
    with schedule_cnt select
        rec0_0_sel_next <=
            "0" when "11111111",
            "1" when "00011001",
            "1" when "00110011",
            "1" when "01001101",
            "1" when "01100111",
            "1" when "10000001",
            "1" when "10011011",
            "1" when "10110101",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            rec0_0_sel <= rec0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mul0_0_sel_next <=
            "110" when "00001100",
            "110" when "00001101",
            "110" when "00010000",
            "011" when "00010001",
            "011" when "00010010",
            "110" when "00010011",
            "110" when "00010100",
            "011" when "00010101",
            "011" when "00010110",
            "011" when "00010111",
            "110" when "00011000",
            "110" when "00011001",
            "011" when "00011010",
            "011" when "00011011",
            "011" when "00011100",
            "110" when "00011110",
            "011" when "00100001",
            "001" when "00100110",
            "011" when "00100111",
            "011" when "00101000",
            "000" when "00101001",
            "001" when "00101010",
            "110" when "00101011",
            "110" when "00101100",
            "011" when "00101101",
            "011" when "00101110",
            "001" when "00101111",
            "001" when "00110000",
            "001" when "00110001",
            "110" when "00110010",
            "110" when "00110011",
            "110" when "00110100",
            "010" when "00110101",
            "000" when "00110110",
            "000" when "00110111",
            "101" when "00111001",
            "011" when "01000000",
            "011" when "01000001",
            "110" when "01000010",
            "000" when "01000011",
            "011" when "01000100",
            "011" when "01000101",
            "110" when "01000110",
            "011" when "01000111",
            "011" when "01001000",
            "001" when "01001001",
            "001" when "01001010",
            "001" when "01001011",
            "000" when "01001100",
            "100" when "01001101",
            "100" when "01001110",
            "000" when "01001111",
            "010" when "01010000",
            "000" when "01010001",
            "000" when "01010010",
            "101" when "01010100",
            "011" when "01011010",
            "110" when "01011011",
            "110" when "01011100",
            "001" when "01011101",
            "011" when "01011110",
            "011" when "01011111",
            "110" when "01100000",
            "011" when "01100001",
            "011" when "01100010",
            "010" when "01100011",
            "000" when "01100100",
            "000" when "01100101",
            "100" when "01100110",
            "100" when "01100111",
            "010" when "01101000",
            "011" when "01101001",
            "010" when "01101010",
            "100" when "01101011",
            "000" when "01101100",
            "101" when "01101101",
            "000" when "01101110",
            "110" when "01110100",
            "011" when "01110101",
            "110" when "01110110",
            "011" when "01110111",
            "110" when "01111000",
            "011" when "01111001",
            "011" when "01111010",
            "010" when "01111011",
            "010" when "01111100",
            "000" when "01111101",
            "000" when "01111110",
            "100" when "01111111",
            "100" when "10000000",
            "001" when "10000001",
            "011" when "10000010",
            "000" when "10000011",
            "010" when "10000100",
            "101" when "10000101",
            "101" when "10000110",
            "101" when "10000111",
            "100" when "10001000",
            "010" when "10001001",
            "110" when "10001110",
            "011" when "10001111",
            "110" when "10010000",
            "110" when "10010001",
            "110" when "10010010",
            "010" when "10010011",
            "010" when "10010100",
            "010" when "10010101",
            "000" when "10010110",
            "000" when "10010111",
            "000" when "10011000",
            "011" when "10011001",
            "011" when "10011010",
            "110" when "10011011",
            "110" when "10011100",
            "010" when "10011101",
            "000" when "10011110",
            "000" when "10011111",
            "101" when "10100000",
            "001" when "10100001",
            "010" when "10100010",
            "010" when "10100011",
            "100" when "10100100",
            "010" when "10100101",
            "010" when "10100110",
            "110" when "10101000",
            "011" when "10101001",
            "001" when "10101010",
            "001" when "10101011",
            "101" when "10101100",
            "100" when "10101101",
            "100" when "10101110",
            "001" when "10101111",
            "110" when "10110000",
            "110" when "10110001",
            "110" when "10110010",
            "011" when "10110011",
            "011" when "10110100",
            "110" when "10110101",
            "001" when "10110110",
            "100" when "10110111",
            "000" when "10111000",
            "101" when "10111001",
            "101" when "10111010",
            "010" when "10111011",
            "010" when "10111100",
            "100" when "10111101",
            "100" when "10111110",
            "010" when "10111111",
            "010" when "11000000",
            "010" when "11000001",
            "011" when "11000010",
            "011" when "11000011",
            "001" when "11000100",
            "110" when "11000101",
            "110" when "11000110",
            "110" when "11000111",
            "110" when "11001000",
            "011" when "11001001",
            "011" when "11001010",
            "110" when "11001011",
            "110" when "11001100",
            "110" when "11001101",
            "011" when "11001110",
            "011" when "11001111",
            "100" when "11010000",
            "101" when "11010001",
            "000" when "11010010",
            "010" when "11010011",
            "010" when "11010100",
            "000" when "11010101",
            "100" when "11010110",
            "000" when "11010111",
            "000" when "11011000",
            "010" when "11011001",
            "000" when "11011010",
            "100" when "11011011",
            "010" when "11011100",
            "010" when "11011101",
            "000" when "11011110",
            "100" when "11011111",
            "000" when "11100000",
            "000" when "11100001",
            "000" when "11100010",
            "000" when "11100011",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mul0_0_sel <= mul0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mul0_1_sel_next <=
            "011" when "00001100",
            "000" when "00001101",
            "110" when "00010000",
            "001" when "00010001",
            "100" when "00010010",
            "000" when "00010011",
            "100" when "00010100",
            "000" when "00010101",
            "100" when "00010110",
            "100" when "00010111",
            "100" when "00011000",
            "100" when "00011001",
            "001" when "00011010",
            "100" when "00011011",
            "100" when "00011100",
            "110" when "00011110",
            "110" when "00100001",
            "011" when "00100110",
            "000" when "00100111",
            "000" when "00101000",
            "101" when "00101001",
            "110" when "00101010",
            "001" when "00101011",
            "000" when "00101100",
            "000" when "00101101",
            "000" when "00101110",
            "001" when "00101111",
            "001" when "00110000",
            "100" when "00110001",
            "000" when "00110010",
            "000" when "00110011",
            "100" when "00110100",
            "101" when "00110101",
            "101" when "00110110",
            "101" when "00110111",
            "101" when "00111001",
            "011" when "01000000",
            "000" when "01000001",
            "000" when "01000010",
            "111" when "01000011",
            "110" when "01000100",
            "000" when "01000101",
            "100" when "01000110",
            "000" when "01000111",
            "100" when "01001000",
            "000" when "01001001",
            "100" when "01001010",
            "000" when "01001011",
            "111" when "01001100",
            "101" when "01001101",
            "111" when "01001110",
            "111" when "01001111",
            "111" when "01010000",
            "101" when "01010001",
            "101" when "01010010",
            "101" when "01010100",
            "011" when "01011010",
            "000" when "01011011",
            "000" when "01011100",
            "000" when "01011101",
            "110" when "01011110",
            "000" when "01011111",
            "100" when "01100000",
            "001" when "01100001",
            "100" when "01100010",
            "101" when "01100011",
            "111" when "01100100",
            "101" when "01100101",
            "111" when "01100110",
            "101" when "01100111",
            "010" when "01101000",
            "000" when "01101001",
            "111" when "01101010",
            "010" when "01101011",
            "111" when "01101100",
            "101" when "01101101",
            "101" when "01101110",
            "011" when "01110100",
            "001" when "01110101",
            "001" when "01110110",
            "001" when "01110111",
            "110" when "01111000",
            "001" when "01111001",
            "100" when "01111010",
            "101" when "01111011",
            "101" when "01111100",
            "111" when "01111101",
            "101" when "01111110",
            "111" when "01111111",
            "101" when "10000000",
            "001" when "10000001",
            "001" when "10000010",
            "111" when "10000011",
            "111" when "10000100",
            "111" when "10000101",
            "101" when "10000110",
            "111" when "10000111",
            "101" when "10001000",
            "101" when "10001001",
            "011" when "10001110",
            "001" when "10001111",
            "001" when "10010000",
            "001" when "10010001",
            "110" when "10010010",
            "101" when "10010011",
            "111" when "10010100",
            "111" when "10010101",
            "111" when "10010110",
            "101" when "10010111",
            "111" when "10011000",
            "001" when "10011001",
            "001" when "10011010",
            "001" when "10011011",
            "001" when "10011100",
            "101" when "10011101",
            "101" when "10011110",
            "111" when "10011111",
            "101" when "10100000",
            "101" when "10100001",
            "101" when "10100010",
            "010" when "10100011",
            "010" when "10100100",
            "101" when "10100101",
            "010" when "10100110",
            "011" when "10101000",
            "001" when "10101001",
            "001" when "10101010",
            "001" when "10101011",
            "101" when "10101100",
            "111" when "10101101",
            "111" when "10101110",
            "001" when "10101111",
            "001" when "10110000",
            "001" when "10110001",
            "001" when "10110010",
            "001" when "10110011",
            "001" when "10110100",
            "001" when "10110101",
            "101" when "10110110",
            "101" when "10110111",
            "101" when "10111000",
            "111" when "10111001",
            "111" when "10111010",
            "101" when "10111011",
            "111" when "10111100",
            "111" when "10111101",
            "111" when "10111110",
            "010" when "10111111",
            "111" when "11000000",
            "101" when "11000001",
            "011" when "11000010",
            "000" when "11000011",
            "000" when "11000100",
            "000" when "11000101",
            "000" when "11000110",
            "000" when "11000111",
            "000" when "11001000",
            "000" when "11001001",
            "000" when "11001010",
            "000" when "11001011",
            "000" when "11001100",
            "000" when "11001101",
            "000" when "11001110",
            "000" when "11001111",
            "010" when "11010000",
            "010" when "11010001",
            "010" when "11010010",
            "111" when "11010011",
            "111" when "11010100",
            "101" when "11010101",
            "101" when "11010110",
            "101" when "11010111",
            "010" when "11011000",
            "010" when "11011001",
            "010" when "11011010",
            "101" when "11011011",
            "101" when "11011100",
            "111" when "11011101",
            "101" when "11011110",
            "101" when "11011111",
            "010" when "11100000",
            "010" when "11100001",
            "111" when "11100010",
            "101" when "11100011",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mul0_1_sel <= mul0_1_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mul1_0_sel_next <=
            "010" when "00001100",
            "100" when "00001101",
            "100" when "00001110",
            "010" when "00010000",
            "110" when "00010001",
            "100" when "00010010",
            "110" when "00010011",
            "110" when "00010100",
            "100" when "00010101",
            "100" when "00010110",
            "110" when "00010111",
            "110" when "00011000",
            "110" when "00011001",
            "110" when "00011010",
            "100" when "00011011",
            "100" when "00011100",
            "100" when "00011101",
            "100" when "00011110",
            "110" when "00100110",
            "110" when "00100111",
            "010" when "00101000",
            "110" when "00101010",
            "010" when "00101011",
            "110" when "00101100",
            "100" when "00101101",
            "100" when "00101110",
            "010" when "00101111",
            "010" when "00110000",
            "110" when "00110001",
            "110" when "00110010",
            "011" when "00110011",
            "001" when "00110100",
            "110" when "00110101",
            "101" when "00110110",
            "110" when "00111001",
            "010" when "01000000",
            "110" when "01000001",
            "010" when "01000010",
            "110" when "01000011",
            "010" when "01000100",
            "110" when "01000101",
            "110" when "01000110",
            "100" when "01000111",
            "100" when "01001000",
            "010" when "01001001",
            "011" when "01001010",
            "011" when "01001011",
            "001" when "01001100",
            "010" when "01001101",
            "001" when "01001110",
            "011" when "01001111",
            "100" when "01010000",
            "101" when "01010001",
            "110" when "01011010",
            "100" when "01011011",
            "110" when "01011100",
            "010" when "01011101",
            "110" when "01011110",
            "110" when "01011111",
            "110" when "01100000",
            "100" when "01100001",
            "011" when "01100010",
            "011" when "01100011",
            "100" when "01100100",
            "001" when "01100101",
            "101" when "01100110",
            "011" when "01100111",
            "011" when "01101000",
            "010" when "01101001",
            "001" when "01101010",
            "011" when "01101011",
            "001" when "01101100",
            "000" when "01101101",
            "010" when "01110100",
            "010" when "01110101",
            "100" when "01110110",
            "100" when "01110111",
            "010" when "01111000",
            "110" when "01111001",
            "100" when "01111010",
            "011" when "01111011",
            "011" when "01111100",
            "001" when "01111101",
            "001" when "01111110",
            "101" when "01111111",
            "101" when "10000000",
            "100" when "10000001",
            "010" when "10000010",
            "100" when "10000011",
            "101" when "10000100",
            "000" when "10000101",
            "000" when "10000110",
            "011" when "10000111",
            "011" when "10001000",
            "011" when "10001001",
            "011" when "10001010",
            "010" when "10001110",
            "010" when "10001111",
            "100" when "10010000",
            "010" when "10010001",
            "010" when "10010010",
            "110" when "10010011",
            "011" when "10010100",
            "011" when "10010101",
            "001" when "10010110",
            "001" when "10010111",
            "100" when "10011000",
            "100" when "10011001",
            "010" when "10011010",
            "110" when "10011011",
            "110" when "10011100",
            "101" when "10011101",
            "101" when "10011110",
            "011" when "10011111",
            "000" when "10100000",
            "011" when "10100001",
            "001" when "10100010",
            "001" when "10100011",
            "011" when "10100100",
            "011" when "10100101",
            "011" when "10100110",
            "010" when "10101000",
            "010" when "10101001",
            "010" when "10101010",
            "010" when "10101011",
            "010" when "10101100",
            "101" when "10101101",
            "101" when "10101110",
            "101" when "10101111",
            "110" when "10110000",
            "110" when "10110001",
            "100" when "10110010",
            "100" when "10110011",
            "110" when "10110100",
            "110" when "10110101",
            "110" when "10110110",
            "001" when "10110111",
            "000" when "10111000",
            "000" when "10111001",
            "011" when "10111010",
            "001" when "10111011",
            "001" when "10111100",
            "011" when "10111101",
            "010" when "10111110",
            "101" when "10111111",
            "001" when "11000000",
            "011" when "11000001",
            "010" when "11000010",
            "010" when "11000011",
            "010" when "11000100",
            "110" when "11000101",
            "110" when "11000110",
            "110" when "11000111",
            "100" when "11001000",
            "100" when "11001001",
            "100" when "11001010",
            "100" when "11001011",
            "110" when "11001100",
            "110" when "11001101",
            "100" when "11001110",
            "100" when "11001111",
            "001" when "11010000",
            "011" when "11010001",
            "101" when "11010010",
            "000" when "11010011",
            "011" when "11010100",
            "011" when "11010101",
            "010" when "11010110",
            "011" when "11010111",
            "011" when "11011000",
            "001" when "11011001",
            "011" when "11011010",
            "001" when "11011011",
            "101" when "11011100",
            "001" when "11011101",
            "011" when "11011110",
            "011" when "11011111",
            "001" when "11100000",
            "001" when "11100001",
            "001" when "11100010",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mul1_0_sel <= mul1_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        mul1_1_sel_next <=
            "011" when "00001100",
            "000" when "00001101",
            "000" when "00001110",
            "101" when "00010000",
            "000" when "00010001",
            "000" when "00010010",
            "001" when "00010011",
            "010" when "00010100",
            "001" when "00010101",
            "010" when "00010110",
            "001" when "00010111",
            "000" when "00011000",
            "010" when "00011001",
            "000" when "00011010",
            "000" when "00011011",
            "010" when "00011100",
            "000" when "00011101",
            "101" when "00011110",
            "011" when "00100110",
            "000" when "00100111",
            "000" when "00101000",
            "101" when "00101010",
            "000" when "00101011",
            "001" when "00101100",
            "001" when "00101101",
            "001" when "00101110",
            "000" when "00101111",
            "000" when "00110000",
            "001" when "00110001",
            "001" when "00110010",
            "100" when "00110011",
            "100" when "00110100",
            "000" when "00110101",
            "100" when "00110110",
            "101" when "00111001",
            "011" when "01000000",
            "000" when "01000001",
            "000" when "01000010",
            "000" when "01000011",
            "101" when "01000100",
            "001" when "01000101",
            "000" when "01000110",
            "001" when "01000111",
            "000" when "01001000",
            "001" when "01001001",
            "100" when "01001010",
            "110" when "01001011",
            "100" when "01001100",
            "001" when "01001101",
            "100" when "01001110",
            "100" when "01001111",
            "000" when "01010000",
            "110" when "01010001",
            "011" when "01011010",
            "000" when "01011011",
            "000" when "01011100",
            "000" when "01011101",
            "101" when "01011110",
            "001" when "01011111",
            "000" when "01100000",
            "000" when "01100001",
            "110" when "01100010",
            "010" when "01100011",
            "001" when "01100100",
            "010" when "01100101",
            "010" when "01100110",
            "110" when "01100111",
            "100" when "01101000",
            "000" when "01101001",
            "110" when "01101010",
            "100" when "01101011",
            "010" when "01101100",
            "100" when "01101101",
            "011" when "01110100",
            "001" when "01110101",
            "001" when "01110110",
            "001" when "01110111",
            "101" when "01111000",
            "000" when "01111001",
            "000" when "01111010",
            "110" when "01111011",
            "010" when "01111100",
            "100" when "01111101",
            "010" when "01111110",
            "100" when "01111111",
            "010" when "10000000",
            "001" when "10000001",
            "001" when "10000010",
            "001" when "10000011",
            "100" when "10000100",
            "010" when "10000101",
            "100" when "10000110",
            "010" when "10000111",
            "110" when "10001000",
            "010" when "10001001",
            "100" when "10001010",
            "011" when "10001110",
            "001" when "10001111",
            "001" when "10010000",
            "001" when "10010001",
            "101" when "10010010",
            "000" when "10010011",
            "100" when "10010100",
            "010" when "10010101",
            "100" when "10010110",
            "010" when "10010111",
            "001" when "10011000",
            "001" when "10011001",
            "001" when "10011010",
            "001" when "10011011",
            "001" when "10011100",
            "110" when "10011101",
            "100" when "10011110",
            "110" when "10011111",
            "110" when "10100000",
            "110" when "10100001",
            "010" when "10100010",
            "110" when "10100011",
            "100" when "10100100",
            "110" when "10100101",
            "110" when "10100110",
            "011" when "10101000",
            "001" when "10101001",
            "001" when "10101010",
            "001" when "10101011",
            "101" when "10101100",
            "100" when "10101101",
            "010" when "10101110",
            "110" when "10101111",
            "001" when "10110000",
            "001" when "10110001",
            "001" when "10110010",
            "001" when "10110011",
            "001" when "10110100",
            "001" when "10110101",
            "001" when "10110110",
            "100" when "10110111",
            "100" when "10111000",
            "100" when "10111001",
            "100" when "10111010",
            "100" when "10111011",
            "110" when "10111100",
            "110" when "10111101",
            "110" when "10111110",
            "110" when "10111111",
            "110" when "11000000",
            "010" when "11000001",
            "011" when "11000010",
            "000" when "11000011",
            "000" when "11000100",
            "000" when "11000101",
            "000" when "11000110",
            "000" when "11000111",
            "000" when "11001000",
            "000" when "11001001",
            "000" when "11001010",
            "000" when "11001011",
            "000" when "11001100",
            "000" when "11001101",
            "000" when "11001110",
            "000" when "11001111",
            "010" when "11010000",
            "010" when "11010001",
            "010" when "11010010",
            "010" when "11010011",
            "100" when "11010100",
            "110" when "11010101",
            "100" when "11010110",
            "100" when "11010111",
            "100" when "11011000",
            "010" when "11011001",
            "010" when "11011010",
            "100" when "11011011",
            "100" when "11011100",
            "110" when "11011101",
            "110" when "11011110",
            "110" when "11011111",
            "100" when "11100000",
            "110" when "11100001",
            "100" when "11100010",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            mul1_1_sel <= mul1_1_sel_next;
        end if;
    end process;

    with schedule_cnt select
        addsub0_0_sel_next <=
            "101" when "00010100",
            "110" when "00010101",
            "110" when "00010110",
            "010" when "00010111",
            "101" when "00011000",
            "101" when "00011001",
            "010" when "00011010",
            "110" when "00011011",
            "110" when "00011100",
            "010" when "00011101",
            "010" when "00011110",
            "010" when "00011111",
            "110" when "00100000",
            "010" when "00100001",
            "110" when "00100010",
            "010" when "00100011",
            "110" when "00100100",
            "110" when "00100101",
            "101" when "00100110",
            "010" when "00100111",
            "110" when "00101000",
            "110" when "00101001",
            "101" when "00101010",
            "101" when "00101011",
            "101" when "00101100",
            "110" when "00101101",
            "010" when "00101110",
            "110" when "00101111",
            "110" when "00110000",
            "101" when "00110001",
            "101" when "00110010",
            "010" when "00110011",
            "010" when "00110100",
            "010" when "00110101",
            "010" when "00110110",
            "110" when "00110111",
            "010" when "00111000",
            "010" when "00111001",
            "010" when "00111010",
            "110" when "00111011",
            "010" when "00111100",
            "010" when "00111101",
            "110" when "00111110",
            "101" when "00111111",
            "001" when "01000000",
            "010" when "01000001",
            "101" when "01000010",
            "100" when "01000011",
            "110" when "01000100",
            "010" when "01000101",
            "000" when "01000110",
            "100" when "01000111",
            "010" when "01001000",
            "110" when "01001001",
            "110" when "01001010",
            "101" when "01001011",
            "010" when "01001100",
            "110" when "01001101",
            "010" when "01001110",
            "010" when "01001111",
            "010" when "01010000",
            "010" when "01010001",
            "010" when "01010010",
            "010" when "01010011",
            "110" when "01010100",
            "001" when "01010101",
            "010" when "01010110",
            "010" when "01010111",
            "010" when "01011000",
            "011" when "01011001",
            "010" when "01011010",
            "011" when "01011011",
            "010" when "01011100",
            "000" when "01011101",
            "001" when "01011110",
            "100" when "01011111",
            "000" when "01100000",
            "100" when "01100001",
            "010" when "01100010",
            "110" when "01100011",
            "010" when "01100100",
            "110" when "01100101",
            "101" when "01100110",
            "010" when "01100111",
            "110" when "01101000",
            "110" when "01101001",
            "010" when "01101010",
            "110" when "01101011",
            "101" when "01101100",
            "001" when "01101101",
            "010" when "01101110",
            "010" when "01101111",
            "010" when "01110000",
            "100" when "01110001",
            "011" when "01110010",
            "010" when "01110011",
            "001" when "01110100",
            "110" when "01110101",
            "010" when "01110110",
            "001" when "01110111",
            "101" when "01111000",
            "010" when "01111001",
            "011" when "01111010",
            "001" when "01111011",
            "110" when "01111100",
            "010" when "01111101",
            "110" when "01111110",
            "010" when "01111111",
            "110" when "10000000",
            "110" when "10000001",
            "110" when "10000010",
            "010" when "10000011",
            "001" when "10000100",
            "101" when "10000101",
            "010" when "10000110",
            "100" when "10000111",
            "010" when "10001000",
            "110" when "10001001",
            "110" when "10001010",
            "100" when "10001011",
            "010" when "10001100",
            "010" when "10001101",
            "011" when "10001110",
            "110" when "10001111",
            "010" when "10010000",
            "100" when "10010001",
            "101" when "10010010",
            "010" when "10010011",
            "001" when "10010100",
            "001" when "10010101",
            "010" when "10010110",
            "110" when "10010111",
            "010" when "10011000",
            "110" when "10011001",
            "110" when "10011010",
            "101" when "10011011",
            "101" when "10011100",
            "001" when "10011101",
            "110" when "10011110",
            "010" when "10011111",
            "010" when "10100000",
            "100" when "10100001",
            "110" when "10100010",
            "101" when "10100011",
            "110" when "10100100",
            "010" when "10100101",
            "101" when "10100110",
            "010" when "10100111",
            "011" when "10101000",
            "110" when "10101001",
            "001" when "10101010",
            "100" when "10101011",
            "001" when "10101100",
            "010" when "10101101",
            "101" when "10101110",
            "101" when "10101111",
            "010" when "10110000",
            "010" when "10110001",
            "010" when "10110010",
            "010" when "10110011",
            "010" when "10110100",
            "010" when "10110101",
            "001" when "10110110",
            "110" when "10110111",
            "010" when "10111000",
            "011" when "10111001",
            "010" when "10111010",
            "010" when "10111011",
            "101" when "10111100",
            "101" when "10111101",
            "011" when "10111110",
            "101" when "10111111",
            "010" when "11000000",
            "100" when "11000001",
            "011" when "11000010",
            "110" when "11000011",
            "110" when "11000100",
            "101" when "11000101",
            "010" when "11000110",
            "101" when "11000111",
            "010" when "11001000",
            "110" when "11001001",
            "010" when "11001010",
            "010" when "11001011",
            "010" when "11001100",
            "100" when "11001101",
            "011" when "11001110",
            "110" when "11001111",
            "110" when "11010000",
            "001" when "11010001",
            "110" when "11010010",
            "101" when "11010011",
            "010" when "11010100",
            "010" when "11010101",
            "011" when "11010110",
            "100" when "11010111",
            "110" when "11011000",
            "110" when "11011001",
            "110" when "11011010",
            "110" when "11011011",
            "010" when "11011100",
            "101" when "11011101",
            "010" when "11011110",
            "010" when "11011111",
            "110" when "11100000",
            "101" when "11100001",
            "010" when "11100010",
            "011" when "11100011",
            "110" when "11100100",
            "001" when "11100101",
            "101" when "11100110",
            "011" when "11100111",
            "110" when "11101000",
            "010" when "11101001",
            "011" when "11101010",
            "001" when "11101011",
            "010" when "11101100",
            "010" when "11101101",
            "010" when "11101110",
            "110" when "11101111",
            "110" when "11110000",
            "010" when "11110001",
            "011" when "11110010",
            "001" when "11110011",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            addsub0_0_sel <= addsub0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        addsub0_1_sel_next <=
            "100" when "00010100",
            "011" when "00010101",
            "001" when "00010110",
            "000" when "00010111",
            "001" when "00011000",
            "000" when "00011001",
            "011" when "00011010",
            "010" when "00011011",
            "000" when "00011100",
            "001" when "00011101",
            "001" when "00011110",
            "000" when "00011111",
            "011" when "00100000",
            "001" when "00100001",
            "001" when "00100010",
            "011" when "00100011",
            "001" when "00100100",
            "000" when "00100101",
            "001" when "00100110",
            "011" when "00100111",
            "011" when "00101000",
            "001" when "00101001",
            "000" when "00101010",
            "011" when "00101011",
            "011" when "00101100",
            "010" when "00101101",
            "100" when "00101110",
            "011" when "00101111",
            "011" when "00110000",
            "000" when "00110001",
            "010" when "00110010",
            "011" when "00110011",
            "001" when "00110100",
            "011" when "00110101",
            "001" when "00110110",
            "011" when "00110111",
            "011" when "00111000",
            "001" when "00111001",
            "000" when "00111010",
            "011" when "00111011",
            "011" when "00111100",
            "000" when "00111101",
            "000" when "00111110",
            "011" when "00111111",
            "001" when "01000000",
            "011" when "01000001",
            "011" when "01000010",
            "001" when "01000011",
            "000" when "01000100",
            "011" when "01000101",
            "010" when "01000110",
            "010" when "01000111",
            "100" when "01001000",
            "011" when "01001001",
            "000" when "01001010",
            "011" when "01001011",
            "011" when "01001100",
            "000" when "01001101",
            "001" when "01001110",
            "011" when "01001111",
            "011" when "01010000",
            "001" when "01010001",
            "001" when "01010010",
            "000" when "01010011",
            "010" when "01010100",
            "001" when "01010101",
            "000" when "01010110",
            "011" when "01010111",
            "011" when "01011000",
            "010" when "01011001",
            "001" when "01011010",
            "011" when "01011011",
            "011" when "01011100",
            "001" when "01011101",
            "011" when "01011110",
            "010" when "01011111",
            "001" when "01100000",
            "010" when "01100001",
            "100" when "01100010",
            "011" when "01100011",
            "011" when "01100100",
            "001" when "01100101",
            "001" when "01100110",
            "000" when "01100111",
            "011" when "01101000",
            "001" when "01101001",
            "011" when "01101010",
            "000" when "01101011",
            "001" when "01101100",
            "001" when "01101101",
            "001" when "01101110",
            "000" when "01101111",
            "011" when "01110000",
            "001" when "01110001",
            "010" when "01110010",
            "001" when "01110011",
            "001" when "01110100",
            "000" when "01110101",
            "000" when "01110110",
            "011" when "01110111",
            "011" when "01111000",
            "011" when "01111001",
            "010" when "01111010",
            "011" when "01111011",
            "100" when "01111100",
            "011" when "01111101",
            "001" when "01111110",
            "000" when "01111111",
            "001" when "10000000",
            "000" when "10000001",
            "000" when "10000010",
            "011" when "10000011",
            "010" when "10000100",
            "001" when "10000101",
            "001" when "10000110",
            "000" when "10000111",
            "000" when "10001000",
            "011" when "10001001",
            "011" when "10001010",
            "000" when "10001011",
            "001" when "10001100",
            "011" when "10001101",
            "000" when "10001110",
            "011" when "10001111",
            "011" when "10010000",
            "000" when "10010001",
            "001" when "10010010",
            "011" when "10010011",
            "010" when "10010100",
            "011" when "10010101",
            "100" when "10010110",
            "011" when "10010111",
            "011" when "10011000",
            "000" when "10011001",
            "011" when "10011010",
            "011" when "10011011",
            "010" when "10011100",
            "010" when "10011101",
            "001" when "10011110",
            "011" when "10011111",
            "001" when "10100000",
            "000" when "10100001",
            "011" when "10100010",
            "011" when "10100011",
            "000" when "10100100",
            "011" when "10100101",
            "011" when "10100110",
            "000" when "10100111",
            "011" when "10101000",
            "011" when "10101001",
            "011" when "10101010",
            "000" when "10101011",
            "001" when "10101100",
            "001" when "10101101",
            "001" when "10101110",
            "000" when "10101111",
            "100" when "10110000",
            "011" when "10110001",
            "000" when "10110010",
            "100" when "10110011",
            "011" when "10110100",
            "000" when "10110101",
            "011" when "10110110",
            "010" when "10110111",
            "001" when "10111000",
            "011" when "10111001",
            "000" when "10111010",
            "011" when "10111011",
            "011" when "10111100",
            "000" when "10111101",
            "000" when "10111110",
            "000" when "10111111",
            "011" when "11000000",
            "000" when "11000001",
            "011" when "11000010",
            "011" when "11000011",
            "011" when "11000100",
            "011" when "11000101",
            "011" when "11000110",
            "001" when "11000111",
            "001" when "11001000",
            "001" when "11001001",
            "011" when "11001010",
            "001" when "11001011",
            "011" when "11001100",
            "001" when "11001101",
            "010" when "11001110",
            "011" when "11001111",
            "001" when "11010000",
            "011" when "11010001",
            "001" when "11010010",
            "011" when "11010011",
            "011" when "11010100",
            "011" when "11010101",
            "000" when "11010110",
            "010" when "11010111",
            "011" when "11011000",
            "011" when "11011001",
            "011" when "11011010",
            "001" when "11011011",
            "100" when "11011100",
            "100" when "11011101",
            "100" when "11011110",
            "000" when "11011111",
            "100" when "11100000",
            "011" when "11100001",
            "001" when "11100010",
            "100" when "11100011",
            "001" when "11100100",
            "011" when "11100101",
            "000" when "11100110",
            "000" when "11100111",
            "011" when "11101000",
            "001" when "11101001",
            "011" when "11101010",
            "011" when "11101011",
            "001" when "11101100",
            "001" when "11101101",
            "011" when "11101110",
            "011" when "11101111",
            "001" when "11110000",
            "001" when "11110001",
            "010" when "11110010",
            "001" when "11110011",
            "---" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            addsub0_1_sel <= addsub0_1_sel_next;
        end if;
    end process;

    with schedule_cnt select
        out0_0_sel_next <=
            "01" when "11000010",
            "11" when "11011101",
            "11" when "11011110",
            "11" when "11011111",
            "11" when "11100000",
            "11" when "11100001",
            "11" when "11100010",
            "11" when "11100011",
            "11" when "11100100",
            "11" when "11100101",
            "11" when "11100110",
            "11" when "11100111",
            "00" when "11101000",
            "11" when "11101001",
            "11" when "11101010",
            "11" when "11101011",
            "11" when "11101100",
            "11" when "11101101",
            "11" when "11101110",
            "11" when "11101111",
            "00" when "11110000",
            "10" when "11110001",
            "10" when "11110010",
            "00" when "11110011",
            "00" when "11110100",
            "00" when "11110101",
            "00" when "11110110",
            "00" when "11110111",
            "00" when "11111000",
            "00" when "11111001",
            "00" when "11111010",
            "00" when "11111011",
            "10" when "11111100",
            "00" when "11111101",
            "00" when "11111110",
            "00" when "11111111",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            out0_0_sel <= out0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        neg0_0_sel_next <=
            "0" when "00010000",
            "0" when "00101010",
            "0" when "01000100",
            "1" when "01000101",
            "1" when "01011010",
            "1" when "01011100",
            "0" when "01011110",
            "1" when "01110000",
            "1" when "01110001",
            "1" when "01110010",
            "0" when "01111000",
            "1" when "10000111",
            "1" when "10001000",
            "1" when "10001001",
            "1" when "10001010",
            "0" when "10010010",
            "1" when "10011110",
            "1" when "10011111",
            "1" when "10100000",
            "1" when "10100001",
            "1" when "10100010",
            "0" when "10101100",
            "1" when "10110110",
            "1" when "10110111",
            "1" when "10111000",
            "1" when "10111001",
            "1" when "10111010",
            "1" when "10111011",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            neg0_0_sel <= neg0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory0_0_sel_next <=
            "0" when "10010110",
            "0" when "00011101",
            "0" when "00011110",
            "1" when "10010111",
            "1" when "10011000",
            "0" when "00011111",
            "1" when "10011001",
            "1" when "00100000",
            "0" when "10011010",
            "1" when "00100001",
            "0" when "10011011",
            "1" when "00100010",
            "1" when "10011101",
            "1" when "10011111",
            "1" when "10100010",
            "1" when "00101100",
            "0" when "00101101",
            "0" when "00101110",
            "1" when "10100100",
            "1" when "00101111",
            "1" when "00110000",
            "0" when "10100101",
            "0" when "00110001",
            "0" when "00110010",
            "1" when "10100110",
            "0" when "00110011",
            "1" when "10100111",
            "1" when "00110100",
            "1" when "10101000",
            "1" when "00110101",
            "1" when "00010111",
            "1" when "10101010",
            "1" when "10101100",
            "1" when "00110110",
            "0" when "10110000",
            "0" when "00110111",
            "0" when "00011010",
            "1" when "10110001",
            "1" when "10110010",
            "0" when "10110011",
            "0" when "00111001",
            "1" when "10110100",
            "1" when "00111010",
            "0" when "00011011",
            "1" when "10110101",
            "0" when "00111011",
            "0" when "10110111",
            "1" when "00111101",
            "0" when "10111010",
            "1" when "10111011",
            "0" when "10111100",
            "1" when "00010001",
            "0" when "10111101",
            "1" when "00010010",
            "0" when "10111110",
            "0" when "00010100",
            "0" when "10111111",
            "0" when "11000000",
            "0" when "01100001",
            "0" when "11000001",
            "0" when "01100010",
            "0" when "11000010",
            "1" when "11000011",
            "0" when "01100011",
            "1" when "11000100",
            "0" when "10010100",
            "0" when "01100101",
            "1" when "11000110",
            "0" when "01100110",
            "1" when "11001000",
            "0" when "01101000",
            "0" when "11001010",
            "1" when "11001011",
            "1" when "11001100",
            "1" when "01101011",
            "1" when "01101100",
            "0" when "01101110",
            "1" when "01101111",
            "0" when "11010010",
            "1" when "01110001",
            "0" when "01110010",
            "0" when "11010100",
            "0" when "11010101",
            "0" when "11010110",
            "0" when "01111001",
            "0" when "11011001",
            "0" when "11011011",
            "1" when "01000101",
            "1" when "01111010",
            "0" when "11011100",
            "0" when "01111011",
            "0" when "11011101",
            "0" when "01111100",
            "1" when "01000111",
            "0" when "11011111",
            "0" when "11100000",
            "0" when "01001000",
            "1" when "01111111",
            "0" when "11100001",
            "1" when "01001001",
            "1" when "01001010",
            "1" when "10000001",
            "1" when "11100100",
            "0" when "01001011",
            "0" when "10000011",
            "1" when "11100101",
            "0" when "01001100",
            "1" when "11100110",
            "1" when "10000100",
            "1" when "01001110",
            "0" when "10000111",
            "0" when "10001000",
            "0" when "01010001",
            "1" when "10001001",
            "0" when "01010010",
            "1" when "10001010",
            "1" when "10001011",
            "1" when "01010101",
            "0" when "01010110",
            "0" when "10001100",
            "0" when "01011000",
            "1" when "10001110",
            "0" when "01011111",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory0_0_sel <= memory0_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory1_0_sel_next <=
            "11" when "00011110",
            "11" when "00011111",
            "10" when "00011011",
            "11" when "10011001",
            "10" when "00011100",
            "11" when "10011010",
            "10" when "00100000",
            "10" when "00100010",
            "11" when "00101000",
            "11" when "00101100",
            "11" when "00101101",
            "01" when "10100001",
            "01" when "00101011",
            "01" when "10100010",
            "11" when "00110000",
            "01" when "10100011",
            "11" when "10101001",
            "11" when "00110111",
            "00" when "10101010",
            "10" when "00010011",
            "10" when "00010100",
            "11" when "00011010",
            "11" when "00111000",
            "01" when "10101101",
            "11" when "00111001",
            "11" when "10110010",
            "10" when "00010110",
            "11" when "10110011",
            "10" when "00010111",
            "11" when "00011101",
            "11" when "00111100",
            "10" when "00000010",
            "10" when "00000011",
            "10" when "00000100",
            "10" when "00001001",
            "10" when "00001011",
            "10" when "00001100",
            "01" when "10111011",
            "11" when "11000000",
            "10" when "00010001",
            "11" when "11000011",
            "11" when "11000100",
            "11" when "01100101",
            "11" when "11001000",
            "11" when "11001001",
            "11" when "01101001",
            "11" when "11001010",
            "11" when "01101010",
            "11" when "11001100",
            "11" when "01101100",
            "11" when "11001101",
            "11" when "01101111",
            "11" when "11010010",
            "11" when "01110011",
            "11" when "11010101",
            "01" when "01110001",
            "11" when "01110101",
            "11" when "11011010",
            "11" when "11011011",
            "11" when "01111011",
            "11" when "01111100",
            "11" when "01000111",
            "01" when "01111001",
            "11" when "01111111",
            "11" when "10000100",
            "11" when "10000101",
            "11" when "01001110",
            "11" when "01010001",
            "11" when "01010011",
            "11" when "01010100",
            "11" when "10001100",
            "01" when "10001001",
            "11" when "10001101",
            "11" when "01011000",
            "11" when "01011001",
            "01" when "01011011",
            "11" when "01011111",
            "11" when "10010001",
            "11" when "10010011",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory1_0_sel <= memory1_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory2_0_sel_next <=
            "10" when "10010111",
            "01" when "00011001",
            "10" when "00100000",
            "10" when "00100001",
            "01" when "00011101",
            "10" when "00100011",
            "01" when "00011110",
            "01" when "00011111",
            "00" when "10011111",
            "00" when "10100000",
            "10" when "00110001",
            "10" when "00110010",
            "10" when "00110110",
            "10" when "10101011",
            "10" when "10101100",
            "10" when "10101101",
            "10" when "10101110",
            "10" when "10110000",
            "10" when "00111010",
            "10" when "10110100",
            "01" when "00011000",
            "10" when "00111101",
            "01" when "00000001",
            "01" when "00000101",
            "01" when "00000111",
            "01" when "00001000",
            "10" when "10111101",
            "00" when "10111001",
            "00" when "10111010",
            "01" when "00001101",
            "00" when "00010001",
            "00" when "10111100",
            "00" when "01011111",
            "10" when "11000101",
            "10" when "01101101",
            "10" when "11001110",
            "10" when "11010011",
            "10" when "11010100",
            "00" when "01110010",
            "10" when "01110110",
            "10" when "01110111",
            "10" when "10000000",
            "00" when "01000110",
            "10" when "01010000",
            "10" when "10001011",
            "00" when "10001000",
            "10" when "01010101",
            "10" when "01010111",
            "00" when "10001010",
            "10" when "10001110",
            "10" when "01011110",
            "00" when "01011101",
            "10" when "10010101",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory2_0_sel <= memory2_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory3_0_sel_next <=
            "11" when "10010110",
            "00" when "10010101",
            "10" when "10010011",
            "01" when "00011010",
            "00" when "10010111",
            "11" when "10011000",
            "00" when "10011001",
            "00" when "00100000",
            "11" when "00100010",
            "11" when "10011100",
            "11" when "10011101",
            "11" when "00100100",
            "11" when "00100101",
            "11" when "00100110",
            "01" when "00100001",
            "11" when "00100111",
            "11" when "00101001",
            "11" when "00101010",
            "11" when "00101011",
            "00" when "10100001",
            "11" when "10100011",
            "11" when "00101110",
            "11" when "10100100",
            "01" when "00010010",
            "11" when "00101111",
            "11" when "10100101",
            "00" when "00110000",
            "11" when "10100110",
            "11" when "10100111",
            "11" when "00110100",
            "11" when "10101000",
            "11" when "00110101",
            "11" when "10101010",
            "00" when "00010111",
            "00" when "10101101",
            "11" when "10101111",
            "00" when "10101110",
            "11" when "10110001",
            "01" when "00010101",
            "11" when "00011011",
            "00" when "00111000",
            "11" when "00011100",
            "11" when "00111011",
            "00" when "00111010",
            "11" when "00111110",
            "00" when "00111101",
            "11" when "00111111",
            "11" when "01000000",
            "11" when "01000001",
            "10" when "10110111",
            "01" when "00000000",
            "11" when "10111100",
            "10" when "10111000",
            "01" when "00000110",
            "01" when "00001010",
            "11" when "10111110",
            "00" when "00010001",
            "11" when "10111111",
            "01" when "00001110",
            "01" when "00001111",
            "01" when "00010000",
            "11" when "11000001",
            "11" when "01100010",
            "11" when "11000010",
            "11" when "01100011",
            "00" when "11000011",
            "11" when "01100100",
            "00" when "11000100",
            "11" when "11000110",
            "11" when "11000111",
            "11" when "01100110",
            "11" when "01101000",
            "11" when "11001011",
            "11" when "01101011",
            "00" when "01101100",
            "11" when "01101110",
            "00" when "11001110",
            "11" when "11001111",
            "11" when "11010000",
            "11" when "11010001",
            "00" when "01101111",
            "11" when "01110100",
            "11" when "11010110",
            "11" when "11010111",
            "10" when "01110011",
            "11" when "11011000",
            "11" when "11011001",
            "11" when "01111000",
            "11" when "01111001",
            "11" when "01000011",
            "00" when "11011010",
            "11" when "01000100",
            "11" when "01111010",
            "11" when "11011100",
            "11" when "01001000",
            "11" when "01111101",
            "11" when "01001001",
            "11" when "01111110",
            "10" when "01000101",
            "00" when "10000000",
            "11" when "10000010",
            "11" when "01001010",
            "11" when "01001011",
            "11" when "10000011",
            "00" when "11100100",
            "00" when "11100101",
            "11" when "01001100",
            "00" when "11100110",
            "11" when "11101000",
            "00" when "11100111",
            "11" when "10000110",
            "11" when "01000010",
            "11" when "01001111",
            "00" when "01001110",
            "11" when "11110000",
            "11" when "11110001",
            "11" when "11110010",
            "00" when "01010000",
            "11" when "11110011",
            "11" when "11110100",
            "11" when "01010010",
            "11" when "11110101",
            "11" when "11110110",
            "11" when "11110111",
            "11" when "11111000",
            "00" when "01010011",
            "00" when "01010100",
            "11" when "01010110",
            "11" when "01011011",
            "00" when "10001101",
            "10" when "10001011",
            "11" when "10001111",
            "11" when "10010000",
            "11" when "10010010",
            "11" when "10010100",
            "11" when "01100001",
            "--" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory3_0_sel <= memory3_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory4_0_sel_next <=
            "0" when "10010101",
            "0" when "00011101",
            "0" when "00011110",
            "0" when "00011111",
            "0" when "10011010",
            "0" when "10011011",
            "0" when "10011100",
            "0" when "10011110",
            "1" when "10101000",
            "0" when "00101010",
            "0" when "10100001",
            "0" when "00101011",
            "0" when "10100011",
            "0" when "10100101",
            "0" when "00110001",
            "0" when "00110010",
            "0" when "00110011",
            "0" when "10101001",
            "0" when "00011000",
            "0" when "10101101",
            "0" when "10101110",
            "0" when "00011001",
            "0" when "10101111",
            "0" when "00110111",
            "0" when "00011010",
            "0" when "00111000",
            "0" when "00111001",
            "0" when "00011011",
            "0" when "00011100",
            "0" when "10110110",
            "0" when "10110111",
            "0" when "10111000",
            "0" when "00010000",
            "0" when "10111100",
            "0" when "10111101",
            "0" when "10111110",
            "0" when "00010101",
            "0" when "10111111",
            "0" when "00010110",
            "0" when "01100000",
            "0" when "11000000",
            "0" when "01100001",
            "0" when "11000001",
            "0" when "11000010",
            "0" when "01100011",
            "0" when "01100100",
            "0" when "11000101",
            "0" when "01100101",
            "0" when "11000111",
            "0" when "01100110",
            "0" when "01100111",
            "0" when "11001001",
            "0" when "01101000",
            "0" when "11001010",
            "0" when "01101001",
            "0" when "01101010",
            "1" when "01110100",
            "0" when "11001101",
            "0" when "11001110",
            "0" when "11001111",
            "0" when "01101110",
            "0" when "11010000",
            "0" when "01110000",
            "0" when "11010010",
            "0" when "11010011",
            "0" when "11010100",
            "0" when "11010101",
            "0" when "11010110",
            "0" when "11010111",
            "0" when "11011000",
            "0" when "01111000",
            "0" when "11011001",
            "0" when "11011010",
            "0" when "01000100",
            "0" when "01111001",
            "0" when "11011011",
            "0" when "01111011",
            "0" when "01000110",
            "0" when "01111101",
            "0" when "11011111",
            "0" when "01111110",
            "0" when "11100001",
            "0" when "11100010",
            "0" when "10000000",
            "0" when "10000010",
            "0" when "01001011",
            "0" when "10000011",
            "0" when "01001100",
            "0" when "01001101",
            "1" when "10001110",
            "0" when "01001111",
            "0" when "01010000",
            "0" when "10001000",
            "0" when "01010001",
            "0" when "01010011",
            "0" when "10001100",
            "0" when "10001101",
            "0" when "01011110",
            "0" when "10010010",
            "0" when "01011111",
            "0" when "10010011",
            "0" when "10010100",
            "0" when "01010010",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory4_0_sel <= memory4_0_sel_next;
        end if;
    end process;

    with schedule_cnt select
        memory5_0_sel_next <=
            "1" when "00100110",
            "0" when "10011000",
            "0" when "00100010",
            "0" when "10011100",
            "0" when "10011101",
            "0" when "10011110",
            "0" when "00100101",
            "0" when "10011111",
            "0" when "00101010",
            "0" when "00101011",
            "0" when "10100010",
            "0" when "00010110",
            "0" when "00101100",
            "0" when "10100011",
            "0" when "10100100",
            "0" when "00101111",
            "0" when "10100110",
            "0" when "10100111",
            "0" when "00110100",
            "0" when "10101000",
            "0" when "10101001",
            "0" when "00110101",
            "0" when "00011000",
            "0" when "00110110",
            "0" when "10101100",
            "1" when "01000000",
            "0" when "10101111",
            "0" when "00011001",
            "0" when "10110001",
            "0" when "10110010",
            "0" when "10110100",
            "0" when "10110101",
            "0" when "10110110",
            "0" when "00011100",
            "1" when "11000010",
            "1" when "00001100",
            "0" when "10111011",
            "0" when "00010000",
            "0" when "00010101",
            "0" when "01100100",
            "0" when "11000101",
            "0" when "11000110",
            "0" when "11000111",
            "0" when "11001000",
            "0" when "01100111",
            "0" when "11001001",
            "0" when "01101001",
            "0" when "11001011",
            "0" when "01101010",
            "0" when "11001100",
            "0" when "01101011",
            "0" when "11001101",
            "0" when "11001111",
            "0" when "11010000",
            "0" when "11010001",
            "0" when "01110000",
            "0" when "01110001",
            "0" when "11010111",
            "0" when "11011000",
            "0" when "01111000",
            "0" when "01000100",
            "0" when "01111010",
            "0" when "01000101",
            "0" when "01000110",
            "0" when "11011110",
            "0" when "01000111",
            "0" when "01111101",
            "0" when "01111110",
            "0" when "01001001",
            "0" when "01111111",
            "0" when "11100010",
            "0" when "11100011",
            "0" when "10000001",
            "0" when "01001010",
            "0" when "10000010",
            "0" when "10000100",
            "0" when "01001101",
            "0" when "01001111",
            "1" when "01011010",
            "0" when "10001001",
            "0" when "10001010",
            "0" when "10001011",
            "0" when "01010101",
            "0" when "01011110",
            "0" when "10010010",
            "0" when "10010011",
            "0" when "01100000",
            "-" when others;
    process(clk)
    begin
        if rising_edge(clk) then
            memory5_0_sel <= memory5_0_sel_next;
        end if;
    end process;

    -- Interconnect
    with rec0_0_sel select
        rec0_0_in <=
            in0_0_out when "0",
            addsub0_0_out when "1",
            (others => '-') when others;

    with mul0_0_sel select
        mul0_0_in <=
            memory5_0_out when "000",
            memory3_0_out when "001",
            memory4_0_out when "010",
            memory2_0_out when "011",
            memory0_0_out when "100",
            mul1_0_out when "101",
            memory1_0_out when "110",
            (others => '-') when others;

    with mul0_1_sel select
        mul0_1_in <=
            memory5_0_out when "000",
            memory4_0_out when "001",
            memory3_0_out when "010",
            rec0_0_out when "011",
            memory0_0_out when "100",
            memory2_0_out when "101",
            mul1_0_out when "110",
            memory1_0_out when "111",
            (others => '-') when others;

    with mul1_0_sel select
        mul1_0_in <=
            mul0_0_out when "000",
            memory5_0_out when "001",
            memory3_0_out when "010",
            memory4_0_out when "011",
            memory2_0_out when "100",
            memory0_0_out when "101",
            memory1_0_out when "110",
            (others => '-') when others;

    with mul1_1_sel select
        mul1_1_in <=
            memory5_0_out when "000",
            memory4_0_out when "001",
            memory3_0_out when "010",
            rec0_0_out when "011",
            memory2_0_out when "100",
            mul1_0_out when "101",
            memory1_0_out when "110",
            (others => '-') when others;

    with addsub0_0_sel select
        addsub0_0_in <=
            addsub0_0_out when "000",
            memory5_0_out when "001",
            memory3_0_out when "010",
            memory4_0_out when "011",
            memory0_0_out when "100",
            memory2_0_out when "101",
            memory1_0_out when "110",
            (others => '-') when others;

    with addsub0_1_sel select
        addsub0_1_in <=
            memory5_0_out when "000",
            memory4_0_out when "001",
            memory3_0_out when "010",
            memory0_0_out when "011",
            mul1_0_out when "100",
            (others => '-') when others;

    with out0_0_sel select
        out0_0_in <=
            memory3_0_out when "00",
            rec0_0_out when "01",
            memory0_0_out when "10",
            addsub0_0_out when "11",
            (others => '-') when others;

    with neg0_0_sel select
        neg0_0_in <=
            mul1_0_out when "0",
            addsub0_0_out when "1",
            (others => '-') when others;

    with memory0_0_sel select
        memory0_0_in <=
            mul0_0_out when "0",
            mul1_0_out when "1",
            (others => '-') when others;

    with memory1_0_sel select
        memory1_0_in <=
            mul0_0_out when "00",
            neg0_0_out when "01",
            in0_0_out when "10",
            addsub0_0_out when "11",
            (others => '-') when others;

    with memory2_0_sel select
        memory2_0_in <=
            neg0_0_out when "00",
            in0_0_out when "01",
            addsub0_0_out when "10",
            (others => '-') when others;

    with memory3_0_sel select
        memory3_0_in <=
            mul0_0_out when "00",
            in0_0_out when "01",
            neg0_0_out when "10",
            addsub0_0_out when "11",
            (others => '-') when others;

    with memory4_0_sel select
        memory4_0_in <=
            mul1_0_out when "0",
            rec0_0_out when "1",
            (others => '-') when others;

    with memory5_0_sel select
        memory5_0_in <=
            mul0_0_out when "0",
            rec0_0_out when "1",
            (others => '-') when others;

end architecture rtl;


