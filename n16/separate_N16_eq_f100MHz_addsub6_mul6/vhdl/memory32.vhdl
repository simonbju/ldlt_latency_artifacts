library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory32 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(8 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory32;

architecture rtl of memory32 is

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
                    when "100001111" => forward_ctrl <= '1';
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
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100001111" =>
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
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100001111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100010001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100010010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100011110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100100100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100101101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100101111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100110111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "100111001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "101000010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "101001100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "101010101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(272, <b_asic.port.OutputPort object at 0x7f06567e7700>, {<b_asic.port.InputPort object at 0x7f06567e7380>: 16, <b_asic.port.InputPort object at 0x7f0656835a90>: 71, <b_asic.port.InputPort object at 0x7f0656870c20>: 28, <b_asic.port.InputPort object at 0x7f06567048a0>: 62, <b_asic.port.InputPort object at 0x7f0656724670>: 3, <b_asic.port.InputPort object at 0x7f065674eba0>: 1, <b_asic.port.InputPort object at 0x7f06565ffe70>: 3, <b_asic.port.InputPort object at 0x7f0656609b70>: 12, <b_asic.port.InputPort object at 0x7f0656561b00>: 31, <b_asic.port.InputPort object at 0x7f065659e820>: 52, <b_asic.port.InputPort object at 0x7f06563ac3d0>: 41, <b_asic.port.InputPort object at 0x7f06563bf150>: 22, <b_asic.port.InputPort object at 0x7f06564094e0>: 73, <b_asic.port.InputPort object at 0x7f065640a120>: 62, <b_asic.port.InputPort object at 0x7f06567b31c0>: 4, <b_asic.port.InputPort object at 0x7f0656a4faf0>: 33, <b_asic.port.InputPort object at 0x7f0656a0e740>: 43, <b_asic.port.InputPort object at 0x7f0656ba3b60>: 1}, 'addsub610.0')
                when "101010111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

