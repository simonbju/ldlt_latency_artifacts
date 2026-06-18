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
                    when "0000001" => forward_ctrl <= '0';
                    when "0000010" => forward_ctrl <= '0';
                    when "0000011" => forward_ctrl <= '0';
                    when "0000100" => forward_ctrl <= '0';
                    when "0000110" => forward_ctrl <= '0';
                    when "0000111" => forward_ctrl <= '0';
                    when "0001000" => forward_ctrl <= '0';
                    when "0001100" => forward_ctrl <= '1';
                    when "0010001" => forward_ctrl <= '1';
                    when "0011010" => forward_ctrl <= '0';
                    when "0011011" => forward_ctrl <= '0';
                    when "0011101" => forward_ctrl <= '0';
                    when "0011110" => forward_ctrl <= '0';
                    when "0100110" => forward_ctrl <= '1';
                    when "0101010" => forward_ctrl <= '1';
                    when "0101011" => forward_ctrl <= '0';
                    when "0110100" => forward_ctrl <= '0';
                    when "0110101" => forward_ctrl <= '0';
                    when "0110111" => forward_ctrl <= '0';
                    when "0111000" => forward_ctrl <= '0';
                    when "1000000" => forward_ctrl <= '1';
                    when "1000100" => forward_ctrl <= '0';
                    when "1000110" => forward_ctrl <= '0';
                    when "1010000" => forward_ctrl <= '0';
                    when "1010001" => forward_ctrl <= '0';
                    when "1010010" => forward_ctrl <= '0';
                    when "1011010" => forward_ctrl <= '1';
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
                -- MemoryVariable(2, <.port.OutputPort object at 0x7fae92fbdda0>, {<.port.InputPort object at 0x7fae92fe4440>: 19}, 'in2.0')
                when "0000001" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(3, <.port.OutputPort object at 0x7fae92fbde80>, {<.port.InputPort object at 0x7fae92fbf2a0>: 10, <.port.InputPort object at 0x7fae92fd7620>: 14, <.port.InputPort object at 0x7fae92fe4bb0>: 15}, 'in3.0')
                when "0000010" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(4, <.port.OutputPort object at 0x7fae92fbe040>, {<.port.InputPort object at 0x7fae92fd5f60>: 18}, 'in4.0')
                when "0000011" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(5, <.port.OutputPort object at 0x7fae92fbe120>, {<.port.InputPort object at 0x7fae92fe49f0>: 18}, 'in5.0')
                when "0000100" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(7, <.port.OutputPort object at 0x7fae92fbe430>, {<.port.InputPort object at 0x7fae92fd5be0>: 17}, 'in7.0')
                when "0000110" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(8, <.port.OutputPort object at 0x7fae92fbe510>, {<.port.InputPort object at 0x7fae92fd57f0>: 17}, 'in8.0')
                when "0000111" =>
                    write_adr_0_0_0 <= to_unsigned(5, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(9, <.port.OutputPort object at 0x7fae92fbe5f0>, {<.port.InputPort object at 0x7fae92fd7cb0>: 17}, 'in9.0')
                when "0001000" =>
                    write_adr_0_0_0 <= to_unsigned(6, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf4d0>: 1, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0001100" =>
                    write_adr_0_0_0 <= to_unsigned(7, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 33, <.port.InputPort object at 0x7fae92fd7ee0>: 1}, 'mul2.0')
                when "0010001" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fd6040>, {<.port.InputPort object at 0x7fae92fd5da0>: 12, <.port.InputPort object at 0x7fae92fd6190>: 16}, 'addsub18.0')
                when "0011010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(28, <.port.OutputPort object at 0x7fae92fe4ad0>, {<.port.InputPort object at 0x7fae92fd20b0>: 19}, 'addsub22.0')
                when "0011011" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(30, <.port.OutputPort object at 0x7fae92fd58d0>, {<.port.InputPort object at 0x7fae92fd55c0>: 18}, 'addsub16.0')
                when "0011101" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(31, <.port.OutputPort object at 0x7fae92fd7d90>, {<.port.InputPort object at 0x7fae92fd5240>: 18}, 'addsub20.0')
                when "0011110" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fd6a50>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 1}, 'rec2.0')
                when "0100110" =>
                    write_adr_0_0_0 <= to_unsigned(5, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 2, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 32}, 'mul37.0')
                when "0101010" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 33}, 'mul11.0')
                when "0101011" =>
                    write_adr_0_0_0 <= to_unsigned(6, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd56a0>, {<.port.InputPort object at 0x7fae92fd5400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "0110100" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(54, <.port.OutputPort object at 0x7fae92fd5320>, {<.port.InputPort object at 0x7fae92fd44b0>: 19}, 'addsub14.0')
                when "0110101" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd6f90>, {<.port.InputPort object at 0x7fae92fd0440>: 18}, 'addsub19.0')
                when "0110111" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(57, <.port.OutputPort object at 0x7fae92fbf700>, {<.port.InputPort object at 0x7fae92fbf9a0>: 19}, 'addsub0.0')
                when "0111000" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 1, <.port.InputPort object at 0x7fae92fd2430>: 36, <.port.InputPort object at 0x7fae92fd25f0>: 2, <.port.InputPort object at 0x7fae92fd1b00>: 2, <.port.InputPort object at 0x7fae92fd2890>: 1}, 'rec1.0')
                when "1000000" =>
                    write_adr_0_0_0 <= to_unsigned(7, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 2}, 'mul13.0')
                when "1000100" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 32}, 'mul18.0')
                when "1000110" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fbfa80>, {<.port.InputPort object at 0x7fae92fbfd20>: 18}, 'addsub1.0')
                when "1010000" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(82, <.port.OutputPort object at 0x7fae92fd1010>, {<.port.InputPort object at 0x7fae92fd0d70>: 18}, 'addsub5.0')
                when "1010001" =>
                    write_adr_0_0_0 <= to_unsigned(2, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(83, <.port.OutputPort object at 0x7fae92fd2eb0>, {<.port.InputPort object at 0x7fae92fd30e0>: 19}, 'addsub9.0')
                when "1010010" =>
                    write_adr_0_0_0 <= to_unsigned(3, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(91, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 1, <.port.InputPort object at 0x7fae92fd4670>: 7, <.port.InputPort object at 0x7fae92fd3930>: 3, <.port.InputPort object at 0x7fae92fd0600>: 3, <.port.InputPort object at 0x7fae92fd4980>: 2, <.port.InputPort object at 0x7fae92fd4b40>: 2, <.port.InputPort object at 0x7fae92fd34d0>: 1}, 'rec3.0')
                when "1011010" =>
                    write_adr_0_0_0 <= to_unsigned(4, write_adr_0_0_0'length);
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
                -- MemoryVariable(3, <.port.OutputPort object at 0x7fae92fbde80>, {<.port.InputPort object at 0x7fae92fbf2a0>: 10, <.port.InputPort object at 0x7fae92fd7620>: 14, <.port.InputPort object at 0x7fae92fe4bb0>: 15}, 'in3.0')
                when "0001011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf4d0>: 1, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0001100" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(3, <.port.OutputPort object at 0x7fae92fbde80>, {<.port.InputPort object at 0x7fae92fbf2a0>: 10, <.port.InputPort object at 0x7fae92fd7620>: 14, <.port.InputPort object at 0x7fae92fe4bb0>: 15}, 'in3.0')
                when "0001111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(3, <.port.OutputPort object at 0x7fae92fbde80>, {<.port.InputPort object at 0x7fae92fbf2a0>: 10, <.port.InputPort object at 0x7fae92fd7620>: 14, <.port.InputPort object at 0x7fae92fe4bb0>: 15}, 'in3.0')
                when "0010000" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 33, <.port.InputPort object at 0x7fae92fd7ee0>: 1}, 'mul2.0')
                when "0010001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(2, <.port.OutputPort object at 0x7fae92fbdda0>, {<.port.InputPort object at 0x7fae92fe4440>: 19}, 'in2.0')
                when "0010011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(4, <.port.OutputPort object at 0x7fae92fbe040>, {<.port.InputPort object at 0x7fae92fd5f60>: 18}, 'in4.0')
                when "0010100" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(5, <.port.OutputPort object at 0x7fae92fbe120>, {<.port.InputPort object at 0x7fae92fe49f0>: 18}, 'in5.0')
                when "0010101" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(7, <.port.OutputPort object at 0x7fae92fbe430>, {<.port.InputPort object at 0x7fae92fd5be0>: 17}, 'in7.0')
                when "0010110" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(8, <.port.OutputPort object at 0x7fae92fbe510>, {<.port.InputPort object at 0x7fae92fd57f0>: 17}, 'in8.0')
                when "0010111" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(9, <.port.OutputPort object at 0x7fae92fbe5f0>, {<.port.InputPort object at 0x7fae92fd7cb0>: 17}, 'in9.0')
                when "0011000" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fd6040>, {<.port.InputPort object at 0x7fae92fd5da0>: 12, <.port.InputPort object at 0x7fae92fd6190>: 16}, 'addsub18.0')
                when "0100101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fd6a50>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 1}, 'rec2.0')
                when "0100110" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(27, <.port.OutputPort object at 0x7fae92fd6040>, {<.port.InputPort object at 0x7fae92fd5da0>: 12, <.port.InputPort object at 0x7fae92fd6190>: 16}, 'addsub18.0')
                when "0101001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 2, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 32}, 'mul37.0')
                when "0101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 2, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 32}, 'mul37.0')
                when "0101011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(28, <.port.OutputPort object at 0x7fae92fe4ad0>, {<.port.InputPort object at 0x7fae92fd20b0>: 19}, 'addsub22.0')
                when "0101101" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(30, <.port.OutputPort object at 0x7fae92fd58d0>, {<.port.InputPort object at 0x7fae92fd55c0>: 18}, 'addsub16.0')
                when "0101110" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(31, <.port.OutputPort object at 0x7fae92fd7d90>, {<.port.InputPort object at 0x7fae92fd5240>: 18}, 'addsub20.0')
                when "0101111" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(18, <.port.OutputPort object at 0x7fae92fbf540>, {<.port.InputPort object at 0x7fae92fd6eb0>: 33, <.port.InputPort object at 0x7fae92fd7ee0>: 1}, 'mul2.0')
                when "0110001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(13, <.port.OutputPort object at 0x7fae92fbf000>, {<.port.InputPort object at 0x7fae92fbf4d0>: 1, <.port.InputPort object at 0x7fae92fbf620>: 39}, 'rec0.0')
                when "0110010" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd56a0>, {<.port.InputPort object at 0x7fae92fd5400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "0111111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 1, <.port.InputPort object at 0x7fae92fd2430>: 36, <.port.InputPort object at 0x7fae92fd25f0>: 2, <.port.InputPort object at 0x7fae92fd1b00>: 2, <.port.InputPort object at 0x7fae92fd2890>: 1}, 'rec1.0')
                when "1000000" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 1, <.port.InputPort object at 0x7fae92fd2430>: 36, <.port.InputPort object at 0x7fae92fd25f0>: 2, <.port.InputPort object at 0x7fae92fd1b00>: 2, <.port.InputPort object at 0x7fae92fd2890>: 1}, 'rec1.0')
                when "1000001" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(53, <.port.OutputPort object at 0x7fae92fd56a0>, {<.port.InputPort object at 0x7fae92fd5400>: 16, <.port.InputPort object at 0x7fae92fd2270>: 12}, 'addsub15.0')
                when "1000011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(69, <.port.OutputPort object at 0x7fae92fd1550>, {<.port.InputPort object at 0x7fae92fd12b0>: 2}, 'mul13.0')
                when "1000101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(54, <.port.OutputPort object at 0x7fae92fd5320>, {<.port.InputPort object at 0x7fae92fd44b0>: 19}, 'addsub14.0')
                when "1000111" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(56, <.port.OutputPort object at 0x7fae92fd6f90>, {<.port.InputPort object at 0x7fae92fd0440>: 18}, 'addsub19.0')
                when "1001000" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(43, <.port.OutputPort object at 0x7fae92fd6dd0>, {<.port.InputPort object at 0x7fae92fd67b0>: 2, <.port.InputPort object at 0x7fae92fd72a0>: 1, <.port.InputPort object at 0x7fae92fd3770>: 32}, 'mul37.0')
                when "1001001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(57, <.port.OutputPort object at 0x7fae92fbf700>, {<.port.InputPort object at 0x7fae92fbf9a0>: 19}, 'addsub0.0')
                when "1001010" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(44, <.port.OutputPort object at 0x7fae92fd11d0>, {<.port.InputPort object at 0x7fae92fd0f30>: 33}, 'mul11.0')
                when "1001011" =>
                    read_adr_0_0_0 <= to_unsigned(6, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(39, <.port.OutputPort object at 0x7fae92fd3000>, {<.port.InputPort object at 0x7fae92fd2dd0>: 39, <.port.InputPort object at 0x7fae92fd6a50>: 1, <.port.InputPort object at 0x7fae92fd10f0>: 1}, 'rec2.0')
                when "1001100" =>
                    read_adr_0_0_0 <= to_unsigned(5, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(91, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 1, <.port.InputPort object at 0x7fae92fd4670>: 7, <.port.InputPort object at 0x7fae92fd3930>: 3, <.port.InputPort object at 0x7fae92fd0600>: 3, <.port.InputPort object at 0x7fae92fd4980>: 2, <.port.InputPort object at 0x7fae92fd4b40>: 2, <.port.InputPort object at 0x7fae92fd34d0>: 1}, 'rec3.0')
                when "1011010" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(91, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 1, <.port.InputPort object at 0x7fae92fd4670>: 7, <.port.InputPort object at 0x7fae92fd3930>: 3, <.port.InputPort object at 0x7fae92fd0600>: 3, <.port.InputPort object at 0x7fae92fd4980>: 2, <.port.InputPort object at 0x7fae92fd4b40>: 2, <.port.InputPort object at 0x7fae92fd34d0>: 1}, 'rec3.0')
                when "1011011" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(91, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 1, <.port.InputPort object at 0x7fae92fd4670>: 7, <.port.InputPort object at 0x7fae92fd3930>: 3, <.port.InputPort object at 0x7fae92fd0600>: 3, <.port.InputPort object at 0x7fae92fd4980>: 2, <.port.InputPort object at 0x7fae92fd4b40>: 2, <.port.InputPort object at 0x7fae92fd34d0>: 1}, 'rec3.0')
                when "1011100" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(91, <.port.OutputPort object at 0x7fae92fd43d0>, {<.port.InputPort object at 0x7fae92fd3e00>: 1, <.port.InputPort object at 0x7fae92fd4670>: 7, <.port.InputPort object at 0x7fae92fd3930>: 3, <.port.InputPort object at 0x7fae92fd0600>: 3, <.port.InputPort object at 0x7fae92fd4980>: 2, <.port.InputPort object at 0x7fae92fd4b40>: 2, <.port.InputPort object at 0x7fae92fd34d0>: 1}, 'rec3.0')
                when "1100000" =>
                    read_adr_0_0_0 <= to_unsigned(4, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(81, <.port.OutputPort object at 0x7fae92fbfa80>, {<.port.InputPort object at 0x7fae92fbfd20>: 18}, 'addsub1.0')
                when "1100001" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(82, <.port.OutputPort object at 0x7fae92fd1010>, {<.port.InputPort object at 0x7fae92fd0d70>: 18}, 'addsub5.0')
                when "1100010" =>
                    read_adr_0_0_0 <= to_unsigned(2, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(65, <.port.OutputPort object at 0x7fae92fd1f60>, {<.port.InputPort object at 0x7fae92fd1d30>: 1, <.port.InputPort object at 0x7fae92fd2430>: 36, <.port.InputPort object at 0x7fae92fd25f0>: 2, <.port.InputPort object at 0x7fae92fd1b00>: 2, <.port.InputPort object at 0x7fae92fd2890>: 1}, 'rec1.0')
                when "1100011" =>
                    read_adr_0_0_0 <= to_unsigned(7, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(83, <.port.OutputPort object at 0x7fae92fd2eb0>, {<.port.InputPort object at 0x7fae92fd30e0>: 19}, 'addsub9.0')
                when "1100100" =>
                    read_adr_0_0_0 <= to_unsigned(3, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(71, <.port.OutputPort object at 0x7fae92fd26d0>, {<.port.InputPort object at 0x7fae92fd3f50>: 32}, 'mul18.0')
                when "1100101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

