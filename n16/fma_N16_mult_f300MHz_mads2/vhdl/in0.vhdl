library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity in0 is
    port (
        clk : in std_logic;
        en : in std_logic;
        schedule_cnt : in unsigned(10 downto 0);
        p_0_in : in std_logic_vector(31 downto 0);
        p_0_out : out std_logic_vector(31 downto 0)
    );
end entity in0;

architecture rtl of in0 is
    signal res_arith_0 : std_logic_vector(31 downto 0);
    signal res_quant_0 : std_logic_vector(31 downto 0);
    signal res_overflow_0 : std_logic_vector(31 downto 0);

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
            end if;
        end if;
    end process;
    p_0_out <= res_overflow_0;
    res_arith_0 <= p_0_in;
    res_quant_0 <= res_arith_0(31 downto 0);
    res_overflow_0 <= res_quant_0(31 downto 0);

end architecture rtl;

