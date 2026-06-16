library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(7 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory0;

architecture rtl of memory0 is

    -- HDL memory description
    type mem_type is array(0 to 8) of std_logic_vector(31 downto 0);
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
                    when "00000000" => forward_ctrl <= '0';
                    when "00000001" => forward_ctrl <= '0';
                    when "00000010" => forward_ctrl <= '0';
                    when "00000011" => forward_ctrl <= '0';
                    when "00000100" => forward_ctrl <= '0';
                    when "00000101" => forward_ctrl <= '0';
                    when "00000110" => forward_ctrl <= '0';
                    when "00000111" => forward_ctrl <= '0';
                    when "00001000" => forward_ctrl <= '0';
                    when "00101000" => forward_ctrl <= '0';
                    when "00101001" => forward_ctrl <= '0';
                    when "00101010" => forward_ctrl <= '0';
                    when "00101011" => forward_ctrl <= '0';
                    when "00101100" => forward_ctrl <= '0';
                    when "01010000" => forward_ctrl <= '0';
                    when "01010001" => forward_ctrl <= '0';
                    when "01010011" => forward_ctrl <= '0';
                    when "01010100" => forward_ctrl <= '0';
                    when "01111010" => forward_ctrl <= '0';
                    when "01111011" => forward_ctrl <= '0';
                    when "01111100" => forward_ctrl <= '0';
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
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 18, <b_asic.port.InputPort object at 0x7fae92fe4670>: 24}, 'in1.0')
                when "00000000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(2, <b_asic.port.OutputPort object at 0x7fae92fbdda0>, {<b_asic.port.InputPort object at 0x7fae92fe4440>: 29}, 'in2.0')
                when "00000001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(3, <b_asic.port.OutputPort object at 0x7fae92fbde80>, {<b_asic.port.InputPort object at 0x7fae92fbf2a0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7620>: 23, <b_asic.port.InputPort object at 0x7fae92fe4bb0>: 24}, 'in3.0')
                when "00000010" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(4, <b_asic.port.OutputPort object at 0x7fae92fbe040>, {<b_asic.port.InputPort object at 0x7fae92fd5f60>: 28}, 'in4.0')
                when "00000011" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(5, <b_asic.port.OutputPort object at 0x7fae92fbe120>, {<b_asic.port.InputPort object at 0x7fae92fe49f0>: 28}, 'in5.0')
                when "00000100" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 15, <b_asic.port.InputPort object at 0x7fae92fd7850>: 22, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 23, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 24}, 'in6.0')
                when "00000101" =>
                    write_adr_0_0_0 <= to_unsigned(5, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(7, <b_asic.port.OutputPort object at 0x7fae92fbe430>, {<b_asic.port.InputPort object at 0x7fae92fd5be0>: 27}, 'in7.0')
                when "00000110" =>
                    write_adr_0_0_0 <= to_unsigned(6, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(8, <b_asic.port.OutputPort object at 0x7fae92fbe510>, {<b_asic.port.InputPort object at 0x7fae92fd57f0>: 27}, 'in8.0')
                when "00000111" =>
                    write_adr_0_0_0 <= to_unsigned(7, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(9, <b_asic.port.OutputPort object at 0x7fae92fbe5f0>, {<b_asic.port.InputPort object at 0x7fae92fd7cb0>: 27}, 'in9.0')
                when "00001000" =>
                    write_adr_0_0_0 <= to_unsigned(8, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(41, <b_asic.port.OutputPort object at 0x7fae92fd6040>, {<b_asic.port.InputPort object at 0x7fae92fd5da0>: 18, <b_asic.port.InputPort object at 0x7fae92fd6190>: 24}, 'addsub18.0')
                when "00101000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(42, <b_asic.port.OutputPort object at 0x7fae92fe4ad0>, {<b_asic.port.InputPort object at 0x7fae92fd20b0>: 29}, 'addsub22.0')
                when "00101001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(43, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 23, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7230>: 24}, 'addsub17.0')
                when "00101010" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd58d0>, {<b_asic.port.InputPort object at 0x7fae92fd55c0>: 28}, 'addsub16.0')
                when "00101011" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(45, <b_asic.port.OutputPort object at 0x7fae92fd7d90>, {<b_asic.port.InputPort object at 0x7fae92fd5240>: 28}, 'addsub20.0')
                when "00101100" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(81, <b_asic.port.OutputPort object at 0x7fae92fd56a0>, {<b_asic.port.InputPort object at 0x7fae92fd5400>: 24, <b_asic.port.InputPort object at 0x7fae92fd2270>: 18}, 'addsub15.0')
                when "01010000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(82, <b_asic.port.OutputPort object at 0x7fae92fd5320>, {<b_asic.port.InputPort object at 0x7fae92fd44b0>: 29}, 'addsub14.0')
                when "01010001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(84, <b_asic.port.OutputPort object at 0x7fae92fd6f90>, {<b_asic.port.InputPort object at 0x7fae92fd0440>: 28}, 'addsub19.0')
                when "01010011" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(85, <b_asic.port.OutputPort object at 0x7fae92fbf700>, {<b_asic.port.InputPort object at 0x7fae92fbf9a0>: 29}, 'addsub0.0')
                when "01010100" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(123, <b_asic.port.OutputPort object at 0x7fae92fbfa80>, {<b_asic.port.InputPort object at 0x7fae92fbfd20>: 28}, 'addsub1.0')
                when "01111010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(124, <b_asic.port.OutputPort object at 0x7fae92fd1010>, {<b_asic.port.InputPort object at 0x7fae92fd0d70>: 28}, 'addsub5.0')
                when "01111011" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(125, <b_asic.port.OutputPort object at 0x7fae92fd2eb0>, {<b_asic.port.InputPort object at 0x7fae92fd30e0>: 28}, 'addsub9.0')
                when "01111100" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
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
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 18, <b_asic.port.InputPort object at 0x7fae92fe4670>: 24}, 'in1.0')
                when "00010001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(3, <b_asic.port.OutputPort object at 0x7fae92fbde80>, {<b_asic.port.InputPort object at 0x7fae92fbf2a0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7620>: 23, <b_asic.port.InputPort object at 0x7fae92fe4bb0>: 24}, 'in3.0')
                when "00010010" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 15, <b_asic.port.InputPort object at 0x7fae92fd7850>: 22, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 23, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 24}, 'in6.0')
                when "00010011" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(1, <b_asic.port.OutputPort object at 0x7fae92fbdc50>, {<b_asic.port.InputPort object at 0x7fae92fbf0e0>: 18, <b_asic.port.InputPort object at 0x7fae92fe4670>: 24}, 'in1.0')
                when "00010111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(3, <b_asic.port.OutputPort object at 0x7fae92fbde80>, {<b_asic.port.InputPort object at 0x7fae92fbf2a0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7620>: 23, <b_asic.port.InputPort object at 0x7fae92fe4bb0>: 24}, 'in3.0')
                when "00011000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(3, <b_asic.port.OutputPort object at 0x7fae92fbde80>, {<b_asic.port.InputPort object at 0x7fae92fbf2a0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7620>: 23, <b_asic.port.InputPort object at 0x7fae92fe4bb0>: 24}, 'in3.0')
                when "00011001" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 15, <b_asic.port.InputPort object at 0x7fae92fd7850>: 22, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 23, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 24}, 'in6.0')
                when "00011010" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 15, <b_asic.port.InputPort object at 0x7fae92fd7850>: 22, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 23, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 24}, 'in6.0')
                when "00011011" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(6, <b_asic.port.OutputPort object at 0x7fae92fbe200>, {<b_asic.port.InputPort object at 0x7fae92fbf460>: 15, <b_asic.port.InputPort object at 0x7fae92fd7850>: 22, <b_asic.port.InputPort object at 0x7fae92fd7a80>: 23, <b_asic.port.InputPort object at 0x7fae92fd7e70>: 24}, 'in6.0')
                when "00011100" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(2, <b_asic.port.OutputPort object at 0x7fae92fbdda0>, {<b_asic.port.InputPort object at 0x7fae92fe4440>: 29}, 'in2.0')
                when "00011101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(4, <b_asic.port.OutputPort object at 0x7fae92fbe040>, {<b_asic.port.InputPort object at 0x7fae92fd5f60>: 28}, 'in4.0')
                when "00011110" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(5, <b_asic.port.OutputPort object at 0x7fae92fbe120>, {<b_asic.port.InputPort object at 0x7fae92fe49f0>: 28}, 'in5.0')
                when "00011111" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(7, <b_asic.port.OutputPort object at 0x7fae92fbe430>, {<b_asic.port.InputPort object at 0x7fae92fd5be0>: 27}, 'in7.0')
                when "00100000" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(8, <b_asic.port.OutputPort object at 0x7fae92fbe510>, {<b_asic.port.InputPort object at 0x7fae92fd57f0>: 27}, 'in8.0')
                when "00100001" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(9, <b_asic.port.OutputPort object at 0x7fae92fbe5f0>, {<b_asic.port.InputPort object at 0x7fae92fd7cb0>: 27}, 'in9.0')
                when "00100010" =>
                    read_adr_0_0_0 <= to_unsigned(8, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(41, <b_asic.port.OutputPort object at 0x7fae92fd6040>, {<b_asic.port.InputPort object at 0x7fae92fd5da0>: 18, <b_asic.port.InputPort object at 0x7fae92fd6190>: 24}, 'addsub18.0')
                when "00111001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 23, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7230>: 24}, 'addsub17.0')
                when "00111010" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(41, <b_asic.port.OutputPort object at 0x7fae92fd6040>, {<b_asic.port.InputPort object at 0x7fae92fd5da0>: 18, <b_asic.port.InputPort object at 0x7fae92fd6190>: 24}, 'addsub18.0')
                when "00111111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 23, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7230>: 24}, 'addsub17.0')
                when "01000000" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <b_asic.port.OutputPort object at 0x7fae92fd5cc0>, {<b_asic.port.InputPort object at 0x7fae92fd59b0>: 23, <b_asic.port.InputPort object at 0x7fae92fd6cf0>: 17, <b_asic.port.InputPort object at 0x7fae92fd7230>: 24}, 'addsub17.0')
                when "01000001" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(42, <b_asic.port.OutputPort object at 0x7fae92fe4ad0>, {<b_asic.port.InputPort object at 0x7fae92fd20b0>: 29}, 'addsub22.0')
                when "01000101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <b_asic.port.OutputPort object at 0x7fae92fd58d0>, {<b_asic.port.InputPort object at 0x7fae92fd55c0>: 28}, 'addsub16.0')
                when "01000110" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(45, <b_asic.port.OutputPort object at 0x7fae92fd7d90>, {<b_asic.port.InputPort object at 0x7fae92fd5240>: 28}, 'addsub20.0')
                when "01000111" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <b_asic.port.OutputPort object at 0x7fae92fd56a0>, {<b_asic.port.InputPort object at 0x7fae92fd5400>: 24, <b_asic.port.InputPort object at 0x7fae92fd2270>: 18}, 'addsub15.0')
                when "01100001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <b_asic.port.OutputPort object at 0x7fae92fd56a0>, {<b_asic.port.InputPort object at 0x7fae92fd5400>: 24, <b_asic.port.InputPort object at 0x7fae92fd2270>: 18}, 'addsub15.0')
                when "01100111" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(82, <b_asic.port.OutputPort object at 0x7fae92fd5320>, {<b_asic.port.InputPort object at 0x7fae92fd44b0>: 29}, 'addsub14.0')
                when "01101101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(84, <b_asic.port.OutputPort object at 0x7fae92fd6f90>, {<b_asic.port.InputPort object at 0x7fae92fd0440>: 28}, 'addsub19.0')
                when "01101110" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(85, <b_asic.port.OutputPort object at 0x7fae92fbf700>, {<b_asic.port.InputPort object at 0x7fae92fbf9a0>: 29}, 'addsub0.0')
                when "01110000" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(123, <b_asic.port.OutputPort object at 0x7fae92fbfa80>, {<b_asic.port.InputPort object at 0x7fae92fbfd20>: 28}, 'addsub1.0')
                when "10010101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(124, <b_asic.port.OutputPort object at 0x7fae92fd1010>, {<b_asic.port.InputPort object at 0x7fae92fd0d70>: 28}, 'addsub5.0')
                when "10010110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(125, <b_asic.port.OutputPort object at 0x7fae92fd2eb0>, {<b_asic.port.InputPort object at 0x7fae92fd30e0>: 28}, 'addsub9.0')
                when "10010111" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

