library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory34 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(8 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory34;

architecture rtl of memory34 is

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
                    when "100011010" => forward_ctrl <= '1';
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
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100011010" =>
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
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100011100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100100000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100101000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100110010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100110101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "100111111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101000000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101001010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101001011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101010110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101100001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(283, <.port.OutputPort object at 0x7f0656853d90>, {<.port.InputPort object at 0x7f0656853af0>: 72, <.port.InputPort object at 0x7f065685c210>: 7, <.port.InputPort object at 0x7f065685c3d0>: 17, <.port.InputPort object at 0x7f065685c750>: 28, <.port.InputPort object at 0x7f065685c910>: 1, <.port.InputPort object at 0x7f065685cad0>: 38, <.port.InputPort object at 0x7f065685cc90>: 7, <.port.InputPort object at 0x7f065685ce50>: 49, <.port.InputPort object at 0x7f06567b38c0>: 15, <.port.InputPort object at 0x7f065685d080>: 61, <.port.InputPort object at 0x7f06567f0130>: 25, <.port.InputPort object at 0x7f065685d2b0>: 72, <.port.InputPort object at 0x7f065685d470>: 39, <.port.InputPort object at 0x7f065685d630>: 83, <.port.InputPort object at 0x7f065685d7f0>: 50, <.port.InputPort object at 0x7f065685d9b0>: 61, <.port.InputPort object at 0x7f065685db70>: 83, <.port.InputPort object at 0x7f0656ba23c0>: 3}, 'addsub723.0')
                when "101101100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

