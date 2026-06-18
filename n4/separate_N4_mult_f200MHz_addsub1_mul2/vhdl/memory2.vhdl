library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory2 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(6 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory2;

architecture rtl of memory2 is

    -- HDL memory description
    type mem_type is array(0 to 1) of std_logic_vector(31 downto 0);
    signal memory : mem_type := (others => (others => '0'));

    -- Memory address generation
    signal read_port_0 : std_logic_vector(31 downto 0);
    signal read_adr_0 : unsigned(1 downto 0);
    signal read_en_0 : std_logic;
    signal write_port_0 : std_logic_vector(31 downto 0);
    signal write_adr_0 : unsigned(1 downto 0);
    signal write_en_0 : std_logic;

    -- Address generation multiplexing signals
    signal write_adr_0_0_0 : unsigned(1 downto 0);
    signal write_en_0_0_0 : std_logic;
    signal read_adr_0_0_0 : unsigned(1 downto 0);
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
                    when "0010000" => forward_ctrl <= '1';
                    when "0010100" => forward_ctrl <= '1';
                    when "0010101" => forward_ctrl <= '0';
                    when "0010110" => forward_ctrl <= '0';
                    when "0101010" => forward_ctrl <= '1';
                    when "0101011" => forward_ctrl <= '1';
                    when "0101110" => forward_ctrl <= '1';
                    when "0101111" => forward_ctrl <= '0';
                    when "0110000" => forward_ctrl <= '0';
                    when "0110111" => forward_ctrl <= '0';
                    when "1001000" => forward_ctrl <= '1';
                    when "1001001" => forward_ctrl <= '0';
                    when "1001010" => forward_ctrl <= '0';
                    when "1010000" => forward_ctrl <= '0';
                    when "1100001" => forward_ctrl <= '1';
                    when "1100010" => forward_ctrl <= '1';
                    when "1100011" => forward_ctrl <= '0';
                    when "1100100" => forward_ctrl <= '0';
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
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fd78c0>: 1}, 'mul0.0')
                when "0010000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(21, <.port.OutputPort object at 0x7fae92fd7700>, {<.port.InputPort object at 0x7fae92fd5fd0>: 1}, 'mul39.0')
                when "0010100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(22, <.port.OutputPort object at 0x7fae92fd7930>, {<.port.InputPort object at 0x7fae92fd5c50>: 2}, 'mul40.0')
                when "0010101" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(23, <.port.OutputPort object at 0x7fae92fd7f50>, {<.port.InputPort object at 0x7fae92fd7d20>: 3}, 'mul42.0')
                when "0010110" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd5e80>, {<.port.InputPort object at 0x7fae92fd63c0>: 1}, 'mul32.0')
                when "0101010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fd6ac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 1}, 'mul36.0')
                when "0101011" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(47, <.port.OutputPort object at 0x7fae92fd5a90>, {<.port.InputPort object at 0x7fae92fd5630>: 1}, 'mul31.0')
                when "0101110" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(48, <.port.OutputPort object at 0x7fae92fd64a0>, {<.port.InputPort object at 0x7fae92fd17f0>: 2}, 'mul34.0')
                when "0101111" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(49, <.port.OutputPort object at 0x7fae92fbf8c0>, {<.port.InputPort object at 0x7fae92fbf690>: 3}, 'mul3.0')
                when "0110000" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "0110111" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(73, <.port.OutputPort object at 0x7fae92fd1a20>, {<.port.InputPort object at 0x7fae92fd04b0>: 1}, 'mul14.0')
                when "1001000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(74, <.port.OutputPort object at 0x7fae92fbfc40>, {<.port.InputPort object at 0x7fae92fbfa10>: 2}, 'mul4.0')
                when "1001001" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(75, <.port.OutputPort object at 0x7fae92fd1390>, {<.port.InputPort object at 0x7fae92fd0fa0>: 2}, 'mul12.0')
                when "1001010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 15, <.port.InputPort object at 0x7fae92fd39a0>: 13, <.port.InputPort object at 0x7fae92fd3b60>: 15, <.port.InputPort object at 0x7fae92fd3460>: 11, <.port.InputPort object at 0x7fae92fd0bb0>: 10}, 'neg3.0')
                when "1010000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(98, <.port.OutputPort object at 0x7fae92fd06e0>, {<.port.InputPort object at 0x7fae92fbec10>: 1}, 'mul7.0')
                when "1100001" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd0a60>, {<.port.InputPort object at 0x7fae92fd0de0>: 1}, 'mul9.0')
                when "1100010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(100, <.port.OutputPort object at 0x7fae92fd3380>, {<.port.InputPort object at 0x7fae92fd3150>: 2}, 'mul21.0')
                when "1100011" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(101, <.port.OutputPort object at 0x7fae92fd08a0>, {<.port.InputPort object at 0x7fae92fe4e50>: 3}, 'mul8.0')
                when "1100100" =>
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
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf1c0>, {<.port.InputPort object at 0x7fae92fd78c0>: 1}, 'mul0.0')
                when "0010000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(21, <.port.OutputPort object at 0x7fae92fd7700>, {<.port.InputPort object at 0x7fae92fd5fd0>: 1}, 'mul39.0')
                when "0010100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(22, <.port.OutputPort object at 0x7fae92fd7930>, {<.port.InputPort object at 0x7fae92fd5c50>: 2}, 'mul40.0')
                when "0010110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(23, <.port.OutputPort object at 0x7fae92fd7f50>, {<.port.InputPort object at 0x7fae92fd7d20>: 3}, 'mul42.0')
                when "0011000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd5e80>, {<.port.InputPort object at 0x7fae92fd63c0>: 1}, 'mul32.0')
                when "0101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fd6ac0>, {<.port.InputPort object at 0x7fae92fbf7e0>: 1}, 'mul36.0')
                when "0101011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(47, <.port.OutputPort object at 0x7fae92fd5a90>, {<.port.InputPort object at 0x7fae92fd5630>: 1}, 'mul31.0')
                when "0101110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(48, <.port.OutputPort object at 0x7fae92fd64a0>, {<.port.InputPort object at 0x7fae92fd17f0>: 2}, 'mul34.0')
                when "0110000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(49, <.port.OutputPort object at 0x7fae92fbf8c0>, {<.port.InputPort object at 0x7fae92fbf690>: 3}, 'mul3.0')
                when "0110010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "1000000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "1000001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "1000011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "1000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 15, <.port.InputPort object at 0x7fae92fd19b0>: 13, <.port.InputPort object at 0x7fae92fd1b70>: 11, <.port.InputPort object at 0x7fae92fd1cc0>: 10, <.port.InputPort object at 0x7fae92fbfbd0>: 14}, 'neg1.0')
                when "1000101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(73, <.port.OutputPort object at 0x7fae92fd1a20>, {<.port.InputPort object at 0x7fae92fd04b0>: 1}, 'mul14.0')
                when "1001000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(74, <.port.OutputPort object at 0x7fae92fbfc40>, {<.port.InputPort object at 0x7fae92fbfa10>: 2}, 'mul4.0')
                when "1001010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(75, <.port.OutputPort object at 0x7fae92fd1390>, {<.port.InputPort object at 0x7fae92fd0fa0>: 2}, 'mul12.0')
                when "1001011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 15, <.port.InputPort object at 0x7fae92fd39a0>: 13, <.port.InputPort object at 0x7fae92fd3b60>: 15, <.port.InputPort object at 0x7fae92fd3460>: 11, <.port.InputPort object at 0x7fae92fd0bb0>: 10}, 'neg3.0')
                when "1011001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 15, <.port.InputPort object at 0x7fae92fd39a0>: 13, <.port.InputPort object at 0x7fae92fd3b60>: 15, <.port.InputPort object at 0x7fae92fd3460>: 11, <.port.InputPort object at 0x7fae92fd0bb0>: 10}, 'neg3.0')
                when "1011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 15, <.port.InputPort object at 0x7fae92fd39a0>: 13, <.port.InputPort object at 0x7fae92fd3b60>: 15, <.port.InputPort object at 0x7fae92fd3460>: 11, <.port.InputPort object at 0x7fae92fd0bb0>: 10}, 'neg3.0')
                when "1011100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 15, <.port.InputPort object at 0x7fae92fd39a0>: 13, <.port.InputPort object at 0x7fae92fd3b60>: 15, <.port.InputPort object at 0x7fae92fd3460>: 11, <.port.InputPort object at 0x7fae92fd0bb0>: 10}, 'neg3.0')
                when "1011110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(98, <.port.OutputPort object at 0x7fae92fd06e0>, {<.port.InputPort object at 0x7fae92fbec10>: 1}, 'mul7.0')
                when "1100001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(99, <.port.OutputPort object at 0x7fae92fd0a60>, {<.port.InputPort object at 0x7fae92fd0de0>: 1}, 'mul9.0')
                when "1100010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(100, <.port.OutputPort object at 0x7fae92fd3380>, {<.port.InputPort object at 0x7fae92fd3150>: 2}, 'mul21.0')
                when "1100100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(101, <.port.OutputPort object at 0x7fae92fd08a0>, {<.port.InputPort object at 0x7fae92fe4e50>: 3}, 'mul8.0')
                when "1100110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

