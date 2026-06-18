library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(6 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory0;

architecture rtl of memory0 is

    -- HDL memory description
    type mem_type is array(0 to 7) of std_logic_vector(31 downto 0);
    signal memory : mem_type := (others => (others => '0'));

    -- Memory address generation
    signal read_port_0 : std_logic_vector(31 downto 0);
    signal read_adr_0 : unsigned(3 downto 0);
    signal read_en_0 : std_logic;
    signal write_port_0 : std_logic_vector(31 downto 0);
    signal write_adr_0 : unsigned(3 downto 0);
    signal write_en_0 : std_logic;

    -- Address generation multiplexing signals
    signal write_adr_0_0_0 : unsigned(3 downto 0);
    signal write_en_0_0_0 : std_logic;
    signal read_adr_0_0_0 : unsigned(3 downto 0);
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
                    when "0001100" => forward_ctrl <= '1';
                    when "0010000" => forward_ctrl <= '1';
                    when "0010001" => forward_ctrl <= '1';
                    when "0010010" => forward_ctrl <= '0';
                    when "0011010" => forward_ctrl <= '0';
                    when "0011110" => forward_ctrl <= '0';
                    when "0100110" => forward_ctrl <= '1';
                    when "0101010" => forward_ctrl <= '1';
                    when "0101011" => forward_ctrl <= '1';
                    when "0101100" => forward_ctrl <= '0';
                    when "0101101" => forward_ctrl <= '0';
                    when "0110100" => forward_ctrl <= '0';
                    when "0111000" => forward_ctrl <= '0';
                    when "1000100" => forward_ctrl <= '1';
                    when "1000101" => forward_ctrl <= '0';
                    when "1000110" => forward_ctrl <= '1';
                    when "1000111" => forward_ctrl <= '0';
                    when "1001110" => forward_ctrl <= '0';
                    when "1001111" => forward_ctrl <= '0';
                    when "1010010" => forward_ctrl <= '0';
                    when "1011110" => forward_ctrl <= '0';
                    when "1011111" => forward_ctrl <= '0';
                    when "1100000" => forward_ctrl <= '0';
                    when "1100001" => forward_ctrl <= '0';
                    when "1100010" => forward_ctrl <= '0';
                    when "1101010" => forward_ctrl <= '0';
                    when "1101011" => forward_ctrl <= '0';
                    when "1101100" => forward_ctrl <= '0';
                    when "1101110" => forward_ctrl <= '1';
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
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0001100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fdb690>: 1, <.port.InputPort object at 0x7fae92fdb8c0>: 3}, 'mul0.0')
                when "0010000" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fdbaf0>: 3, <.port.InputPort object at 0x7fae92fe8c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 32}, 'mul1.0')
                when "0010001" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fdaeb0>: 32, <.port.InputPort object at 0x7fae92fdbee0>: 3}, 'mul2.0')
                when "0010010" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fda040>, {<.port.InputPort object at 0x7fae92fd9da0>: 12, <.port.InputPort object at 0x7fae92fda190>: 16}, 'addsub18.0')
                when "0011010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(31, <.port.OutputPort object at 0x7fae92fdbd90>, {<.port.InputPort object at 0x7fae92fd9240>: 18}, 'addsub20.0')
                when "0011110" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fdaa50>: 2, <.port.InputPort object at 0x7fae92fdad60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "0100110" =>
                    write_adr_0_0_0 <= to_unsigned(5, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd9e80>, {<.port.InputPort object at 0x7fae92fd9a20>: 1, <.port.InputPort object at 0x7fae92fda3c0>: 3}, 'mul32.0')
                when "0101010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fdadd0>, {<.port.InputPort object at 0x7fae92fda7b0>: 3, <.port.InputPort object at 0x7fae92fdb2a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 31}, 'mul37.0')
                when "0101011" =>
                    write_adr_0_0_0 <= to_unsigned(6, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(45, <.port.OutputPort object at 0x7fae92fdaac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 3}, 'mul36.0')
                when "0101100" =>
                    write_adr_0_0_0 <= to_unsigned(7, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(46, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 31}, 'mul11.0')
                when "0101101" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd96a0>, {<.port.InputPort object at 0x7fae92fd9400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "0110100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(57, <.port.OutputPort object at 0x7fae92fbf700>, {<.port.InputPort object at 0x7fae92fbf9a0>: 19}, 'addsub0.0')
                when "0111000" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe81a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "1000100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(70, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 3}, 'mul13.0')
                when "1000101" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd1da0>, {<.port.InputPort object at 0x7fae92fbfb60>: 1}, 'mul16.0')
                when "1000110" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(72, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 2}, 'mul19.0')
                when "1000111" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(79, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe8de0>: 25}, 'mul15.0')
                when "1001110" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 25}, 'mul18.0')
                when "1001111" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(83, <.port.OutputPort object at 0x7fae92fd2eb0>, {<.port.InputPort object at 0x7fae92fd30e0>: 20}, 'addsub9.0')
                when "1010010" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(95, <.port.OutputPort object at 0x7fae92fd0210>, {<.port.InputPort object at 0x7fae92fbfee0>: 2}, 'mul6.0')
                when "1011110" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(96, <.port.OutputPort object at 0x7fae92fd0c90>, {<.port.InputPort object at 0x7fae92fd0980>: 2}, 'mul10.0')
                when "1011111" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(97, <.port.OutputPort object at 0x7fae92fd3540>, {<.port.InputPort object at 0x7fae92fd32a0>: 2}, 'mul22.0')
                when "1100000" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(98, <.port.OutputPort object at 0x7fae92fd3e70>, {<.port.InputPort object at 0x7fae92fd3af0>: 3}, 'mul25.0')
                when "1100001" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd89f0>, {<.port.InputPort object at 0x7fae92fd8f30>: 3}, 'mul27.0')
                when "1100010" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(107, <.port.OutputPort object at 0x7fae92fd06e0>, {<.port.InputPort object at 0x7fae92fbec10>: 7}, 'mul7.0')
                when "1101010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(108, <.port.OutputPort object at 0x7fae92fd3a10>, {<.port.InputPort object at 0x7fae92fbecf0>: 3}, 'mul23.0')
                when "1101011" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(109, <.port.OutputPort object at 0x7fae92fe8ec0>, {<.port.InputPort object at 0x7fae92fbe970>: 4}, 'addsub23.0')
                when "1101100" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(111, <.port.OutputPort object at 0x7fae92fd2510>, {<.port.InputPort object at 0x7fae92fbeb30>: 1}, 'addsub8.0')
                when "1101110" =>
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
                -- MemoryVariable(107, <.port.OutputPort object at 0x7fae92fd06e0>, {<.port.InputPort object at 0x7fae92fbec10>: 7}, 'mul7.0')
                when "1110000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0001100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0001101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fdb690>: 1, <.port.InputPort object at 0x7fae92fdb8c0>: 3}, 'mul0.0')
                when "0010000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fdbaf0>: 3, <.port.InputPort object at 0x7fae92fe8c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 32}, 'mul1.0')
                when "0010001" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fdb690>: 1, <.port.InputPort object at 0x7fae92fdb8c0>: 3}, 'mul0.0')
                when "0010010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fdbaf0>: 3, <.port.InputPort object at 0x7fae92fe8c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 32}, 'mul1.0')
                when "0010011" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fdaeb0>: 32, <.port.InputPort object at 0x7fae92fdbee0>: 3}, 'mul2.0')
                when "0010100" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fda040>, {<.port.InputPort object at 0x7fae92fd9da0>: 12, <.port.InputPort object at 0x7fae92fda190>: 16}, 'addsub18.0')
                when "0100101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fdaa50>: 2, <.port.InputPort object at 0x7fae92fdad60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "0100110" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fdaa50>: 2, <.port.InputPort object at 0x7fae92fdad60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "0100111" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fdaa50>: 2, <.port.InputPort object at 0x7fae92fdad60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "0101000" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fda040>, {<.port.InputPort object at 0x7fae92fd9da0>: 12, <.port.InputPort object at 0x7fae92fda190>: 16}, 'addsub18.0')
                when "0101001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd9e80>, {<.port.InputPort object at 0x7fae92fd9a20>: 1, <.port.InputPort object at 0x7fae92fda3c0>: 3}, 'mul32.0')
                when "0101010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fdadd0>, {<.port.InputPort object at 0x7fae92fda7b0>: 3, <.port.InputPort object at 0x7fae92fdb2a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 31}, 'mul37.0')
                when "0101011" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd9e80>, {<.port.InputPort object at 0x7fae92fd9a20>: 1, <.port.InputPort object at 0x7fae92fda3c0>: 3}, 'mul32.0')
                when "0101100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fdadd0>, {<.port.InputPort object at 0x7fae92fda7b0>: 3, <.port.InputPort object at 0x7fae92fdb2a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 31}, 'mul37.0')
                when "0101101" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(45, <.port.OutputPort object at 0x7fae92fdaac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 3}, 'mul36.0')
                when "0101110" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(31, <.port.OutputPort object at 0x7fae92fdbd90>, {<.port.InputPort object at 0x7fae92fd9240>: 18}, 'addsub20.0')
                when "0101111" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fdbaf0>: 3, <.port.InputPort object at 0x7fae92fe8c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 32}, 'mul1.0')
                when "0110000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(19, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fdaeb0>: 32, <.port.InputPort object at 0x7fae92fdbee0>: 3}, 'mul2.0')
                when "0110001" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf310>: 1, <.port.InputPort object at 0x7fae92fbf4d0>: 2, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0110010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd96a0>, {<.port.InputPort object at 0x7fae92fd9400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "0111111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd96a0>, {<.port.InputPort object at 0x7fae92fd9400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "1000011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe81a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "1000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe81a0>: 2, <.port.InputPort object at 0x7fae92fd1940>: 1}, 'mul17.0')
                when "1000101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd1da0>, {<.port.InputPort object at 0x7fae92fbfb60>: 1}, 'mul16.0')
                when "1000110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 3}, 'mul13.0')
                when "1000111" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(72, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 2}, 'mul19.0')
                when "1001000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fdadd0>, {<.port.InputPort object at 0x7fae92fda7b0>: 3, <.port.InputPort object at 0x7fae92fdb2a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 31}, 'mul37.0')
                when "1001001" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(57, <.port.OutputPort object at 0x7fae92fbf700>, {<.port.InputPort object at 0x7fae92fbf9a0>: 19}, 'addsub0.0')
                when "1001010" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(46, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 31}, 'mul11.0')
                when "1001011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fdaa50>: 2, <.port.InputPort object at 0x7fae92fdad60>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 3}, 'rec2.0')
                when "1001100" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(95, <.port.OutputPort object at 0x7fae92fd0210>, {<.port.InputPort object at 0x7fae92fbfee0>: 2}, 'mul6.0')
                when "1011111" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(96, <.port.OutputPort object at 0x7fae92fd0c90>, {<.port.InputPort object at 0x7fae92fd0980>: 2}, 'mul10.0')
                when "1100000" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(97, <.port.OutputPort object at 0x7fae92fd3540>, {<.port.InputPort object at 0x7fae92fd32a0>: 2}, 'mul22.0')
                when "1100001" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(98, <.port.OutputPort object at 0x7fae92fd3e70>, {<.port.InputPort object at 0x7fae92fd3af0>: 3}, 'mul25.0')
                when "1100011" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd89f0>, {<.port.InputPort object at 0x7fae92fd8f30>: 3}, 'mul27.0')
                when "1100100" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(83, <.port.OutputPort object at 0x7fae92fd2eb0>, {<.port.InputPort object at 0x7fae92fd30e0>: 20}, 'addsub9.0')
                when "1100101" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(79, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe8de0>: 25}, 'mul15.0')
                when "1100110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 25}, 'mul18.0')
                when "1100111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(108, <.port.OutputPort object at 0x7fae92fd3a10>, {<.port.InputPort object at 0x7fae92fbecf0>: 3}, 'mul23.0')
                when "1101101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(111, <.port.OutputPort object at 0x7fae92fd2510>, {<.port.InputPort object at 0x7fae92fbeb30>: 1}, 'addsub8.0')
                when "1101110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(109, <.port.OutputPort object at 0x7fae92fe8ec0>, {<.port.InputPort object at 0x7fae92fbe970>: 4}, 'addsub23.0')
                when "1101111" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

