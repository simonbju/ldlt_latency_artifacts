library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory18 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(9 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory18;

architecture rtl of memory18 is

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
                    when "1000100100" => forward_ctrl <= '0';
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
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1000100100" =>
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
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1000110111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1000111101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1001000000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1001010100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1001010110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1001101100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1001101110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1010000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1010011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1010011101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1010110011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1010110101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1011001100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(549, <.port.OutputPort object at 0x7f40a7b7bd90>, {<.port.InputPort object at 0x7f40a79b5e80>: 51, <.port.InputPort object at 0x7f40a79cee40>: 29, <.port.InputPort object at 0x7f40a7a67620>: 97, <.port.InputPort object at 0x7f40a79601a0>: 20, <.port.InputPort object at 0x7f40a77994e0>: 172, <.port.InputPort object at 0x7f40a7799c50>: 75, <.port.InputPort object at 0x7f40a7b2a970>: 26, <.port.InputPort object at 0x7f40a7b2a6d0>: 49, <.port.InputPort object at 0x7f40a7c26900>: 119, <.port.InputPort object at 0x7f40a7c11da0>: 144, <.port.InputPort object at 0x7f40a7ada6d0>: 73, <.port.InputPort object at 0x7f40a7b29b00>: 97, <.port.InputPort object at 0x7f40a779a430>: 122, <.port.InputPort object at 0x7f40a779a660>: 146, <.port.InputPort object at 0x7f40a7ae4c20>: 169}, 'mads1098.0')
                when "1011001111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

