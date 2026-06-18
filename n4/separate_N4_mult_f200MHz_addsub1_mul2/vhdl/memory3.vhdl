library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory3 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(6 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory3;

architecture rtl of memory3 is

    -- HDL memory description
    type mem_type is array(0 to 2) of std_logic_vector(31 downto 0);
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
                    when "0010001" => forward_ctrl <= '0';
                    when "0010101" => forward_ctrl <= '1';
                    when "0010110" => forward_ctrl <= '0';
                    when "0101111" => forward_ctrl <= '1';
                    when "0110000" => forward_ctrl <= '0';
                    when "1000100" => forward_ctrl <= '1';
                    when "1000101" => forward_ctrl <= '1';
                    when "1000110" => forward_ctrl <= '0';
                    when "1001001" => forward_ctrl <= '1';
                    when "1001010" => forward_ctrl <= '0';
                    when "1001111" => forward_ctrl <= '0';
                    when "1100011" => forward_ctrl <= '0';
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
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 2, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 33}, 'mul1.0')
                when "0010000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 26, <.port.InputPort object at 0x7fae92fd6820>: 27, <.port.InputPort object at 0x7fae92fd1160>: 22, <.port.InputPort object at 0x7fae92fd69e0>: 22, <.port.InputPort object at 0x7fae92fbf850>: 27}, 'neg5.0')
                when "0010001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(22, <.port.OutputPort object at 0x7fae92fe4c90>, {<.port.InputPort object at 0x7fae92fe4a60>: 1}, 'mul45.0')
                when "0010101" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(23, <.port.OutputPort object at 0x7fae92fd7b60>, {<.port.InputPort object at 0x7fae92fd5860>: 2}, 'mul41.0')
                when "0010110" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(48, <.port.OutputPort object at 0x7fae92fd7310>, {<.port.InputPort object at 0x7fae92fd52b0>: 1}, 'mul38.0')
                when "0101111" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(49, <.port.OutputPort object at 0x7fae92fd6890>, {<.port.InputPort object at 0x7fae92fd6f20>: 2}, 'mul35.0')
                when "0110000" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe41a0>: 1}, 'mul17.0')
                when "1000100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(70, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 1}, 'mul19.0')
                when "1000101" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe4de0>: 33}, 'mul15.0')
                when "1000110" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(74, <.port.OutputPort object at 0x7fae92fe4280>, {<.port.InputPort object at 0x7fae92fd37e0>: 1}, 'mul43.0')
                when "1001001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(75, <.port.OutputPort object at 0x7fae92fd2c80>, {<.port.InputPort object at 0x7fae92fd2e40>: 3}, 'mul20.0')
                when "1001010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 15, <.port.InputPort object at 0x7fae92fd0670>: 14, <.port.InputPort object at 0x7fae92fd0830>: 17, <.port.InputPort object at 0x7fae92fd09f0>: 15, <.port.InputPort object at 0x7fae92fd0130>: 11}, 'neg0.0')
                when "1001111" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(100, <.port.OutputPort object at 0x7fae92fd3bd0>, {<.port.InputPort object at 0x7fae92fd4050>: 3}, 'mul24.0')
                when "1100011" =>
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
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 2, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 33}, 'mul1.0')
                when "0010000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 2, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 33}, 'mul1.0')
                when "0010001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(22, <.port.OutputPort object at 0x7fae92fe4c90>, {<.port.InputPort object at 0x7fae92fe4a60>: 1}, 'mul45.0')
                when "0010101" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(23, <.port.OutputPort object at 0x7fae92fd7b60>, {<.port.InputPort object at 0x7fae92fd5860>: 2}, 'mul41.0')
                when "0010111" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 26, <.port.InputPort object at 0x7fae92fd6820>: 27, <.port.InputPort object at 0x7fae92fd1160>: 22, <.port.InputPort object at 0x7fae92fd69e0>: 22, <.port.InputPort object at 0x7fae92fbf850>: 27}, 'neg5.0')
                when "0100110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 26, <.port.InputPort object at 0x7fae92fd6820>: 27, <.port.InputPort object at 0x7fae92fd1160>: 22, <.port.InputPort object at 0x7fae92fd69e0>: 22, <.port.InputPort object at 0x7fae92fbf850>: 27}, 'neg5.0')
                when "0101010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 26, <.port.InputPort object at 0x7fae92fd6820>: 27, <.port.InputPort object at 0x7fae92fd1160>: 22, <.port.InputPort object at 0x7fae92fd69e0>: 22, <.port.InputPort object at 0x7fae92fbf850>: 27}, 'neg5.0')
                when "0101011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(48, <.port.OutputPort object at 0x7fae92fd7310>, {<.port.InputPort object at 0x7fae92fd52b0>: 1}, 'mul38.0')
                when "0101111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(17, <.port.OutputPort object at 0x7fae92fbf380>, {<.port.InputPort object at 0x7fae92fd7af0>: 2, <.port.InputPort object at 0x7fae92fe4c20>: 1, <.port.InputPort object at 0x7fae92fd1780>: 33}, 'mul1.0')
                when "0110000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(49, <.port.OutputPort object at 0x7fae92fd6890>, {<.port.InputPort object at 0x7fae92fd6f20>: 2}, 'mul35.0')
                when "0110001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd2350>, {<.port.InputPort object at 0x7fae92fe41a0>: 1}, 'mul17.0')
                when "1000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <.port.OutputPort object at 0x7fae92fd2900>, {<.port.InputPort object at 0x7fae92fd2ba0>: 1}, 'mul19.0')
                when "1000101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(74, <.port.OutputPort object at 0x7fae92fe4280>, {<.port.InputPort object at 0x7fae92fd37e0>: 1}, 'mul43.0')
                when "1001001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(75, <.port.OutputPort object at 0x7fae92fd2c80>, {<.port.InputPort object at 0x7fae92fd2e40>: 3}, 'mul20.0')
                when "1001100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 15, <.port.InputPort object at 0x7fae92fd0670>: 14, <.port.InputPort object at 0x7fae92fd0830>: 17, <.port.InputPort object at 0x7fae92fd09f0>: 15, <.port.InputPort object at 0x7fae92fd0130>: 11}, 'neg0.0')
                when "1011001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 15, <.port.InputPort object at 0x7fae92fd0670>: 14, <.port.InputPort object at 0x7fae92fd0830>: 17, <.port.InputPort object at 0x7fae92fd09f0>: 15, <.port.InputPort object at 0x7fae92fd0130>: 11}, 'neg0.0')
                when "1011100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 15, <.port.InputPort object at 0x7fae92fd0670>: 14, <.port.InputPort object at 0x7fae92fd0830>: 17, <.port.InputPort object at 0x7fae92fd09f0>: 15, <.port.InputPort object at 0x7fae92fd0130>: 11}, 'neg0.0')
                when "1011101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(80, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 15, <.port.InputPort object at 0x7fae92fd0670>: 14, <.port.InputPort object at 0x7fae92fd0830>: 17, <.port.InputPort object at 0x7fae92fd09f0>: 15, <.port.InputPort object at 0x7fae92fd0130>: 11}, 'neg0.0')
                when "1011111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(100, <.port.OutputPort object at 0x7fae92fd3bd0>, {<.port.InputPort object at 0x7fae92fd4050>: 3}, 'mul24.0')
                when "1100101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd1be0>, {<.port.InputPort object at 0x7fae92fe4de0>: 33}, 'mul15.0')
                when "1100110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

