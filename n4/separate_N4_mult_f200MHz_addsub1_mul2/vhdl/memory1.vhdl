library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory1 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(6 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory1;

architecture rtl of memory1 is

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
                    when "0000000" => forward_ctrl <= '0';
                    when "0000101" => forward_ctrl <= '0';
                    when "0011100" => forward_ctrl <= '0';
                    when "0101011" => forward_ctrl <= '0';
                    when "1000101" => forward_ctrl <= '0';
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
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 12, <b_asic.port.InputPort object at 0x7fae92fe4670>: 16}, 'in1.0')
                when "0000000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 8, <b_asic.port.InputPort object at 0x7fae92fd7850>: 12, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 13, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 13}, 'in6.0')
                when "0000101" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(29, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 14, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 10, <b_asic.port.InputPort object at 0x7fae92fd7230>: 15}, 'addsub17.0')
                when "0011100" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "0101011" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(70, <b_asic.port.OutputPort object at 0x7fae92fd4280>, {<b_asic.port.InputPort object at 0x7fae92fd3d90>: 22, <b_asic.port.InputPort object at 0x7fae92fd4ad0>: 23, <b_asic.port.InputPort object at 0x7fae92fd4910>: 23, <b_asic.port.InputPort object at 0x7fae92fd4fa0>: 27, <b_asic.port.InputPort object at 0x7fae92fd46e0>: 28}, 'neg4.0')
                when "1000101" =>
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
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 12, <b_asic.port.InputPort object at 0x7fae92fe4670>: 16}, 'in1.0')
                when "0001011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 8, <b_asic.port.InputPort object at 0x7fae92fd7850>: 12, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 13, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 13}, 'in6.0')
                when "0001100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 12, <b_asic.port.InputPort object at 0x7fae92fe4670>: 16}, 'in1.0')
                when "0001111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 8, <b_asic.port.InputPort object at 0x7fae92fd7850>: 12, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 13, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 13}, 'in6.0')
                when "0010000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 8, <b_asic.port.InputPort object at 0x7fae92fd7850>: 12, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 13, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 13}, 'in6.0')
                when "0010001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(29, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 14, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 10, <b_asic.port.InputPort object at 0x7fae92fd7230>: 15}, 'addsub17.0')
                when "0100101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(29, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 14, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 10, <b_asic.port.InputPort object at 0x7fae92fd7230>: 15}, 'addsub17.0')
                when "0101001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(29, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 14, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 10, <b_asic.port.InputPort object at 0x7fae92fd7230>: 15}, 'addsub17.0')
                when "0101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "0111111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "1000000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "1000001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "1000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd2ac0>, {<b_asic.port.InputPort object at 0x7fae92fd2820>: 22, <b_asic.port.InputPort object at 0x7fae92fd2c10>: 27, <b_asic.port.InputPort object at 0x7fae92fe4210>: 26, <b_asic.port.InputPort object at 0x7fae92fd2660>: 23, <b_asic.port.InputPort object at 0x7fae92fd1470>: 21}, 'neg2.0')
                when "1000101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <b_asic.port.OutputPort object at 0x7fae92fd4280>, {<b_asic.port.InputPort object at 0x7fae92fd3d90>: 22, <b_asic.port.InputPort object at 0x7fae92fd4ad0>: 23, <b_asic.port.InputPort object at 0x7fae92fd4910>: 23, <b_asic.port.InputPort object at 0x7fae92fd4fa0>: 27, <b_asic.port.InputPort object at 0x7fae92fd46e0>: 28}, 'neg4.0')
                when "1011010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <b_asic.port.OutputPort object at 0x7fae92fd4280>, {<b_asic.port.InputPort object at 0x7fae92fd3d90>: 22, <b_asic.port.InputPort object at 0x7fae92fd4ad0>: 23, <b_asic.port.InputPort object at 0x7fae92fd4910>: 23, <b_asic.port.InputPort object at 0x7fae92fd4fa0>: 27, <b_asic.port.InputPort object at 0x7fae92fd46e0>: 28}, 'neg4.0')
                when "1011011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <b_asic.port.OutputPort object at 0x7fae92fd4280>, {<b_asic.port.InputPort object at 0x7fae92fd3d90>: 22, <b_asic.port.InputPort object at 0x7fae92fd4ad0>: 23, <b_asic.port.InputPort object at 0x7fae92fd4910>: 23, <b_asic.port.InputPort object at 0x7fae92fd4fa0>: 27, <b_asic.port.InputPort object at 0x7fae92fd46e0>: 28}, 'neg4.0')
                when "1011111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(70, <b_asic.port.OutputPort object at 0x7fae92fd4280>, {<b_asic.port.InputPort object at 0x7fae92fd3d90>: 22, <b_asic.port.InputPort object at 0x7fae92fd4ad0>: 23, <b_asic.port.InputPort object at 0x7fae92fd4910>: 23, <b_asic.port.InputPort object at 0x7fae92fd4fa0>: 27, <b_asic.port.InputPort object at 0x7fae92fd46e0>: 28}, 'neg4.0')
                when "1100000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

