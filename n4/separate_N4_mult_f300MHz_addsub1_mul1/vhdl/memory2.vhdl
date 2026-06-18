library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory2 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(7 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory2;

architecture rtl of memory2 is

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
                    when "00011001" => forward_ctrl <= '0';
                    when "01000001" => forward_ctrl <= '0';
                    when "01010011" => forward_ctrl <= '0';
                    when "01101001" => forward_ctrl <= '0';
                    when "01111001" => forward_ctrl <= '0';
                    when "01111010" => forward_ctrl <= '0';
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
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "00011001" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01000001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01010011" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "01101001" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "01111001" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "01111010" =>
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
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "00111011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "00111100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "01000010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "01000011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(26, <.port.OutputPort object at 0x7fae92fd65f0>, {<.port.InputPort object at 0x7fae92fd6430>: 42, <.port.InputPort object at 0x7fae92fd6820>: 43, <.port.InputPort object at 0x7fae92fd1160>: 36, <.port.InputPort object at 0x7fae92fd69e0>: 35, <.port.InputPort object at 0x7fae92fbf850>: 44}, 'neg5.0')
                when "01000100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01100010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01100011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01100100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01100101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01100110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01101000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01101001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <.port.OutputPort object at 0x7fae92fd16a0>, {<.port.InputPort object at 0x7fae92fd1320>: 25, <.port.InputPort object at 0x7fae92fd19b0>: 22, <.port.InputPort object at 0x7fae92fd1b70>: 19, <.port.InputPort object at 0x7fae92fd1cc0>: 17, <.port.InputPort object at 0x7fae92fbfbd0>: 24}, 'neg1.0')
                when "01101011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(66, <.port.OutputPort object at 0x7fae92fd2ac0>, {<.port.InputPort object at 0x7fae92fd2820>: 36, <.port.InputPort object at 0x7fae92fd2c10>: 44, <.port.InputPort object at 0x7fae92fe4210>: 41, <.port.InputPort object at 0x7fae92fd2660>: 38, <.port.InputPort object at 0x7fae92fd1470>: 34}, 'neg2.0')
                when "01101100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "10001001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "10001010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "10001011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "10001100" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "10001101" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "10001110" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "10001111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "10010000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "10010001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "10010010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "10010011" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "10010100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(122, <.port.OutputPort object at 0x7fae92fd0360>, {<.port.InputPort object at 0x7fae92fbff50>: 23, <.port.InputPort object at 0x7fae92fd0670>: 29, <.port.InputPort object at 0x7fae92fd0830>: 28, <.port.InputPort object at 0x7fae92fd09f0>: 24, <.port.InputPort object at 0x7fae92fd0130>: 17}, 'neg0.0')
                when "10010101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <.port.OutputPort object at 0x7fae92fd3690>, {<.port.InputPort object at 0x7fae92fd3310>: 24, <.port.InputPort object at 0x7fae92fd39a0>: 29, <.port.InputPort object at 0x7fae92fd3b60>: 25, <.port.InputPort object at 0x7fae92fd3460>: 18, <.port.InputPort object at 0x7fae92fd0bb0>: 17}, 'neg3.0')
                when "10010110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(106, <.port.OutputPort object at 0x7fae92fd4280>, {<.port.InputPort object at 0x7fae92fd3d90>: 36, <.port.InputPort object at 0x7fae92fd4ad0>: 38, <.port.InputPort object at 0x7fae92fd4910>: 37, <.port.InputPort object at 0x7fae92fd4fa0>: 43, <.port.InputPort object at 0x7fae92fd46e0>: 47}, 'neg4.0')
                when "10010111" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

