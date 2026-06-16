library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory27 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(8 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity memory27;

architecture rtl of memory27 is

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
                    when "001101111" => forward_ctrl <= '0';
                    when "100000011" => forward_ctrl <= '1';
                    when "101100001" => forward_ctrl <= '0';
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
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "001101111" =>
                    write_adr_0_0_0 <= to_unsigned(0, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100000011" =>
                    write_adr_0_0_0 <= to_unsigned(1, write_adr_0_0_0'length);
                    write_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101100001" =>
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
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "001110011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "001111100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "010001000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "011110100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100000011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100000100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100000101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100000110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100010001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100010110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "100011010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100011011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100011111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "100100011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100100101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100101001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "100101100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100101110" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100101111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "100110101" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100111001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "100111110" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "100111111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(260, <b_asic.port.OutputPort object at 0x7f0656827150>, {<b_asic.port.InputPort object at 0x7f0656826eb0>: 44, <b_asic.port.InputPort object at 0x7f06568277e0>: 1, <b_asic.port.InputPort object at 0x7f06568279a0>: 2, <b_asic.port.InputPort object at 0x7f0656827b60>: 3, <b_asic.port.InputPort object at 0x7f0656827d20>: 4, <b_asic.port.InputPort object at 0x7f065682c130>: 20, <b_asic.port.InputPort object at 0x7f065682c2f0>: 1, <b_asic.port.InputPort object at 0x7f065682c4b0>: 29, <b_asic.port.InputPort object at 0x7f065682c670>: 2, <b_asic.port.InputPort object at 0x7f065682c830>: 39, <b_asic.port.InputPort object at 0x7f065682c9f0>: 3, <b_asic.port.InputPort object at 0x7f0656a920b0>: 45, <b_asic.port.InputPort object at 0x7f06567b2890>: 4, <b_asic.port.InputPort object at 0x7f065682cc90>: 61, <b_asic.port.InputPort object at 0x7f0656969d30>: 15, <b_asic.port.InputPort object at 0x7f06568e7a80>: 25, <b_asic.port.InputPort object at 0x7f065682cf30>: 35, <b_asic.port.InputPort object at 0x7f065682d0f0>: 55, <b_asic.port.InputPort object at 0x7f065682d2b0>: 65}, 'addsub670.0')
                when "101000011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101001011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101010011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101011100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101100010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101101010" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101101101" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101101111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101110000" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101110100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "101111011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "101111111" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "110000011" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110001001" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110010011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(112, <b_asic.port.OutputPort object at 0x7f0656a04c20>, {<b_asic.port.InputPort object at 0x7f0656a04980>: 294, <b_asic.port.InputPort object at 0x7f06568f9d30>: 269, <b_asic.port.InputPort object at 0x7f0656947d90>: 238, <b_asic.port.InputPort object at 0x7f065699e510>: 229, <b_asic.port.InputPort object at 0x7f06568263c0>: 208, <b_asic.port.InputPort object at 0x7f06568601a0>: 221, <b_asic.port.InputPort object at 0x7f06568a20b0>: 190, <b_asic.port.InputPort object at 0x7f06565a8ec0>: 14, <b_asic.port.InputPort object at 0x7f065661aeb0>: 5, <b_asic.port.InputPort object at 0x7f06564b3850>: 26, <b_asic.port.InputPort object at 0x7f06566f54e0>: 172, <b_asic.port.InputPort object at 0x7f06566ed160>: 181, <b_asic.port.InputPort object at 0x7f06566e26d0>: 134, <b_asic.port.InputPort object at 0x7f065687c590>: 199, <b_asic.port.InputPort object at 0x7f06567def20>: 252, <b_asic.port.InputPort object at 0x7f06568ccf30>: 258, <b_asic.port.InputPort object at 0x7f0656a0fa10>: 277}, 'mul147.0')
                when "110010100" =>
                    read_adr_0_0_0 <= to_unsigned(0, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110011011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110011100" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110100010" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                -- MemoryVariable(354, <b_asic.port.OutputPort object at 0x7f06567c0830>, {<b_asic.port.InputPort object at 0x7f0656aa2eb0>: 15, <b_asic.port.InputPort object at 0x7f06567c0a60>: 31, <b_asic.port.InputPort object at 0x7f06567c0c20>: 41, <b_asic.port.InputPort object at 0x7f06567c0de0>: 13, <b_asic.port.InputPort object at 0x7f06567c0fa0>: 51, <b_asic.port.InputPort object at 0x7f06567c1160>: 20, <b_asic.port.InputPort object at 0x7f06567c1320>: 59, <b_asic.port.InputPort object at 0x7f06567c14e0>: 31, <b_asic.port.InputPort object at 0x7f06567c16a0>: 67, <b_asic.port.InputPort object at 0x7f06567c1860>: 41, <b_asic.port.InputPort object at 0x7f06567c1a20>: 51, <b_asic.port.InputPort object at 0x7f06567c1be0>: 60, <b_asic.port.InputPort object at 0x7f065690e2e0>: 66, <b_asic.port.InputPort object at 0x7f0656ba0440>: 2}, 'addsub566.0')
                when "110100011" =>
                    read_adr_0_0_0 <= to_unsigned(1, read_adr_0_0_0'length);
                    read_en_0_0_0 <= '1';
                when others =>
                    read_adr_0_0_0 <= (others => '-');
                    read_en_0_0_0 <= '0';
            end case;
    end process mem_read_address_proc;

end architecture rtl;

