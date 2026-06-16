-- B-ASIC generated VHDL testbench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use std.env.all;

entity tb is
end entity tb;

architecture sim of tb is

    constant CLK_PERIOD : time := 2 ns;

    signal clk : std_logic := '0';
    signal rst : std_logic := '1';

    signal in0_0_in : std_logic_vector(31 downto 0) := (others => '0');
    signal out0_0_out : std_logic_vector(31 downto 0);

begin

    dut : entity work.ldlt
        port map (
            clk => clk,
            rst => rst,
            in0_0_in => in0_0_in,
            out0_0_out => out0_0_out
        );

    clk <= not clk after CLK_PERIOD / 2;

    stimulus : process
    begin
        rst <= '1';
        wait until falling_edge(clk);
        rst <= '0';

        -- -- Warm-up cycle 0
        -- wait until falling_edge(clk);

        -- Warm-up cycle 1
        wait until falling_edge(clk);

        -- Warm-up cycle 2
        wait until falling_edge(clk);

        -- Warm-up cycle 3
        wait until falling_edge(clk);

        -- Warm-up cycle 4
        wait until falling_edge(clk);

        -- Warm-up cycle 5
        wait until falling_edge(clk);

        -- Warm-up cycle 6
        wait until falling_edge(clk);

        -- Warm-up cycle 7
        wait until falling_edge(clk);

        -- Warm-up cycle 8
        wait until falling_edge(clk);

        -- Warm-up cycle 9
        wait until falling_edge(clk);

        -- Warm-up cycle 10
        wait until falling_edge(clk);

        -- Warm-up cycle 11
        wait until falling_edge(clk);

        -- Warm-up cycle 12
        wait until falling_edge(clk);

        -- Warm-up cycle 13
        wait until falling_edge(clk);

        -- Warm-up cycle 14
        wait until falling_edge(clk);

        -- Warm-up cycle 15
        wait until falling_edge(clk);

        -- Warm-up cycle 16
        wait until falling_edge(clk);

        -- Warm-up cycle 17
        wait until falling_edge(clk);

        -- Warm-up cycle 18
        wait until falling_edge(clk);

        -- Warm-up cycle 19
        wait until falling_edge(clk);

        -- Warm-up cycle 20
        wait until falling_edge(clk);

        -- Warm-up cycle 21
        wait until falling_edge(clk);

        -- Warm-up cycle 22
        wait until falling_edge(clk);

        -- Warm-up cycle 23
        wait until falling_edge(clk);

        -- Warm-up cycle 24
        wait until falling_edge(clk);

        -- Warm-up cycle 25
        wait until falling_edge(clk);

        -- Warm-up cycle 26
        wait until falling_edge(clk);

        -- Warm-up cycle 27
        wait until falling_edge(clk);

        -- Warm-up cycle 28
        wait until falling_edge(clk);

        -- Warm-up cycle 29
        wait until falling_edge(clk);

        -- Warm-up cycle 30
        wait until falling_edge(clk);

        -- Warm-up cycle 31
        wait until falling_edge(clk);

        -- Warm-up cycle 32
        wait until falling_edge(clk);

        -- Warm-up cycle 33
        wait until falling_edge(clk);

        -- Warm-up cycle 34
        wait until falling_edge(clk);

        -- Warm-up cycle 35
        wait until falling_edge(clk);

        -- Warm-up cycle 36
        wait until falling_edge(clk);

        -- Warm-up cycle 37
        wait until falling_edge(clk);

        -- Warm-up cycle 38
        wait until falling_edge(clk);

        -- Warm-up cycle 39
        wait until falling_edge(clk);

        -- Warm-up cycle 40
        wait until falling_edge(clk);

        -- Warm-up cycle 41
        wait until falling_edge(clk);

        -- Warm-up cycle 42
        wait until falling_edge(clk);

        -- Warm-up cycle 43
        wait until falling_edge(clk);

        -- Warm-up cycle 44
        wait until falling_edge(clk);

        -- Warm-up cycle 45
        wait until falling_edge(clk);

        -- Warm-up cycle 46
        wait until falling_edge(clk);

        -- Warm-up cycle 47
        wait until falling_edge(clk);

        -- Warm-up cycle 48
        wait until falling_edge(clk);

        -- Warm-up cycle 49
        wait until falling_edge(clk);

        -- Warm-up cycle 50
        wait until falling_edge(clk);

        -- Warm-up cycle 51
        wait until falling_edge(clk);

        -- Warm-up cycle 52
        wait until falling_edge(clk);

        -- Warm-up cycle 53
        wait until falling_edge(clk);

        -- Warm-up cycle 54
        wait until falling_edge(clk);

        -- Warm-up cycle 55
        wait until falling_edge(clk);

        -- Warm-up cycle 56
        wait until falling_edge(clk);

        -- Warm-up cycle 57
        wait until falling_edge(clk);

        -- Warm-up cycle 58
        wait until falling_edge(clk);

        -- Warm-up cycle 59
        wait until falling_edge(clk);

        -- Warm-up cycle 60
        wait until falling_edge(clk);

        -- Warm-up cycle 61
        wait until falling_edge(clk);

        -- Warm-up cycle 62
        wait until falling_edge(clk);

        -- Warm-up cycle 63
        wait until falling_edge(clk);

        -- Warm-up cycle 64
        wait until falling_edge(clk);

        -- Warm-up cycle 65
        wait until falling_edge(clk);

        -- Warm-up cycle 66
        wait until falling_edge(clk);

        -- Warm-up cycle 67
        wait until falling_edge(clk);

        -- Warm-up cycle 68
        wait until falling_edge(clk);

        -- Warm-up cycle 69
        wait until falling_edge(clk);

        -- Warm-up cycle 70
        wait until falling_edge(clk);

        -- Warm-up cycle 71
        wait until falling_edge(clk);

        -- Warm-up cycle 72
        wait until falling_edge(clk);

        -- Warm-up cycle 73
        wait until falling_edge(clk);

        -- Warm-up cycle 74
        wait until falling_edge(clk);

        -- Warm-up cycle 75
        wait until falling_edge(clk);

        -- Warm-up cycle 76
        wait until falling_edge(clk);

        -- Warm-up cycle 77
        wait until falling_edge(clk);

        -- Warm-up cycle 78
        wait until falling_edge(clk);

        -- Warm-up cycle 79
        wait until falling_edge(clk);

        -- Warm-up cycle 80
        wait until falling_edge(clk);

        -- Warm-up cycle 81
        wait until falling_edge(clk);

        -- Warm-up cycle 82
        wait until falling_edge(clk);

        -- Warm-up cycle 83
        wait until falling_edge(clk);

        -- Warm-up cycle 84
        wait until falling_edge(clk);

        -- Warm-up cycle 85
        wait until falling_edge(clk);

        -- Warm-up cycle 86
        wait until falling_edge(clk);

        -- Warm-up cycle 87
        wait until falling_edge(clk);

        -- Warm-up cycle 88
        wait until falling_edge(clk);

        -- Warm-up cycle 89
        wait until falling_edge(clk);

        -- Warm-up cycle 90
        wait until falling_edge(clk);

        -- Warm-up cycle 91
        wait until falling_edge(clk);

        -- Warm-up cycle 92
        wait until falling_edge(clk);

        -- Warm-up cycle 93
        wait until falling_edge(clk);

        -- Warm-up cycle 94
        wait until falling_edge(clk);

        -- Warm-up cycle 95
        wait until falling_edge(clk);

        -- Warm-up cycle 96
        wait until falling_edge(clk);

        -- Warm-up cycle 97
        wait until falling_edge(clk);

        -- Warm-up cycle 98
        wait until falling_edge(clk);

        -- Warm-up cycle 99
        wait until falling_edge(clk);

        -- Warm-up cycle 100
        wait until falling_edge(clk);

        -- Warm-up cycle 101
        wait until falling_edge(clk);

        -- Warm-up cycle 102
        wait until falling_edge(clk);

        -- Warm-up cycle 103
        wait until falling_edge(clk);

        -- Warm-up cycle 104
        wait until falling_edge(clk);

        -- Warm-up cycle 105
        wait until falling_edge(clk);

        -- Warm-up cycle 106
        wait until falling_edge(clk);

        -- Warm-up cycle 107
        wait until falling_edge(clk);

        -- Warm-up cycle 108
        wait until falling_edge(clk);

        -- Cycle 0
        in0_0_in <= "00111111101000101001010011000100";
        wait until falling_edge(clk);

        -- Cycle 1
        in0_0_in <= "00111111000010101010000110011100";
        wait until falling_edge(clk);

        -- Cycle 2
        in0_0_in <= "00111111110001011110000111111011";
        wait until falling_edge(clk);

        -- Cycle 3
        in0_0_in <= "00111110100101011010100001000000";
        wait until falling_edge(clk);

        -- Cycle 4
        in0_0_in <= "00111111010001010101011010110010";
        wait until falling_edge(clk);

        -- Cycle 5
        in0_0_in <= "00111111101110010111101010110010";
        wait until falling_edge(clk);

        -- Cycle 6
        in0_0_in <= "00111110110111111011101000000000";
        wait until falling_edge(clk);

        -- Cycle 7
        in0_0_in <= "00111110110000110101100101011010";
        wait until falling_edge(clk);

        -- Cycle 8
        in0_0_in <= "00111110101110110111111000101011";
        wait until falling_edge(clk);

        -- Cycle 9
        in0_0_in <= "00111111010011110001000101100001";
        wait until falling_edge(clk);

        -- Cycle 10
        wait until falling_edge(clk);

        -- Cycle 11
        wait until falling_edge(clk);

        -- Cycle 12
        wait until falling_edge(clk);

        -- Cycle 13
        wait until falling_edge(clk);

        -- Cycle 14
        wait until falling_edge(clk);

        -- Cycle 15
        wait until falling_edge(clk);

        -- Cycle 16
        wait until falling_edge(clk);

        -- Cycle 17
        wait until falling_edge(clk);

        -- Cycle 18
        wait until falling_edge(clk);

        -- Cycle 19
        wait until falling_edge(clk);

        -- Cycle 20
        wait until falling_edge(clk);

        -- Cycle 21
        wait until falling_edge(clk);

        -- Cycle 22
        wait until falling_edge(clk);

        -- Cycle 23
        wait until falling_edge(clk);

        -- Cycle 24
        wait until falling_edge(clk);

        -- Cycle 25
        wait until falling_edge(clk);

        -- Cycle 26
        wait until falling_edge(clk);

        -- Cycle 27
        wait until falling_edge(clk);

        -- Cycle 28
        wait until falling_edge(clk);

        -- Cycle 29
        wait until falling_edge(clk);

        -- Cycle 30
        wait until falling_edge(clk);

        -- Cycle 31
        wait until falling_edge(clk);

        -- Cycle 32
        wait until falling_edge(clk);

        -- Cycle 33
        wait until falling_edge(clk);

        -- Cycle 34
        wait until falling_edge(clk);

        -- Cycle 35
        wait until falling_edge(clk);

        -- Cycle 36
        wait until falling_edge(clk);

        -- Cycle 37
        wait until falling_edge(clk);

        -- Cycle 38
        wait until falling_edge(clk);

        -- Cycle 39
        wait until falling_edge(clk);

        -- Cycle 40
        wait until falling_edge(clk);

        -- Cycle 41
        wait until falling_edge(clk);

        -- Cycle 42
        wait until falling_edge(clk);

        -- Cycle 43
        wait until falling_edge(clk);

        -- Cycle 44
        wait until falling_edge(clk);

        -- Cycle 45
        wait until falling_edge(clk);

        -- Cycle 46
        wait until falling_edge(clk);

        -- Cycle 47
        wait until falling_edge(clk);

        -- Cycle 48
        wait until falling_edge(clk);

        -- Cycle 49
        wait until falling_edge(clk);

        -- Cycle 50
        wait until falling_edge(clk);

        -- Cycle 51
        wait until falling_edge(clk);

        -- Cycle 52
        wait until falling_edge(clk);

        -- Cycle 53
        wait until falling_edge(clk);

        -- Cycle 54
        wait until falling_edge(clk);

        -- Cycle 55
        wait until falling_edge(clk);

        -- Cycle 56
        wait until falling_edge(clk);

        -- Cycle 57
        wait until falling_edge(clk);

        -- Cycle 58
        wait until falling_edge(clk);

        -- Cycle 59
        wait until falling_edge(clk);

        -- Cycle 60
        wait until falling_edge(clk);

        -- Cycle 61
        wait until falling_edge(clk);

        -- Cycle 62
        wait until falling_edge(clk);

        -- Cycle 63
        wait until falling_edge(clk);

        -- Cycle 64
        wait until falling_edge(clk);

        -- Cycle 65
        wait until falling_edge(clk);

        -- Cycle 66
        wait until falling_edge(clk);

        -- Cycle 67
        wait until falling_edge(clk);

        -- Cycle 68
        wait until falling_edge(clk);

        -- Cycle 69
        wait until falling_edge(clk);

        -- Cycle 70
        wait until falling_edge(clk);

        -- Cycle 71
        wait until falling_edge(clk);

        -- Cycle 72
        wait until falling_edge(clk);

        -- Cycle 73
        wait until falling_edge(clk);

        -- Cycle 74
        wait until falling_edge(clk);

        -- Cycle 75
        wait until falling_edge(clk);

        -- Cycle 76
        wait until falling_edge(clk);

        -- Cycle 77
        wait until falling_edge(clk);

        -- Cycle 78
        wait until falling_edge(clk);

        -- Cycle 79
        wait until falling_edge(clk);

        -- Cycle 80
        wait until falling_edge(clk);

        -- Cycle 81
        wait until falling_edge(clk);

        -- Cycle 82
        wait until falling_edge(clk);

        -- Cycle 83
        wait until falling_edge(clk);

        -- Cycle 84
        wait until falling_edge(clk);

        -- Cycle 85
        wait until falling_edge(clk);

        -- Cycle 86
        wait until falling_edge(clk);

        -- Cycle 87
        wait until falling_edge(clk);

        -- Cycle 88
        wait until falling_edge(clk);

        -- Cycle 89
        wait until falling_edge(clk);

        -- Cycle 90
        wait until falling_edge(clk);

        -- Cycle 91
        wait until falling_edge(clk);

        -- Cycle 92
        wait until falling_edge(clk);

        -- Cycle 93
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.659786581993103)) <= 0.0 + 1.0e-05 * abs(1.659786581993103)
            report "Error detected at cycle 93: out0_0_out expected 1.659786581993103, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 94
        wait until falling_edge(clk);

        -- Cycle 95
        wait until falling_edge(clk);

        -- Cycle 96
        wait until falling_edge(clk);

        -- Cycle 97
        wait until falling_edge(clk);

        -- Cycle 98
        wait until falling_edge(clk);

        -- Cycle 99
        wait until falling_edge(clk);

        -- Cycle 100
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.11636444926261902)) <= 0.0 + 1.0e-05 * abs(-0.11636444926261902)
            report "Error detected at cycle 100: out0_0_out expected -0.11636444926261902, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 101
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.4604877531528473)) <= 0.0 + 1.0e-05 * abs(-0.4604877531528473)
            report "Error detected at cycle 101: out0_0_out expected -0.4604877531528473, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 102
        wait until falling_edge(clk);

        -- Cycle 103
        wait until falling_edge(clk);

        -- Cycle 104
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2646608352661133)) <= 0.0 + 1.0e-05 * abs(-0.2646608352661133)
            report "Error detected at cycle 104: out0_0_out expected -0.2646608352661133, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 105
        wait until falling_edge(clk);

        -- Cycle 106
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.0536752939224243)) <= 0.0 + 1.0e-05 * abs(1.0536752939224243)
            report "Error detected at cycle 106: out0_0_out expected 1.0536752939224243, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 107
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.28239163756370544)) <= 0.0 + 1.0e-05 * abs(-0.28239163756370544)
            report "Error detected at cycle 107: out0_0_out expected -0.28239163756370544, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 108
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.9818478226661682)) <= 0.0 + 1.0e-05 * abs(0.9818478226661682)
            report "Error detected at cycle 108: out0_0_out expected 0.9818478226661682, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 109
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.9954698085784912)) <= 0.0 + 1.0e-05 * abs(0.9954698085784912)
            report "Error detected at cycle 109: out0_0_out expected 0.9954698085784912, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 110
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.4431895315647125)) <= 0.0 + 1.0e-05 * abs(-0.4431895315647125)
            report "Error detected at cycle 110: out0_0_out expected -0.4431895315647125, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 111
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.054051343351602554)) <= 0.0 + 1.0e-05 * abs(0.054051343351602554)
            report "Error detected at cycle 111: out0_0_out expected 0.054051343351602554, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        report "SUCCESS: All assertions passed" severity note;
        stop(0);
    end process stimulus;

end architecture sim;
