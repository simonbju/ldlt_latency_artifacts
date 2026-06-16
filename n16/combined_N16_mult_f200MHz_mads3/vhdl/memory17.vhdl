library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory17 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(10 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory17;

architecture rtl of memory17 is

    -- HDL memory description
    type mem_type is array(0 to 0) of std_logic_vector(31 downto 0);
    signal memory : mem_type := (others => (others => '0'));

    -- Memory address generation
    signal read_port_0 : std_logic_vector(31 downto 0);
    signal read_adr_0 : unsigned(0 downto 0);
    signal read_en_0 : std_logic;
    signal write_port_0 : std_logic_vector(31 downto 0);
    signal write_adr_0 : unsigned(0 downto 0);
    signal write_en_0 : std_logic;

    -- Address generation multiplexing signals
    signal write_adr_0_0_0 : unsigned(0 downto 0);
    signal write_en_0_0_0 : std_logic;
    signal read_adr_0_0_0 : unsigned(0 downto 0);
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
                    when "00011000111" => forward_ctrl <= '0';
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
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011000111" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
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
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011010000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011010100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011100110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011101011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011110000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00011111000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100000010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100001000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100001110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100010101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100011111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(200, <b_asic.port.OutputPort object at 0x7f40a77a9390>, {<b_asic.port.InputPort object at 0x7f40a77a9080>: 79, <b_asic.port.InputPort object at 0x7f40a77b2820>: 113, <b_asic.port.InputPort object at 0x7f40a77c0280>: 72, <b_asic.port.InputPort object at 0x7f40a77c1fd0>: 66, <b_asic.port.InputPort object at 0x7f40a77c3a10>: 60, <b_asic.port.InputPort object at 0x7f40a77c91d0>: 50, <b_asic.port.InputPort object at 0x7f40a77ca5f0>: 42, <b_asic.port.InputPort object at 0x7f40a77cb700>: 37, <b_asic.port.InputPort object at 0x7f40a77d0590>: 32, <b_asic.port.InputPort object at 0x7f40a77d1080>: 20, <b_asic.port.InputPort object at 0x7f40a77d17f0>: 14, <b_asic.port.InputPort object at 0x7f40a77a9780>: 10, <b_asic.port.InputPort object at 0x7f40a7916c10>: 89}, 'mads1274.0')
                when "00100110111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

