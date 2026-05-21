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

    signal out0_0_out : std_logic_vector(31 downto 0);
    signal in0_0_in : std_logic_vector(31 downto 0) := (others => '0');

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

        -- Warm-up cycle 0
        wait until falling_edge(clk);

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

        -- Warm-up cycle 109
        wait until falling_edge(clk);

        -- Warm-up cycle 110
        wait until falling_edge(clk);

        -- Warm-up cycle 111
        wait until falling_edge(clk);

        -- Warm-up cycle 112
        wait until falling_edge(clk);

        -- Warm-up cycle 113
        wait until falling_edge(clk);

        -- Warm-up cycle 114
        wait until falling_edge(clk);

        -- Warm-up cycle 115
        wait until falling_edge(clk);

        -- Warm-up cycle 116
        wait until falling_edge(clk);

        -- Warm-up cycle 117
        wait until falling_edge(clk);

        -- Warm-up cycle 118
        wait until falling_edge(clk);

        -- Warm-up cycle 119
        wait until falling_edge(clk);

        -- Warm-up cycle 120
        wait until falling_edge(clk);

        -- Warm-up cycle 121
        wait until falling_edge(clk);

        -- Warm-up cycle 122
        wait until falling_edge(clk);

        -- Warm-up cycle 123
        wait until falling_edge(clk);

        -- Warm-up cycle 124
        wait until falling_edge(clk);

        -- Warm-up cycle 125
        wait until falling_edge(clk);

        -- Warm-up cycle 126
        wait until falling_edge(clk);

        -- Warm-up cycle 127
        wait until falling_edge(clk);

        -- Warm-up cycle 128
        wait until falling_edge(clk);

        -- Warm-up cycle 129
        wait until falling_edge(clk);

        -- Warm-up cycle 130
        wait until falling_edge(clk);

        -- Warm-up cycle 131
        wait until falling_edge(clk);

        -- Warm-up cycle 132
        wait until falling_edge(clk);

        -- Warm-up cycle 133
        wait until falling_edge(clk);

        -- Warm-up cycle 134
        wait until falling_edge(clk);

        -- Warm-up cycle 135
        wait until falling_edge(clk);

        -- Warm-up cycle 136
        wait until falling_edge(clk);

        -- Warm-up cycle 137
        wait until falling_edge(clk);

        -- Warm-up cycle 138
        wait until falling_edge(clk);

        -- Warm-up cycle 139
        wait until falling_edge(clk);

        -- Warm-up cycle 140
        wait until falling_edge(clk);

        -- Warm-up cycle 141
        wait until falling_edge(clk);

        -- Warm-up cycle 142
        wait until falling_edge(clk);

        -- Warm-up cycle 143
        wait until falling_edge(clk);

        -- Warm-up cycle 144
        wait until falling_edge(clk);

        -- Warm-up cycle 145
        wait until falling_edge(clk);

        -- Warm-up cycle 146
        wait until falling_edge(clk);

        -- Warm-up cycle 147
        wait until falling_edge(clk);

        -- Warm-up cycle 148
        wait until falling_edge(clk);

        -- Warm-up cycle 149
        wait until falling_edge(clk);

        -- Warm-up cycle 150
        wait until falling_edge(clk);

        -- Warm-up cycle 151
        wait until falling_edge(clk);

        -- Warm-up cycle 152
        wait until falling_edge(clk);

        -- Warm-up cycle 153
        wait until falling_edge(clk);

        -- Warm-up cycle 154
        wait until falling_edge(clk);

        -- Warm-up cycle 155
        wait until falling_edge(clk);

        -- Warm-up cycle 156
        wait until falling_edge(clk);

        -- Warm-up cycle 157
        wait until falling_edge(clk);

        -- Warm-up cycle 158
        wait until falling_edge(clk);

        -- Warm-up cycle 159
        wait until falling_edge(clk);

        -- Warm-up cycle 160
        wait until falling_edge(clk);

        -- Warm-up cycle 161
        wait until falling_edge(clk);

        -- Warm-up cycle 162
        wait until falling_edge(clk);

        -- Warm-up cycle 163
        wait until falling_edge(clk);

        -- Warm-up cycle 164
        wait until falling_edge(clk);

        -- Warm-up cycle 165
        wait until falling_edge(clk);

        -- Warm-up cycle 166
        wait until falling_edge(clk);

        -- Warm-up cycle 167
        wait until falling_edge(clk);

        -- Warm-up cycle 168
        wait until falling_edge(clk);

        -- Warm-up cycle 169
        wait until falling_edge(clk);

        -- Warm-up cycle 170
        wait until falling_edge(clk);

        -- Warm-up cycle 171
        wait until falling_edge(clk);

        -- Warm-up cycle 172
        wait until falling_edge(clk);

        -- Warm-up cycle 173
        wait until falling_edge(clk);

        -- Warm-up cycle 174
        wait until falling_edge(clk);

        -- Warm-up cycle 175
        wait until falling_edge(clk);

        -- Warm-up cycle 176
        wait until falling_edge(clk);

        -- Warm-up cycle 177
        wait until falling_edge(clk);

        -- Warm-up cycle 178
        wait until falling_edge(clk);

        -- Warm-up cycle 179
        wait until falling_edge(clk);

        -- Warm-up cycle 180
        wait until falling_edge(clk);

        -- Warm-up cycle 181
        wait until falling_edge(clk);

        -- Warm-up cycle 182
        wait until falling_edge(clk);

        -- Warm-up cycle 183
        wait until falling_edge(clk);

        -- Warm-up cycle 184
        wait until falling_edge(clk);

        -- Warm-up cycle 185
        wait until falling_edge(clk);

        -- Warm-up cycle 186
        wait until falling_edge(clk);

        -- Warm-up cycle 187
        wait until falling_edge(clk);

        -- Warm-up cycle 188
        wait until falling_edge(clk);

        -- Warm-up cycle 189
        wait until falling_edge(clk);

        -- Warm-up cycle 190
        wait until falling_edge(clk);

        -- Warm-up cycle 191
        wait until falling_edge(clk);

        -- Warm-up cycle 192
        wait until falling_edge(clk);

        -- Warm-up cycle 193
        wait until falling_edge(clk);

        -- Warm-up cycle 194
        wait until falling_edge(clk);

        -- Warm-up cycle 195
        wait until falling_edge(clk);

        -- Warm-up cycle 196
        wait until falling_edge(clk);

        -- Warm-up cycle 197
        wait until falling_edge(clk);

        -- Warm-up cycle 198
        wait until falling_edge(clk);

        -- Warm-up cycle 199
        wait until falling_edge(clk);

        -- Warm-up cycle 200
        wait until falling_edge(clk);

        -- Warm-up cycle 201
        wait until falling_edge(clk);

        -- Warm-up cycle 202
        wait until falling_edge(clk);

        -- Warm-up cycle 203
        wait until falling_edge(clk);

        -- Warm-up cycle 204
        wait until falling_edge(clk);

        -- Warm-up cycle 205
        wait until falling_edge(clk);

        -- Warm-up cycle 206
        wait until falling_edge(clk);

        -- Warm-up cycle 207
        wait until falling_edge(clk);

        -- Warm-up cycle 208
        wait until falling_edge(clk);

        -- Warm-up cycle 209
        wait until falling_edge(clk);

        -- Warm-up cycle 210
        wait until falling_edge(clk);

        -- Warm-up cycle 211
        wait until falling_edge(clk);

        -- Warm-up cycle 212
        wait until falling_edge(clk);

        -- Warm-up cycle 213
        wait until falling_edge(clk);

        -- Warm-up cycle 214
        wait until falling_edge(clk);

        -- Warm-up cycle 215
        wait until falling_edge(clk);

        -- Warm-up cycle 216
        wait until falling_edge(clk);

        -- Warm-up cycle 217
        wait until falling_edge(clk);

        -- Warm-up cycle 218
        wait until falling_edge(clk);

        -- Warm-up cycle 219
        wait until falling_edge(clk);

        -- Warm-up cycle 220
        wait until falling_edge(clk);

        -- Warm-up cycle 221
        wait until falling_edge(clk);

        -- Warm-up cycle 222
        wait until falling_edge(clk);

        -- Warm-up cycle 223
        wait until falling_edge(clk);

        -- Warm-up cycle 224
        wait until falling_edge(clk);

        -- Warm-up cycle 225
        wait until falling_edge(clk);

        -- Warm-up cycle 226
        wait until falling_edge(clk);

        -- Warm-up cycle 227
        wait until falling_edge(clk);

        -- Warm-up cycle 228
        wait until falling_edge(clk);

        -- Warm-up cycle 229
        wait until falling_edge(clk);

        -- Warm-up cycle 230
        wait until falling_edge(clk);

        -- Warm-up cycle 231
        wait until falling_edge(clk);

        -- Warm-up cycle 232
        wait until falling_edge(clk);

        -- Warm-up cycle 233
        wait until falling_edge(clk);

        -- Warm-up cycle 234
        wait until falling_edge(clk);

        -- Warm-up cycle 235
        wait until falling_edge(clk);

        -- Warm-up cycle 236
        wait until falling_edge(clk);

        -- Warm-up cycle 237
        wait until falling_edge(clk);

        -- Warm-up cycle 238
        wait until falling_edge(clk);

        -- Warm-up cycle 239
        wait until falling_edge(clk);

        -- Warm-up cycle 240
        wait until falling_edge(clk);

        -- Warm-up cycle 241
        wait until falling_edge(clk);

        -- Warm-up cycle 242
        wait until falling_edge(clk);

        -- Warm-up cycle 243
        wait until falling_edge(clk);

        -- Warm-up cycle 244
        wait until falling_edge(clk);

        -- Warm-up cycle 245
        wait until falling_edge(clk);

        -- Warm-up cycle 246
        wait until falling_edge(clk);

        -- Warm-up cycle 247
        wait until falling_edge(clk);

        -- Warm-up cycle 248
        wait until falling_edge(clk);

        -- Warm-up cycle 249
        wait until falling_edge(clk);

        -- Warm-up cycle 250
        wait until falling_edge(clk);

        -- Warm-up cycle 251
        wait until falling_edge(clk);

        -- Warm-up cycle 252
        wait until falling_edge(clk);

        -- Warm-up cycle 253
        wait until falling_edge(clk);

        -- Warm-up cycle 254
        wait until falling_edge(clk);

        -- Warm-up cycle 255
        wait until falling_edge(clk);

        -- Warm-up cycle 256
        wait until falling_edge(clk);

        -- Warm-up cycle 257
        wait until falling_edge(clk);

        -- Warm-up cycle 258
        wait until falling_edge(clk);

        -- Warm-up cycle 259
        wait until falling_edge(clk);

        -- Warm-up cycle 260
        wait until falling_edge(clk);

        -- Warm-up cycle 261
        wait until falling_edge(clk);

        -- Warm-up cycle 262
        wait until falling_edge(clk);

        -- Warm-up cycle 263
        wait until falling_edge(clk);

        -- Warm-up cycle 264
        wait until falling_edge(clk);

        -- Warm-up cycle 265
        wait until falling_edge(clk);

        -- Warm-up cycle 266
        wait until falling_edge(clk);

        -- Warm-up cycle 267
        wait until falling_edge(clk);

        -- Warm-up cycle 268
        wait until falling_edge(clk);

        -- Warm-up cycle 269
        wait until falling_edge(clk);

        -- Warm-up cycle 270
        wait until falling_edge(clk);

        -- Warm-up cycle 271
        wait until falling_edge(clk);

        -- Warm-up cycle 272
        wait until falling_edge(clk);

        -- Warm-up cycle 273
        wait until falling_edge(clk);

        -- Warm-up cycle 274
        wait until falling_edge(clk);

        -- Warm-up cycle 275
        wait until falling_edge(clk);

        -- Warm-up cycle 276
        wait until falling_edge(clk);

        -- Warm-up cycle 277
        wait until falling_edge(clk);

        -- Warm-up cycle 278
        wait until falling_edge(clk);

        -- Warm-up cycle 279
        wait until falling_edge(clk);

        -- Warm-up cycle 280
        wait until falling_edge(clk);

        -- Warm-up cycle 281
        wait until falling_edge(clk);

        -- Warm-up cycle 282
        wait until falling_edge(clk);

        -- Warm-up cycle 283
        wait until falling_edge(clk);

        -- Warm-up cycle 284
        wait until falling_edge(clk);

        -- Warm-up cycle 285
        wait until falling_edge(clk);

        -- Warm-up cycle 286
        wait until falling_edge(clk);

        -- Cycle 0
        in0_0_in <= "00111111110001101110110101111110";
        wait until falling_edge(clk);

        -- Cycle 1
        in0_0_in <= "00111110110100000011101111000000";
        wait until falling_edge(clk);

        -- Cycle 2
        in0_0_in <= "00111111111011010001010111111100";
        wait until falling_edge(clk);

        -- Cycle 3
        in0_0_in <= "00111110111001110111011010001001";
        wait until falling_edge(clk);

        -- Cycle 4
        in0_0_in <= "00111111001011011011110001111110";
        wait until falling_edge(clk);

        -- Cycle 5
        in0_0_in <= "00111111100110111100001001111110";
        wait until falling_edge(clk);

        -- Cycle 6
        in0_0_in <= "00111110101000011100010100001001";
        wait until falling_edge(clk);

        -- Cycle 7
        in0_0_in <= "00111110010001011101100001010011";
        wait until falling_edge(clk);

        -- Cycle 8
        in0_0_in <= "00111111001101011011111100110001";
        wait until falling_edge(clk);

        -- Cycle 9
        in0_0_in <= "00111111111100101111000110001100";
        wait until falling_edge(clk);

        -- Cycle 10
        in0_0_in <= "00111110111100101100100000101010";
        wait until falling_edge(clk);

        -- Cycle 11
        in0_0_in <= "00111110111111101110101110110001";
        wait until falling_edge(clk);

        -- Cycle 12
        in0_0_in <= "00111110100011011011110110010100";
        wait until falling_edge(clk);

        -- Cycle 13
        in0_0_in <= "00111111010010100001100100100111";
        wait until falling_edge(clk);

        -- Cycle 14
        in0_0_in <= "00111111101100111001010101100011";
        wait until falling_edge(clk);

        -- Cycle 15
        in0_0_in <= "00111111001111011111110100010000";
        wait until falling_edge(clk);

        -- Cycle 16
        in0_0_in <= "00111111001000111111101101001111";
        wait until falling_edge(clk);

        -- Cycle 17
        in0_0_in <= "00111110111111010000010111011001";
        wait until falling_edge(clk);

        -- Cycle 18
        in0_0_in <= "00111110101101111111010100010011";
        wait until falling_edge(clk);

        -- Cycle 19
        in0_0_in <= "00111110001101011111111000110001";
        wait until falling_edge(clk);

        -- Cycle 20
        in0_0_in <= "00111111111001110101101000001011";
        wait until falling_edge(clk);

        -- Cycle 21
        in0_0_in <= "00111110101100001100111010000011";
        wait until falling_edge(clk);

        -- Cycle 22
        in0_0_in <= "00111110000100100100101010100001";
        wait until falling_edge(clk);

        -- Cycle 23
        in0_0_in <= "00111111011001111011111101100000";
        wait until falling_edge(clk);

        -- Cycle 24
        in0_0_in <= "00111110111011011000010101011100";
        wait until falling_edge(clk);

        -- Cycle 25
        in0_0_in <= "00111111001110101001011010101000";
        wait until falling_edge(clk);

        -- Cycle 26
        in0_0_in <= "00111111010001111111100101101111";
        wait until falling_edge(clk);

        -- Cycle 27
        in0_0_in <= "00111111101000000110101101101011";
        wait until falling_edge(clk);

        -- Cycle 28
        in0_0_in <= "00111111000101110000010011011101";
        wait until falling_edge(clk);

        -- Cycle 29
        in0_0_in <= "00111101111101101101000100111010";
        wait until falling_edge(clk);

        -- Cycle 30
        in0_0_in <= "00111110110100100101101011110010";
        wait until falling_edge(clk);

        -- Cycle 31
        in0_0_in <= "00111110110000110010100100101101";
        wait until falling_edge(clk);

        -- Cycle 32
        in0_0_in <= "00111110011000011100001100111111";
        wait until falling_edge(clk);

        -- Cycle 33
        in0_0_in <= "00111110111000001011100110010100";
        wait until falling_edge(clk);

        -- Cycle 34
        in0_0_in <= "00111110111110001101001110101101";
        wait until falling_edge(clk);

        -- Cycle 35
        in0_0_in <= "00111111101111111010110111011101";
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
        wait until falling_edge(clk);

        -- Cycle 101
        wait until falling_edge(clk);

        -- Cycle 102
        wait until falling_edge(clk);

        -- Cycle 103
        wait until falling_edge(clk);

        -- Cycle 104
        wait until falling_edge(clk);

        -- Cycle 105
        wait until falling_edge(clk);

        -- Cycle 106
        wait until falling_edge(clk);

        -- Cycle 107
        wait until falling_edge(clk);

        -- Cycle 108
        wait until falling_edge(clk);

        -- Cycle 109
        wait until falling_edge(clk);

        -- Cycle 110
        wait until falling_edge(clk);

        -- Cycle 111
        wait until falling_edge(clk);

        -- Cycle 112
        wait until falling_edge(clk);

        -- Cycle 113
        wait until falling_edge(clk);

        -- Cycle 114
        wait until falling_edge(clk);

        -- Cycle 115
        wait until falling_edge(clk);

        -- Cycle 116
        wait until falling_edge(clk);

        -- Cycle 117
        wait until falling_edge(clk);

        -- Cycle 118
        wait until falling_edge(clk);

        -- Cycle 119
        wait until falling_edge(clk);

        -- Cycle 120
        wait until falling_edge(clk);

        -- Cycle 121
        wait until falling_edge(clk);

        -- Cycle 122
        wait until falling_edge(clk);

        -- Cycle 123
        wait until falling_edge(clk);

        -- Cycle 124
        wait until falling_edge(clk);

        -- Cycle 125
        wait until falling_edge(clk);

        -- Cycle 126
        wait until falling_edge(clk);

        -- Cycle 127
        wait until falling_edge(clk);

        -- Cycle 128
        wait until falling_edge(clk);

        -- Cycle 129
        wait until falling_edge(clk);

        -- Cycle 130
        wait until falling_edge(clk);

        -- Cycle 131
        wait until falling_edge(clk);

        -- Cycle 132
        wait until falling_edge(clk);

        -- Cycle 133
        wait until falling_edge(clk);

        -- Cycle 134
        wait until falling_edge(clk);

        -- Cycle 135
        wait until falling_edge(clk);

        -- Cycle 136
        wait until falling_edge(clk);

        -- Cycle 137
        wait until falling_edge(clk);

        -- Cycle 138
        wait until falling_edge(clk);

        -- Cycle 139
        wait until falling_edge(clk);

        -- Cycle 140
        wait until falling_edge(clk);

        -- Cycle 141
        wait until falling_edge(clk);

        -- Cycle 142
        wait until falling_edge(clk);

        -- Cycle 143
        wait until falling_edge(clk);

        -- Cycle 144
        wait until falling_edge(clk);

        -- Cycle 145
        wait until falling_edge(clk);

        -- Cycle 146
        wait until falling_edge(clk);

        -- Cycle 147
        wait until falling_edge(clk);

        -- Cycle 148
        wait until falling_edge(clk);

        -- Cycle 149
        wait until falling_edge(clk);

        -- Cycle 150
        wait until falling_edge(clk);

        -- Cycle 151
        wait until falling_edge(clk);

        -- Cycle 152
        wait until falling_edge(clk);

        -- Cycle 153
        wait until falling_edge(clk);

        -- Cycle 154
        wait until falling_edge(clk);

        -- Cycle 155
        wait until falling_edge(clk);

        -- Cycle 156
        wait until falling_edge(clk);

        -- Cycle 157
        wait until falling_edge(clk);

        -- Cycle 158
        wait until falling_edge(clk);

        -- Cycle 159
        wait until falling_edge(clk);

        -- Cycle 160
        wait until falling_edge(clk);

        -- Cycle 161
        wait until falling_edge(clk);

        -- Cycle 162
        wait until falling_edge(clk);

        -- Cycle 163
        wait until falling_edge(clk);

        -- Cycle 164
        wait until falling_edge(clk);

        -- Cycle 165
        wait until falling_edge(clk);

        -- Cycle 166
        wait until falling_edge(clk);

        -- Cycle 167
        wait until falling_edge(clk);

        -- Cycle 168
        wait until falling_edge(clk);

        -- Cycle 169
        wait until falling_edge(clk);

        -- Cycle 170
        wait until falling_edge(clk);

        -- Cycle 171
        wait until falling_edge(clk);

        -- Cycle 172
        wait until falling_edge(clk);

        -- Cycle 173
        wait until falling_edge(clk);

        -- Cycle 174
        wait until falling_edge(clk);

        -- Cycle 175
        wait until falling_edge(clk);

        -- Cycle 176
        wait until falling_edge(clk);

        -- Cycle 177
        wait until falling_edge(clk);

        -- Cycle 178
        wait until falling_edge(clk);

        -- Cycle 179
        wait until falling_edge(clk);

        -- Cycle 180
        wait until falling_edge(clk);

        -- Cycle 181
        wait until falling_edge(clk);

        -- Cycle 182
        wait until falling_edge(clk);

        -- Cycle 183
        wait until falling_edge(clk);

        -- Cycle 184
        wait until falling_edge(clk);

        -- Cycle 185
        wait until falling_edge(clk);

        -- Cycle 186
        wait until falling_edge(clk);

        -- Cycle 187
        wait until falling_edge(clk);

        -- Cycle 188
        wait until falling_edge(clk);

        -- Cycle 189
        wait until falling_edge(clk);

        -- Cycle 190
        wait until falling_edge(clk);

        -- Cycle 191
        wait until falling_edge(clk);

        -- Cycle 192
        wait until falling_edge(clk);

        -- Cycle 193
        wait until falling_edge(clk);

        -- Cycle 194
        wait until falling_edge(clk);

        -- Cycle 195
        wait until falling_edge(clk);

        -- Cycle 196
        wait until falling_edge(clk);

        -- Cycle 197
        wait until falling_edge(clk);

        -- Cycle 198
        wait until falling_edge(clk);

        -- Cycle 199
        wait until falling_edge(clk);

        -- Cycle 200
        wait until falling_edge(clk);

        -- Cycle 201
        wait until falling_edge(clk);

        -- Cycle 202
        wait until falling_edge(clk);

        -- Cycle 203
        wait until falling_edge(clk);

        -- Cycle 204
        wait until falling_edge(clk);

        -- Cycle 205
        wait until falling_edge(clk);

        -- Cycle 206
        wait until falling_edge(clk);

        -- Cycle 207
        wait until falling_edge(clk);

        -- Cycle 208
        wait until falling_edge(clk);

        -- Cycle 209
        wait until falling_edge(clk);

        -- Cycle 210
        wait until falling_edge(clk);

        -- Cycle 211
        wait until falling_edge(clk);

        -- Cycle 212
        wait until falling_edge(clk);

        -- Cycle 213
        wait until falling_edge(clk);

        -- Cycle 214
        wait until falling_edge(clk);

        -- Cycle 215
        wait until falling_edge(clk);

        -- Cycle 216
        wait until falling_edge(clk);

        -- Cycle 217
        wait until falling_edge(clk);

        -- Cycle 218
        wait until falling_edge(clk);

        -- Cycle 219
        wait until falling_edge(clk);

        -- Cycle 220
        wait until falling_edge(clk);

        -- Cycle 221
        wait until falling_edge(clk);

        -- Cycle 222
        wait until falling_edge(clk);

        -- Cycle 223
        wait until falling_edge(clk);

        -- Cycle 224
        wait until falling_edge(clk);

        -- Cycle 225
        wait until falling_edge(clk);

        -- Cycle 226
        wait until falling_edge(clk);

        -- Cycle 227
        wait until falling_edge(clk);

        -- Cycle 228
        wait until falling_edge(clk);

        -- Cycle 229
        wait until falling_edge(clk);

        -- Cycle 230
        wait until falling_edge(clk);

        -- Cycle 231
        wait until falling_edge(clk);

        -- Cycle 232
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.0510835647583008)) <= 0.0 + 1.0e-05 * abs(1.0510835647583008)
            report "Error detected at cycle 232: out0_0_out expected 1.0510835647583008, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 233
        wait until falling_edge(clk);

        -- Cycle 234
        wait until falling_edge(clk);

        -- Cycle 235
        wait until falling_edge(clk);

        -- Cycle 236
        wait until falling_edge(clk);

        -- Cycle 237
        wait until falling_edge(clk);

        -- Cycle 238
        wait until falling_edge(clk);

        -- Cycle 239
        wait until falling_edge(clk);

        -- Cycle 240
        wait until falling_edge(clk);

        -- Cycle 241
        wait until falling_edge(clk);

        -- Cycle 242
        wait until falling_edge(clk);

        -- Cycle 243
        wait until falling_edge(clk);

        -- Cycle 244
        wait until falling_edge(clk);

        -- Cycle 245
        wait until falling_edge(clk);

        -- Cycle 246
        wait until falling_edge(clk);

        -- Cycle 247
        wait until falling_edge(clk);

        -- Cycle 248
        wait until falling_edge(clk);

        -- Cycle 249
        wait until falling_edge(clk);

        -- Cycle 250
        wait until falling_edge(clk);

        -- Cycle 251
        wait until falling_edge(clk);

        -- Cycle 252
        wait until falling_edge(clk);

        -- Cycle 253
        wait until falling_edge(clk);

        -- Cycle 254
        wait until falling_edge(clk);

        -- Cycle 255
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.9415566325187683)) <= 0.0 + 1.0e-05 * abs(0.9415566325187683)
            report "Error detected at cycle 255: out0_0_out expected 0.9415566325187683, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 256
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.02810475043952465)) <= 0.0 + 1.0e-05 * abs(-0.02810475043952465)
            report "Error detected at cycle 256: out0_0_out expected -0.02810475043952465, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 257
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.8987186551094055)) <= 0.0 + 1.0e-05 * abs(0.8987186551094055)
            report "Error detected at cycle 257: out0_0_out expected 0.8987186551094055, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 258
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.7379545569419861)) <= 0.0 + 1.0e-05 * abs(-0.7379545569419861)
            report "Error detected at cycle 258: out0_0_out expected -0.7379545569419861, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 259
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.14009636640548706)) <= 0.0 + 1.0e-05 * abs(0.14009636640548706)
            report "Error detected at cycle 259: out0_0_out expected 0.14009636640548706, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 260
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0341726578772068)) <= 0.0 + 1.0e-05 * abs(-0.0341726578772068)
            report "Error detected at cycle 260: out0_0_out expected -0.0341726578772068, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 261
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (4.153718948364258)) <= 0.0 + 1.0e-05 * abs(4.153718948364258)
            report "Error detected at cycle 261: out0_0_out expected 4.153718948364258, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 262
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (3.329749584197998)) <= 0.0 + 1.0e-05 * abs(3.329749584197998)
            report "Error detected at cycle 262: out0_0_out expected 3.329749584197998, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 263
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.9863976240158081)) <= 0.0 + 1.0e-05 * abs(0.9863976240158081)
            report "Error detected at cycle 263: out0_0_out expected 0.9863976240158081, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 264
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (2.395599603652954)) <= 0.0 + 1.0e-05 * abs(2.395599603652954)
            report "Error detected at cycle 264: out0_0_out expected 2.395599603652954, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 265
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.8248156905174255)) <= 0.0 + 1.0e-05 * abs(-0.8248156905174255)
            report "Error detected at cycle 265: out0_0_out expected -0.8248156905174255, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 266
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.7976441383361816)) <= 0.0 + 1.0e-05 * abs(-0.7976441383361816)
            report "Error detected at cycle 266: out0_0_out expected -0.7976441383361816, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 267
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-2.737523317337036)) <= 0.0 + 1.0e-05 * abs(-2.737523317337036)
            report "Error detected at cycle 267: out0_0_out expected -2.737523317337036, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 268
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.8312460780143738)) <= 0.0 + 1.0e-05 * abs(0.8312460780143738)
            report "Error detected at cycle 268: out0_0_out expected 0.8312460780143738, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 269
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.6361395120620728)) <= 0.0 + 1.0e-05 * abs(-0.6361395120620728)
            report "Error detected at cycle 269: out0_0_out expected -0.6361395120620728, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 270
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.06353038549423218)) <= 0.0 + 1.0e-05 * abs(0.06353038549423218)
            report "Error detected at cycle 270: out0_0_out expected 0.06353038549423218, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 271
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.4503380060195923)) <= 0.0 + 1.0e-05 * abs(0.4503380060195923)
            report "Error detected at cycle 271: out0_0_out expected 0.4503380060195923, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 272
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (3.556330919265747)) <= 0.0 + 1.0e-05 * abs(3.556330919265747)
            report "Error detected at cycle 272: out0_0_out expected 3.556330919265747, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 273
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-1.0891661643981934)) <= 0.0 + 1.0e-05 * abs(-1.0891661643981934)
            report "Error detected at cycle 273: out0_0_out expected -1.0891661643981934, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 274
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-3.0796568393707275)) <= 0.0 + 1.0e-05 * abs(-3.0796568393707275)
            report "Error detected at cycle 274: out0_0_out expected -3.0796568393707275, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 275
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.0652419328689575)) <= 0.0 + 1.0e-05 * abs(1.0652419328689575)
            report "Error detected at cycle 275: out0_0_out expected 1.0652419328689575, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 276
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.027105689048767)) <= 0.0 + 1.0e-05 * abs(1.027105689048767)
            report "Error detected at cycle 276: out0_0_out expected 1.027105689048767, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 277
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.7076719403266907)) <= 0.0 + 1.0e-05 * abs(-0.7076719403266907)
            report "Error detected at cycle 277: out0_0_out expected -0.7076719403266907, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 278
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.2503596842288971)) <= 0.0 + 1.0e-05 * abs(0.2503596842288971)
            report "Error detected at cycle 278: out0_0_out expected 0.2503596842288971, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 279
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.7355763912200928)) <= 0.0 + 1.0e-05 * abs(-0.7355763912200928)
            report "Error detected at cycle 279: out0_0_out expected -0.7355763912200928, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 280
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.23788899183273315)) <= 0.0 + 1.0e-05 * abs(0.23788899183273315)
            report "Error detected at cycle 280: out0_0_out expected 0.23788899183273315, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 281
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.2193092256784439)) <= 0.0 + 1.0e-05 * abs(0.2193092256784439)
            report "Error detected at cycle 281: out0_0_out expected 0.2193092256784439, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 282
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.7697655558586121)) <= 0.0 + 1.0e-05 * abs(-0.7697655558586121)
            report "Error detected at cycle 282: out0_0_out expected -0.7697655558586121, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 283
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.17301534116268158)) <= 0.0 + 1.0e-05 * abs(0.17301534116268158)
            report "Error detected at cycle 283: out0_0_out expected 0.17301534116268158, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 284
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.06526713073253632)) <= 0.0 + 1.0e-05 * abs(-0.06526713073253632)
            report "Error detected at cycle 284: out0_0_out expected -0.06526713073253632, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 285
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.015931103378534317)) <= 0.0 + 1.0e-05 * abs(0.015931103378534317)
            report "Error detected at cycle 285: out0_0_out expected 0.015931103378534317, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 286
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.024414032697677612)) <= 0.0 + 1.0e-05 * abs(0.024414032697677612)
            report "Error detected at cycle 286: out0_0_out expected 0.024414032697677612, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 287
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.31340861320495605)) <= 0.0 + 1.0e-05 * abs(-0.31340861320495605)
            report "Error detected at cycle 287: out0_0_out expected -0.31340861320495605, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 288
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.16755735874176025)) <= 0.0 + 1.0e-05 * abs(-0.16755735874176025)
            report "Error detected at cycle 288: out0_0_out expected -0.16755735874176025, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 289
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2517518699169159)) <= 0.0 + 1.0e-05 * abs(-0.2517518699169159)
            report "Error detected at cycle 289: out0_0_out expected -0.2517518699169159, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        report "SUCCESS: All assertions passed" severity note;
        stop(0);
    end process stimulus;

end architecture sim;
