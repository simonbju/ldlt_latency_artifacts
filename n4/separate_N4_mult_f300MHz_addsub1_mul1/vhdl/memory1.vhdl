library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory1 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(7 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory1;

architecture rtl of memory1 is

    -- HDL memory description
    type mem_type is array(0 to 6) of std_logic_vector(31 downto 0);
    signal memory : mem_type := (others => (others => '0'));

    -- Memory address generation
    signal read_port_0 : std_logic_vector(31 downto 0);
    signal read_adr_0 : unsigned(2 downto 0);
    signal read_en_0 : std_logic;
    signal write_port_0 : std_logic_vector(31 downto 0);
    signal write_adr_0 : unsigned(2 downto 0);
    signal write_en_0 : std_logic;

    -- Address generation multiplexing signals
    signal write_adr_0_0_0 : unsigned(2 downto 0);
    signal write_en_0_0_0 : std_logic;
    signal read_adr_0_0_0 : unsigned(2 downto 0);
    signal read_en_0_0_0 : std_logic;

    -- Type conversion for interface
    signal p_0_in_internal : std_logic_vector(31 downto 0) := (others => '0');
    signal p_0_out_internal : std_logic_vector(31 downto 0) := (others => '0');
    signal forward_ctrl : std_logic;

begin


    -- Type conversions
    p_0_in_internal <= p_0_in;
    p_0_out <= p_0_out_internal;

    -- Control signal registers
    control_regs_proc: process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                read_adr_0 <= read_adr_0_0_0;
                read_en_0 <= read_en_0_0_0;
                write_adr_0 <= write_adr_0_0_0;
                write_en_0 <= write_en_0_0_0;
            end if;
        end if;
    end process control_regs_proc;

    -- Memory
    mem_0_proc: process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if write_en_0 = '1' then
                    memory(to_integer(write_adr_0)) <= write_port_0;
                end if;
            end if;
        end if;
    end process mem_0_proc;
    read_port_0 <= memory(to_integer(read_adr_0));
    write_port_0 <= p_0_in_internal;

    -- Input and output assignments
    output_reg_proc: process(clk)
    begin
        if rising_edge(clk) then
            if forward_ctrl = '1' then
                p_0_out_internal <= p_0_in_internal;
            else
                p_0_out_internal <= read_port_0;
            end if;
        end if;
    end process output_reg_proc;
    forward_ctrl_rom_proc: process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                case schedule_cnt is
                    when "00010010" => forward_ctrl <= '1';
                    when "00011000" => forward_ctrl <= '1';
                    when "00011001" => forward_ctrl <= '1';
                    when "00011010" => forward_ctrl <= '0';
                    when "00111010" => forward_ctrl <= '1';
                    when "01000000" => forward_ctrl <= '1';
                    when "01000001" => forward_ctrl <= '1';
                    when "01000010" => forward_ctrl <= '0';
                    when "01000011" => forward_ctrl <= '0';
                    when "01100010" => forward_ctrl <= '1';
                    when "01101000" => forward_ctrl <= '1';
                    when "01101001" => forward_ctrl <= '0';
                    when "01101010" => forward_ctrl <= '1';
                    when "01101011" => forward_ctrl <= '0';
                    when "01101100" => forward_ctrl <= '0';
                    when "01101101" => forward_ctrl <= '0';
                    when "10001010" => forward_ctrl <= '1';
                    when others => forward_ctrl <= '-';
                end case;
            end if;
        end if;
    end process forward_ctrl_rom_proc;

    --
    -- Memory write address generation
    --
    mem_write_address_proc: process(schedule_cnt)
    begin
            case schedule_cnt is
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 57}, 'rec0.0')
                when "00010010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(25, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fd7690>: 1, <.port.InputPort object at 0x7fae92fd78c0>: 3}, 'mul0.0')
                when "00011000" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 3, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 48}, 'mul1.0')
                when "00011001" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 48, <.port.InputPort object at 0x7fae92fd7ee0>: 3}, 'mul2.0')
                when "00011010" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(59, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 57, <.port.InputPort object at 0x7fae92fd6a50>: 2, <.port.InputPort object at 0x7fae92fd6d60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "00111010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd5e80>, {<.port.InputPort object at 0x7fae92fd5a20>: 1, <.port.InputPort object at 0x7fae92fd63c0>: 3}, 'mul32.0')
                when "01000000" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 3, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 47}, 'mul37.0')
                when "01000001" =>
                    write_adr_0_0_0 <= to_unsigned(5, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(67, <.port.OutputPort object at 0x7fae92fd6ac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 3}, 'mul36.0')
                when "01000010" =>
                    write_adr_0_0_0 <= to_unsigned(6, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(68, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 47}, 'mul11.0')
                when "01000011" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(105, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe41a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "01101000" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 3}, 'mul13.0')
                when "01101001" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(107, <.port.OutputPort object at 0x7fae92fd1da0>, {<.port.InputPort object at 0x7fae92fbfb60>: 1}, 'mul16.0')
                when "01101010" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(108, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 2}, 'mul19.0')
                when "01101011" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(109, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe4de0>: 47}, 'mul15.0')
                when "01101100" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(110, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 44}, 'mul18.0')
                when "01101101" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                when others =>
                    write_adr_0_0_0 <= (others => '-');
                    write_en_0_0_0 <= '0';
            end case;
    end process mem_write_address_proc;


    --
    -- Memory read address generation
    --
    mem_read_address_proc: process(schedule_cnt)
    begin
            case schedule_cnt is
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 57}, 'rec0.0')
                when "00010010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 57}, 'rec0.0')
                when "00010011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(25, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fd7690>: 1, <.port.InputPort object at 0x7fae92fd78c0>: 3}, 'mul0.0')
                when "00011000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 3, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 48}, 'mul1.0')
                when "00011001" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(25, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fd7690>: 1, <.port.InputPort object at 0x7fae92fd78c0>: 3}, 'mul0.0')
                when "00011010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 3, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 48}, 'mul1.0')
                when "00011011" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 48, <.port.InputPort object at 0x7fae92fd7ee0>: 3}, 'mul2.0')
                when "00011100" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(59, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 57, <.port.InputPort object at 0x7fae92fd6a50>: 2, <.port.InputPort object at 0x7fae92fd6d60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "00111010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(59, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 57, <.port.InputPort object at 0x7fae92fd6a50>: 2, <.port.InputPort object at 0x7fae92fd6d60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "00111011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(59, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 57, <.port.InputPort object at 0x7fae92fd6a50>: 2, <.port.InputPort object at 0x7fae92fd6d60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "00111100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd5e80>, {<.port.InputPort object at 0x7fae92fd5a20>: 1, <.port.InputPort object at 0x7fae92fd63c0>: 3}, 'mul32.0')
                when "01000000" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 3, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 47}, 'mul37.0')
                when "01000001" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd5e80>, {<.port.InputPort object at 0x7fae92fd5a20>: 1, <.port.InputPort object at 0x7fae92fd63c0>: 3}, 'mul32.0')
                when "01000010" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 3, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 47}, 'mul37.0')
                when "01000011" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(67, <.port.OutputPort object at 0x7fae92fd6ac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 3}, 'mul36.0')
                when "01000100" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 3, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 48}, 'mul1.0')
                when "01001000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 48, <.port.InputPort object at 0x7fae92fd7ee0>: 3}, 'mul2.0')
                when "01001001" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 57}, 'rec0.0')
                when "01001010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "01100110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(105, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe41a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "01101000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(105, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe41a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "01101001" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(107, <.port.OutputPort object at 0x7fae92fd1da0>, {<.port.InputPort object at 0x7fae92fbfb60>: 1}, 'mul16.0')
                when "01101010" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 3}, 'mul13.0')
                when "01101011" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(108, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 2}, 'mul19.0')
                when "01101100" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 3, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 47}, 'mul37.0')
                when "01101111" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(68, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 47}, 'mul11.0')
                when "01110001" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(59, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 57, <.port.InputPort object at 0x7fae92fd6a50>: 2, <.port.InputPort object at 0x7fae92fd6d60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "01110010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10001110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10010101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10010110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(139, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 3, <.port.InputPort object at 0x7fae92fd4670>: 14, <.port.InputPort object at 0x7fae92fd3930>: 13, <.port.InputPort object at 0x7fae92fd0600>: 12, <.port.InputPort object at 0x7fae92fd4980>: 4, <.port.InputPort object at 0x7fae92fd4b40>: 5, <.port.InputPort object at 0x7fae92fd34d0>: 2, <.port.InputPort object at 0x7fae92fd0c20>: 1}, 'rec3.0')
                when "10010111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(110, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 44}, 'mul18.0')
                when "10011000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 2, <.port.InputPort object at 0x7fae92fd2430>: 56, <.port.InputPort object at 0x7fae92fd25f0>: 5, <.port.InputPort object at 0x7fae92fd1b00>: 4, <.port.InputPort object at 0x7fae92fd2890>: 3, <.port.InputPort object at 0x7fae92fd14e0>: 1}, 'rec1.0')
                when "10011001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(109, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe4de0>: 47}, 'mul15.0')
                when "10011010" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

