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

        -- Warm-up cycle 287
        wait until falling_edge(clk);

        -- Warm-up cycle 288
        wait until falling_edge(clk);

        -- Warm-up cycle 289
        wait until falling_edge(clk);

        -- Warm-up cycle 290
        wait until falling_edge(clk);

        -- Warm-up cycle 291
        wait until falling_edge(clk);

        -- Warm-up cycle 292
        wait until falling_edge(clk);

        -- Warm-up cycle 293
        wait until falling_edge(clk);

        -- Warm-up cycle 294
        wait until falling_edge(clk);

        -- Warm-up cycle 295
        wait until falling_edge(clk);

        -- Warm-up cycle 296
        wait until falling_edge(clk);

        -- Warm-up cycle 297
        wait until falling_edge(clk);

        -- Warm-up cycle 298
        wait until falling_edge(clk);

        -- Warm-up cycle 299
        wait until falling_edge(clk);

        -- Warm-up cycle 300
        wait until falling_edge(clk);

        -- Warm-up cycle 301
        wait until falling_edge(clk);

        -- Warm-up cycle 302
        wait until falling_edge(clk);

        -- Warm-up cycle 303
        wait until falling_edge(clk);

        -- Warm-up cycle 304
        wait until falling_edge(clk);

        -- Warm-up cycle 305
        wait until falling_edge(clk);

        -- Warm-up cycle 306
        wait until falling_edge(clk);

        -- Warm-up cycle 307
        wait until falling_edge(clk);

        -- Warm-up cycle 308
        wait until falling_edge(clk);

        -- Warm-up cycle 309
        wait until falling_edge(clk);

        -- Warm-up cycle 310
        wait until falling_edge(clk);

        -- Warm-up cycle 311
        wait until falling_edge(clk);

        -- Warm-up cycle 312
        wait until falling_edge(clk);

        -- Warm-up cycle 313
        wait until falling_edge(clk);

        -- Warm-up cycle 314
        wait until falling_edge(clk);

        -- Warm-up cycle 315
        wait until falling_edge(clk);

        -- Warm-up cycle 316
        wait until falling_edge(clk);

        -- Warm-up cycle 317
        wait until falling_edge(clk);

        -- Warm-up cycle 318
        wait until falling_edge(clk);

        -- Warm-up cycle 319
        wait until falling_edge(clk);

        -- Warm-up cycle 320
        wait until falling_edge(clk);

        -- Warm-up cycle 321
        wait until falling_edge(clk);

        -- Warm-up cycle 322
        wait until falling_edge(clk);

        -- Warm-up cycle 323
        wait until falling_edge(clk);

        -- Warm-up cycle 324
        wait until falling_edge(clk);

        -- Warm-up cycle 325
        wait until falling_edge(clk);

        -- Warm-up cycle 326
        wait until falling_edge(clk);

        -- Warm-up cycle 327
        wait until falling_edge(clk);

        -- Warm-up cycle 328
        wait until falling_edge(clk);

        -- Warm-up cycle 329
        wait until falling_edge(clk);

        -- Warm-up cycle 330
        wait until falling_edge(clk);

        -- Warm-up cycle 331
        wait until falling_edge(clk);

        -- Warm-up cycle 332
        wait until falling_edge(clk);

        -- Warm-up cycle 333
        wait until falling_edge(clk);

        -- Warm-up cycle 334
        wait until falling_edge(clk);

        -- Warm-up cycle 335
        wait until falling_edge(clk);

        -- Warm-up cycle 336
        wait until falling_edge(clk);

        -- Warm-up cycle 337
        wait until falling_edge(clk);

        -- Warm-up cycle 338
        wait until falling_edge(clk);

        -- Warm-up cycle 339
        wait until falling_edge(clk);

        -- Warm-up cycle 340
        wait until falling_edge(clk);

        -- Warm-up cycle 341
        wait until falling_edge(clk);

        -- Warm-up cycle 342
        wait until falling_edge(clk);

        -- Warm-up cycle 343
        wait until falling_edge(clk);

        -- Warm-up cycle 344
        wait until falling_edge(clk);

        -- Warm-up cycle 345
        wait until falling_edge(clk);

        -- Warm-up cycle 346
        wait until falling_edge(clk);

        -- Warm-up cycle 347
        wait until falling_edge(clk);

        -- Warm-up cycle 348
        wait until falling_edge(clk);

        -- Warm-up cycle 349
        wait until falling_edge(clk);

        -- Warm-up cycle 350
        wait until falling_edge(clk);

        -- Warm-up cycle 351
        wait until falling_edge(clk);

        -- Warm-up cycle 352
        wait until falling_edge(clk);

        -- Warm-up cycle 353
        wait until falling_edge(clk);

        -- Warm-up cycle 354
        wait until falling_edge(clk);

        -- Warm-up cycle 355
        wait until falling_edge(clk);

        -- Warm-up cycle 356
        wait until falling_edge(clk);

        -- Warm-up cycle 357
        wait until falling_edge(clk);

        -- Warm-up cycle 358
        wait until falling_edge(clk);

        -- Warm-up cycle 359
        wait until falling_edge(clk);

        -- Warm-up cycle 360
        wait until falling_edge(clk);

        -- Warm-up cycle 361
        wait until falling_edge(clk);

        -- Warm-up cycle 362
        wait until falling_edge(clk);

        -- Warm-up cycle 363
        wait until falling_edge(clk);

        -- Warm-up cycle 364
        wait until falling_edge(clk);

        -- Warm-up cycle 365
        wait until falling_edge(clk);

        -- Warm-up cycle 366
        wait until falling_edge(clk);

        -- Warm-up cycle 367
        wait until falling_edge(clk);

        -- Warm-up cycle 368
        wait until falling_edge(clk);

        -- Warm-up cycle 369
        wait until falling_edge(clk);

        -- Warm-up cycle 370
        wait until falling_edge(clk);

        -- Warm-up cycle 371
        wait until falling_edge(clk);

        -- Warm-up cycle 372
        wait until falling_edge(clk);

        -- Warm-up cycle 373
        wait until falling_edge(clk);

        -- Warm-up cycle 374
        wait until falling_edge(clk);

        -- Warm-up cycle 375
        wait until falling_edge(clk);

        -- Warm-up cycle 376
        wait until falling_edge(clk);

        -- Warm-up cycle 377
        wait until falling_edge(clk);

        -- Warm-up cycle 378
        wait until falling_edge(clk);

        -- Warm-up cycle 379
        wait until falling_edge(clk);

        -- Warm-up cycle 380
        wait until falling_edge(clk);

        -- Warm-up cycle 381
        wait until falling_edge(clk);

        -- Warm-up cycle 382
        wait until falling_edge(clk);

        -- Warm-up cycle 383
        wait until falling_edge(clk);

        -- Warm-up cycle 384
        wait until falling_edge(clk);

        -- Warm-up cycle 385
        wait until falling_edge(clk);

        -- Warm-up cycle 386
        wait until falling_edge(clk);

        -- Warm-up cycle 387
        wait until falling_edge(clk);

        -- Warm-up cycle 388
        wait until falling_edge(clk);

        -- Warm-up cycle 389
        wait until falling_edge(clk);

        -- Warm-up cycle 390
        wait until falling_edge(clk);

        -- Warm-up cycle 391
        wait until falling_edge(clk);

        -- Warm-up cycle 392
        wait until falling_edge(clk);

        -- Warm-up cycle 393
        wait until falling_edge(clk);

        -- Warm-up cycle 394
        wait until falling_edge(clk);

        -- Warm-up cycle 395
        wait until falling_edge(clk);

        -- Warm-up cycle 396
        wait until falling_edge(clk);

        -- Warm-up cycle 397
        wait until falling_edge(clk);

        -- Warm-up cycle 398
        wait until falling_edge(clk);

        -- Warm-up cycle 399
        wait until falling_edge(clk);

        -- Warm-up cycle 400
        wait until falling_edge(clk);

        -- Warm-up cycle 401
        wait until falling_edge(clk);

        -- Warm-up cycle 402
        wait until falling_edge(clk);

        -- Warm-up cycle 403
        wait until falling_edge(clk);

        -- Warm-up cycle 404
        wait until falling_edge(clk);

        -- Warm-up cycle 405
        wait until falling_edge(clk);

        -- Warm-up cycle 406
        wait until falling_edge(clk);

        -- Warm-up cycle 407
        wait until falling_edge(clk);

        -- Warm-up cycle 408
        wait until falling_edge(clk);

        -- Warm-up cycle 409
        wait until falling_edge(clk);

        -- Warm-up cycle 410
        wait until falling_edge(clk);

        -- Warm-up cycle 411
        wait until falling_edge(clk);

        -- Warm-up cycle 412
        wait until falling_edge(clk);

        -- Warm-up cycle 413
        wait until falling_edge(clk);

        -- Warm-up cycle 414
        wait until falling_edge(clk);

        -- Warm-up cycle 415
        wait until falling_edge(clk);

        -- Warm-up cycle 416
        wait until falling_edge(clk);

        -- Warm-up cycle 417
        wait until falling_edge(clk);

        -- Warm-up cycle 418
        wait until falling_edge(clk);

        -- Warm-up cycle 419
        wait until falling_edge(clk);

        -- Warm-up cycle 420
        wait until falling_edge(clk);

        -- Warm-up cycle 421
        wait until falling_edge(clk);

        -- Warm-up cycle 422
        wait until falling_edge(clk);

        -- Warm-up cycle 423
        wait until falling_edge(clk);

        -- Warm-up cycle 424
        wait until falling_edge(clk);

        -- Warm-up cycle 425
        wait until falling_edge(clk);

        -- Warm-up cycle 426
        wait until falling_edge(clk);

        -- Warm-up cycle 427
        wait until falling_edge(clk);

        -- Warm-up cycle 428
        wait until falling_edge(clk);

        -- Warm-up cycle 429
        wait until falling_edge(clk);

        -- Warm-up cycle 430
        wait until falling_edge(clk);

        -- Warm-up cycle 431
        wait until falling_edge(clk);

        -- Warm-up cycle 432
        wait until falling_edge(clk);

        -- Warm-up cycle 433
        wait until falling_edge(clk);

        -- Warm-up cycle 434
        wait until falling_edge(clk);

        -- Warm-up cycle 435
        wait until falling_edge(clk);

        -- Warm-up cycle 436
        wait until falling_edge(clk);

        -- Warm-up cycle 437
        wait until falling_edge(clk);

        -- Warm-up cycle 438
        wait until falling_edge(clk);

        -- Warm-up cycle 439
        wait until falling_edge(clk);

        -- Warm-up cycle 440
        wait until falling_edge(clk);

        -- Warm-up cycle 441
        wait until falling_edge(clk);

        -- Warm-up cycle 442
        wait until falling_edge(clk);

        -- Warm-up cycle 443
        wait until falling_edge(clk);

        -- Warm-up cycle 444
        wait until falling_edge(clk);

        -- Warm-up cycle 445
        wait until falling_edge(clk);

        -- Warm-up cycle 446
        wait until falling_edge(clk);

        -- Warm-up cycle 447
        wait until falling_edge(clk);

        -- Warm-up cycle 448
        wait until falling_edge(clk);

        -- Warm-up cycle 449
        wait until falling_edge(clk);

        -- Warm-up cycle 450
        wait until falling_edge(clk);

        -- Warm-up cycle 451
        wait until falling_edge(clk);

        -- Warm-up cycle 452
        wait until falling_edge(clk);

        -- Warm-up cycle 453
        wait until falling_edge(clk);

        -- Warm-up cycle 454
        wait until falling_edge(clk);

        -- Warm-up cycle 455
        wait until falling_edge(clk);

        -- Warm-up cycle 456
        wait until falling_edge(clk);

        -- Warm-up cycle 457
        wait until falling_edge(clk);

        -- Warm-up cycle 458
        wait until falling_edge(clk);

        -- Warm-up cycle 459
        wait until falling_edge(clk);

        -- Warm-up cycle 460
        wait until falling_edge(clk);

        -- Warm-up cycle 461
        wait until falling_edge(clk);

        -- Warm-up cycle 462
        wait until falling_edge(clk);

        -- Warm-up cycle 463
        wait until falling_edge(clk);

        -- Warm-up cycle 464
        wait until falling_edge(clk);

        -- Warm-up cycle 465
        wait until falling_edge(clk);

        -- Warm-up cycle 466
        wait until falling_edge(clk);

        -- Warm-up cycle 467
        wait until falling_edge(clk);

        -- Warm-up cycle 468
        wait until falling_edge(clk);

        -- Warm-up cycle 469
        wait until falling_edge(clk);

        -- Warm-up cycle 470
        wait until falling_edge(clk);

        -- Warm-up cycle 471
        wait until falling_edge(clk);

        -- Warm-up cycle 472
        wait until falling_edge(clk);

        -- Warm-up cycle 473
        wait until falling_edge(clk);

        -- Warm-up cycle 474
        wait until falling_edge(clk);

        -- Warm-up cycle 475
        wait until falling_edge(clk);

        -- Warm-up cycle 476
        wait until falling_edge(clk);

        -- Warm-up cycle 477
        wait until falling_edge(clk);

        -- Warm-up cycle 478
        wait until falling_edge(clk);

        -- Warm-up cycle 479
        wait until falling_edge(clk);

        -- Warm-up cycle 480
        wait until falling_edge(clk);

        -- Warm-up cycle 481
        wait until falling_edge(clk);

        -- Warm-up cycle 482
        wait until falling_edge(clk);

        -- Warm-up cycle 483
        wait until falling_edge(clk);

        -- Warm-up cycle 484
        wait until falling_edge(clk);

        -- Warm-up cycle 485
        wait until falling_edge(clk);

        -- Warm-up cycle 486
        wait until falling_edge(clk);

        -- Warm-up cycle 487
        wait until falling_edge(clk);

        -- Warm-up cycle 488
        wait until falling_edge(clk);

        -- Warm-up cycle 489
        wait until falling_edge(clk);

        -- Warm-up cycle 490
        wait until falling_edge(clk);

        -- Warm-up cycle 491
        wait until falling_edge(clk);

        -- Cycle 0
        in0_0_in <= "01000000000111110011110111100011";
        wait until falling_edge(clk);

        -- Cycle 1
        in0_0_in <= "00111111000100010000010100000101";
        wait until falling_edge(clk);

        -- Cycle 2
        in0_0_in <= "01000000000110010010000100110101";
        wait until falling_edge(clk);

        -- Cycle 3
        in0_0_in <= "00111101101101000100101110110100";
        wait until falling_edge(clk);

        -- Cycle 4
        in0_0_in <= "00111111000000101011011010110000";
        wait until falling_edge(clk);

        -- Cycle 5
        in0_0_in <= "01000000000110000001100101010000";
        wait until falling_edge(clk);

        -- Cycle 6
        in0_0_in <= "00111101010011011110100101111010";
        wait until falling_edge(clk);

        -- Cycle 7
        in0_0_in <= "00111111001000001010111010110011";
        wait until falling_edge(clk);

        -- Cycle 8
        in0_0_in <= "00111111000011000111010110100101";
        wait until falling_edge(clk);

        -- Cycle 9
        in0_0_in <= "01000000000001011100101110111101";
        wait until falling_edge(clk);

        -- Cycle 10
        in0_0_in <= "00111111000011100101010011101010";
        wait until falling_edge(clk);

        -- Cycle 11
        in0_0_in <= "00111110101100110100011111010000";
        wait until falling_edge(clk);

        -- Cycle 12
        in0_0_in <= "00111110101011110111001100100110";
        wait until falling_edge(clk);

        -- Cycle 13
        in0_0_in <= "00111111011010001100011111001100";
        wait until falling_edge(clk);

        -- Cycle 14
        in0_0_in <= "00111111010101011101001001101111";
        wait until falling_edge(clk);

        -- Cycle 15
        in0_0_in <= "01000000000011011101011111100000";
        wait until falling_edge(clk);

        -- Cycle 16
        in0_0_in <= "00111110100111110010100000011111";
        wait until falling_edge(clk);

        -- Cycle 17
        in0_0_in <= "00111111001101011001101100111101";
        wait until falling_edge(clk);

        -- Cycle 18
        in0_0_in <= "00111110110110000010011110010001";
        wait until falling_edge(clk);

        -- Cycle 19
        in0_0_in <= "00111110100001010010100010100000";
        wait until falling_edge(clk);

        -- Cycle 20
        in0_0_in <= "00111110110000010110000111100001";
        wait until falling_edge(clk);

        -- Cycle 21
        in0_0_in <= "00111111010100100101011000011111";
        wait until falling_edge(clk);

        -- Cycle 22
        in0_0_in <= "01000000001001010111101110110000";
        wait until falling_edge(clk);

        -- Cycle 23
        in0_0_in <= "00111111011010010111100000100101";
        wait until falling_edge(clk);

        -- Cycle 24
        in0_0_in <= "00111111000101000100100101101110";
        wait until falling_edge(clk);

        -- Cycle 25
        in0_0_in <= "00111111000011011111011011011100";
        wait until falling_edge(clk);

        -- Cycle 26
        in0_0_in <= "00111111001110010110111110001001";
        wait until falling_edge(clk);

        -- Cycle 27
        in0_0_in <= "00111110111100011000101001000000";
        wait until falling_edge(clk);

        -- Cycle 28
        in0_0_in <= "00111110101010011100011000111111";
        wait until falling_edge(clk);

        -- Cycle 29
        in0_0_in <= "00111111000011101101000011000101";
        wait until falling_edge(clk);

        -- Cycle 30
        in0_0_in <= "01000000001010011100101111101011";
        wait until falling_edge(clk);

        -- Cycle 31
        in0_0_in <= "00111110101010011011110011011111";
        wait until falling_edge(clk);

        -- Cycle 32
        in0_0_in <= "00111111011011011001100111100011";
        wait until falling_edge(clk);

        -- Cycle 33
        in0_0_in <= "00111110101010110000110111010011";
        wait until falling_edge(clk);

        -- Cycle 34
        in0_0_in <= "00111110111111111000011000111111";
        wait until falling_edge(clk);

        -- Cycle 35
        in0_0_in <= "00111110111001110101100111101100";
        wait until falling_edge(clk);

        -- Cycle 36
        in0_0_in <= "00111111011000011110011010000101";
        wait until falling_edge(clk);

        -- Cycle 37
        in0_0_in <= "00111111000101000010110111111000";
        wait until falling_edge(clk);

        -- Cycle 38
        in0_0_in <= "00111111000000001001000100101000";
        wait until falling_edge(clk);

        -- Cycle 39
        in0_0_in <= "00111111111101010111110100011101";
        wait until falling_edge(clk);

        -- Cycle 40
        in0_0_in <= "00111111001000000000001011100010";
        wait until falling_edge(clk);

        -- Cycle 41
        in0_0_in <= "00111111001010111011100011111100";
        wait until falling_edge(clk);

        -- Cycle 42
        in0_0_in <= "00111110101011001110011110010100";
        wait until falling_edge(clk);

        -- Cycle 43
        in0_0_in <= "00111111001001011001010111100010";
        wait until falling_edge(clk);

        -- Cycle 44
        in0_0_in <= "00111110100011011111011100010110";
        wait until falling_edge(clk);

        -- Cycle 45
        in0_0_in <= "00111110001110101101100011101110";
        wait until falling_edge(clk);

        -- Cycle 46
        in0_0_in <= "00111110110000011101100001000110";
        wait until falling_edge(clk);

        -- Cycle 47
        in0_0_in <= "00111111010011110011110001100101";
        wait until falling_edge(clk);

        -- Cycle 48
        in0_0_in <= "00111111001011110101101101010011";
        wait until falling_edge(clk);

        -- Cycle 49
        in0_0_in <= "00111111000110010010101011111010";
        wait until falling_edge(clk);

        -- Cycle 50
        in0_0_in <= "01000000001010101101011000000001";
        wait until falling_edge(clk);

        -- Cycle 51
        in0_0_in <= "00111111010001111000011101100010";
        wait until falling_edge(clk);

        -- Cycle 52
        in0_0_in <= "00111111001101101010011101101001";
        wait until falling_edge(clk);

        -- Cycle 53
        in0_0_in <= "00111110100011001000001111111101";
        wait until falling_edge(clk);

        -- Cycle 54
        in0_0_in <= "00111111000010101010010010100101";
        wait until falling_edge(clk);

        -- Cycle 55
        in0_0_in <= "00111110110010111001101110111001";
        wait until falling_edge(clk);

        -- Cycle 56
        in0_0_in <= "00111111000110101000001001100111";
        wait until falling_edge(clk);

        -- Cycle 57
        in0_0_in <= "00111110101101001000001111010011";
        wait until falling_edge(clk);

        -- Cycle 58
        in0_0_in <= "00111111001000110100011001101111";
        wait until falling_edge(clk);

        -- Cycle 59
        in0_0_in <= "00111110101010111010111001000101";
        wait until falling_edge(clk);

        -- Cycle 60
        in0_0_in <= "00111111000111100011111001110111";
        wait until falling_edge(clk);

        -- Cycle 61
        in0_0_in <= "00111111011110000011100101001111";
        wait until falling_edge(clk);

        -- Cycle 62
        in0_0_in <= "01000000001000000011111001011000";
        wait until falling_edge(clk);

        -- Cycle 63
        in0_0_in <= "00111110101101100110110001000110";
        wait until falling_edge(clk);

        -- Cycle 64
        in0_0_in <= "00111111001000011011111001111110";
        wait until falling_edge(clk);

        -- Cycle 65
        in0_0_in <= "00111111011010100010001010100101";
        wait until falling_edge(clk);

        -- Cycle 66
        in0_0_in <= "00111110110011001101111001111011";
        wait until falling_edge(clk);

        -- Cycle 67
        in0_0_in <= "00111111011010111001000110111011";
        wait until falling_edge(clk);

        -- Cycle 68
        in0_0_in <= "00111111001001001001100101011011";
        wait until falling_edge(clk);

        -- Cycle 69
        in0_0_in <= "00111111001100001011111101010101";
        wait until falling_edge(clk);

        -- Cycle 70
        in0_0_in <= "00111110110010001101100010100011";
        wait until falling_edge(clk);

        -- Cycle 71
        in0_0_in <= "00111111000110111000011110000011";
        wait until falling_edge(clk);

        -- Cycle 72
        in0_0_in <= "00111110110001100100010000101010";
        wait until falling_edge(clk);

        -- Cycle 73
        in0_0_in <= "00111111000010010011111111110001";
        wait until falling_edge(clk);

        -- Cycle 74
        in0_0_in <= "00111111001011111101000011011111";
        wait until falling_edge(clk);

        -- Cycle 75
        in0_0_in <= "01000000000011001000001011011001";
        wait until falling_edge(clk);

        -- Cycle 76
        in0_0_in <= "00111111000111011011101111001101";
        wait until falling_edge(clk);

        -- Cycle 77
        in0_0_in <= "00111110111110011101011110110001";
        wait until falling_edge(clk);

        -- Cycle 78
        in0_0_in <= "00111111000010101100000101000100";
        wait until falling_edge(clk);

        -- Cycle 79
        in0_0_in <= "00111110101000000110101001010010";
        wait until falling_edge(clk);

        -- Cycle 80
        in0_0_in <= "00111110100010001001011101001001";
        wait until falling_edge(clk);

        -- Cycle 81
        in0_0_in <= "00111110110111101010010011111101";
        wait until falling_edge(clk);

        -- Cycle 82
        in0_0_in <= "00111110110010011001000000100001";
        wait until falling_edge(clk);

        -- Cycle 83
        in0_0_in <= "00111111001100101000000011010110";
        wait until falling_edge(clk);

        -- Cycle 84
        in0_0_in <= "00111111001100011111101100010011";
        wait until falling_edge(clk);

        -- Cycle 85
        in0_0_in <= "00111111000000100110011101000100";
        wait until falling_edge(clk);

        -- Cycle 86
        in0_0_in <= "00111111000010001010001111100000";
        wait until falling_edge(clk);

        -- Cycle 87
        in0_0_in <= "00111110110110010100011010101100";
        wait until falling_edge(clk);

        -- Cycle 88
        in0_0_in <= "01000000001100001011101110001010";
        wait until falling_edge(clk);

        -- Cycle 89
        in0_0_in <= "00111110100101100010101000011000";
        wait until falling_edge(clk);

        -- Cycle 90
        in0_0_in <= "00111110110111110100111010011011";
        wait until falling_edge(clk);

        -- Cycle 91
        in0_0_in <= "00111111000001110110110001001000";
        wait until falling_edge(clk);

        -- Cycle 92
        in0_0_in <= "00111111010011001001101111111000";
        wait until falling_edge(clk);

        -- Cycle 93
        in0_0_in <= "00111111000100001100111010111101";
        wait until falling_edge(clk);

        -- Cycle 94
        in0_0_in <= "00111111010010110111010101101100";
        wait until falling_edge(clk);

        -- Cycle 95
        in0_0_in <= "00111111001010010100100000111010";
        wait until falling_edge(clk);

        -- Cycle 96
        in0_0_in <= "00111110111111010000110001100010";
        wait until falling_edge(clk);

        -- Cycle 97
        in0_0_in <= "00111110110100011101110010110111";
        wait until falling_edge(clk);

        -- Cycle 98
        in0_0_in <= "00111110110000011010101010000101";
        wait until falling_edge(clk);

        -- Cycle 99
        in0_0_in <= "00111110101110010100011001010011";
        wait until falling_edge(clk);

        -- Cycle 100
        in0_0_in <= "00111110101000110000001100110001";
        wait until falling_edge(clk);

        -- Cycle 101
        in0_0_in <= "00111110000000100011001100100101";
        wait until falling_edge(clk);

        -- Cycle 102
        in0_0_in <= "00111111001110111101010101001100";
        wait until falling_edge(clk);

        -- Cycle 103
        in0_0_in <= "01000000000110110111001010111111";
        wait until falling_edge(clk);

        -- Cycle 104
        in0_0_in <= "00111111010011111011001111100010";
        wait until falling_edge(clk);

        -- Cycle 105
        in0_0_in <= "00111110001101111001101001001000";
        wait until falling_edge(clk);

        -- Cycle 106
        in0_0_in <= "00111110100110010101111111000011";
        wait until falling_edge(clk);

        -- Cycle 107
        in0_0_in <= "00111111001001100100110010011000";
        wait until falling_edge(clk);

        -- Cycle 108
        in0_0_in <= "00111111001011010000110001100011";
        wait until falling_edge(clk);

        -- Cycle 109
        in0_0_in <= "00111111000011000011001111101010";
        wait until falling_edge(clk);

        -- Cycle 110
        in0_0_in <= "00111111001010011010000111100101";
        wait until falling_edge(clk);

        -- Cycle 111
        in0_0_in <= "00111111001011000001000001111100";
        wait until falling_edge(clk);

        -- Cycle 112
        in0_0_in <= "00111111001101100100100100001100";
        wait until falling_edge(clk);

        -- Cycle 113
        in0_0_in <= "00111111001011001001101011001001";
        wait until falling_edge(clk);

        -- Cycle 114
        in0_0_in <= "00111111010000100011111110000010";
        wait until falling_edge(clk);

        -- Cycle 115
        in0_0_in <= "00111111000001111110001001000111";
        wait until falling_edge(clk);

        -- Cycle 116
        in0_0_in <= "00111111001011011000100110010100";
        wait until falling_edge(clk);

        -- Cycle 117
        in0_0_in <= "00111111001000110000010010100101";
        wait until falling_edge(clk);

        -- Cycle 118
        in0_0_in <= "00111111010100111100010011010010";
        wait until falling_edge(clk);

        -- Cycle 119
        in0_0_in <= "00111111010001111011000000000100";
        wait until falling_edge(clk);

        -- Cycle 120
        in0_0_in <= "00111111111111010100001010001111";
        wait until falling_edge(clk);

        -- Cycle 121
        in0_0_in <= "00111110111110010000110001000111";
        wait until falling_edge(clk);

        -- Cycle 122
        in0_0_in <= "00111110101011101111100011110111";
        wait until falling_edge(clk);

        -- Cycle 123
        in0_0_in <= "00111110110001011101110000000010";
        wait until falling_edge(clk);

        -- Cycle 124
        in0_0_in <= "00111111000100011101110100011100";
        wait until falling_edge(clk);

        -- Cycle 125
        in0_0_in <= "00111111000101000110111110101101";
        wait until falling_edge(clk);

        -- Cycle 126
        in0_0_in <= "00111101110101111100110101000011";
        wait until falling_edge(clk);

        -- Cycle 127
        in0_0_in <= "00111110111000011011011100010010";
        wait until falling_edge(clk);

        -- Cycle 128
        in0_0_in <= "00111110111001001111101011010100";
        wait until falling_edge(clk);

        -- Cycle 129
        in0_0_in <= "00111111000110001101100111101010";
        wait until falling_edge(clk);

        -- Cycle 130
        in0_0_in <= "01000000000101011100001100101001";
        wait until falling_edge(clk);

        -- Cycle 131
        in0_0_in <= "00111110110110100000000001011010";
        wait until falling_edge(clk);

        -- Cycle 132
        in0_0_in <= "00111111000010000111110001000010";
        wait until falling_edge(clk);

        -- Cycle 133
        in0_0_in <= "00111110110110011111110100000001";
        wait until falling_edge(clk);

        -- Cycle 134
        in0_0_in <= "00111111001111001011001110010110";
        wait until falling_edge(clk);

        -- Cycle 135
        in0_0_in <= "01000000000100011000011001000000";
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
        wait until falling_edge(clk);

        -- Cycle 233
        wait until falling_edge(clk);

        -- Cycle 234
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.667209804058075)) <= 0.0 + 1.0e-05 * abs(0.667209804058075)
            report "Error detected at cycle 234: out0_0_out expected 0.667209804058075, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 235
        wait until falling_edge(clk);

        -- Cycle 236
        wait until falling_edge(clk);

        -- Cycle 237
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13006529211997986)) <= 0.0 + 1.0e-05 * abs(-0.13006529211997986)
            report "Error detected at cycle 237: out0_0_out expected -0.13006529211997986, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
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
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.044508196413517)) <= 0.0 + 1.0e-05 * abs(0.044508196413517)
            report "Error detected at cycle 243: out0_0_out expected 0.044508196413517, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 244
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6996414065361023)) <= 0.0 + 1.0e-05 * abs(0.6996414065361023)
            report "Error detected at cycle 244: out0_0_out expected 0.6996414065361023, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
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
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.09199580550193787)) <= 0.0 + 1.0e-05 * abs(-0.09199580550193787)
            report "Error detected at cycle 249: out0_0_out expected -0.09199580550193787, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 250
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.05222167447209358)) <= 0.0 + 1.0e-05 * abs(0.05222167447209358)
            report "Error detected at cycle 250: out0_0_out expected 0.05222167447209358, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
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
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.07310182601213455)) <= 0.0 + 1.0e-05 * abs(-0.07310182601213455)
            report "Error detected at cycle 255: out0_0_out expected -0.07310182601213455, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 256
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.03961186483502388)) <= 0.0 + 1.0e-05 * abs(0.03961186483502388)
            report "Error detected at cycle 256: out0_0_out expected 0.03961186483502388, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 257
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.8149998784065247)) <= 0.0 + 1.0e-05 * abs(0.8149998784065247)
            report "Error detected at cycle 257: out0_0_out expected 0.8149998784065247, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 258
        wait until falling_edge(clk);

        -- Cycle 259
        wait until falling_edge(clk);

        -- Cycle 260
        wait until falling_edge(clk);

        -- Cycle 261
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.04822874069213867)) <= 0.0 + 1.0e-05 * abs(0.04822874069213867)
            report "Error detected at cycle 261: out0_0_out expected 0.04822874069213867, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 262
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.05277242884039879)) <= 0.0 + 1.0e-05 * abs(-0.05277242884039879)
            report "Error detected at cycle 262: out0_0_out expected -0.05277242884039879, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 263
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.23289696872234344)) <= 0.0 + 1.0e-05 * abs(-0.23289696872234344)
            report "Error detected at cycle 263: out0_0_out expected -0.23289696872234344, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 264
        wait until falling_edge(clk);

        -- Cycle 265
        wait until falling_edge(clk);

        -- Cycle 266
        wait until falling_edge(clk);

        -- Cycle 267
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.034411098808050156)) <= 0.0 + 1.0e-05 * abs(0.034411098808050156)
            report "Error detected at cycle 267: out0_0_out expected 0.034411098808050156, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 268
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.027070321142673492)) <= 0.0 + 1.0e-05 * abs(-0.027070321142673492)
            report "Error detected at cycle 268: out0_0_out expected -0.027070321142673492, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 269
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.599850058555603)) <= 0.0 + 1.0e-05 * abs(0.599850058555603)
            report "Error detected at cycle 269: out0_0_out expected 0.599850058555603, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 270
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.0406595841050148)) <= 0.0 + 1.0e-05 * abs(0.0406595841050148)
            report "Error detected at cycle 270: out0_0_out expected 0.0406595841050148, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 271
        wait until falling_edge(clk);

        -- Cycle 272
        wait until falling_edge(clk);

        -- Cycle 273
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.009396038949489594)) <= 0.0 + 1.0e-05 * abs(-0.009396038949489594)
            report "Error detected at cycle 273: out0_0_out expected -0.009396038949489594, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 274
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.02187284082174301)) <= 0.0 + 1.0e-05 * abs(-0.02187284082174301)
            report "Error detected at cycle 274: out0_0_out expected -0.02187284082174301, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 275
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13416258990764618)) <= 0.0 + 1.0e-05 * abs(-0.13416258990764618)
            report "Error detected at cycle 275: out0_0_out expected -0.13416258990764618, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 276
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.10696083307266235)) <= 0.0 + 1.0e-05 * abs(0.10696083307266235)
            report "Error detected at cycle 276: out0_0_out expected 0.10696083307266235, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 277
        wait until falling_edge(clk);

        -- Cycle 278
        wait until falling_edge(clk);

        -- Cycle 279
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.027921007946133614)) <= 0.0 + 1.0e-05 * abs(-0.027921007946133614)
            report "Error detected at cycle 279: out0_0_out expected -0.027921007946133614, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 280
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.06243869289755821)) <= 0.0 + 1.0e-05 * abs(0.06243869289755821)
            report "Error detected at cycle 280: out0_0_out expected 0.06243869289755821, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 281
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1351722627878189)) <= 0.0 + 1.0e-05 * abs(-0.1351722627878189)
            report "Error detected at cycle 281: out0_0_out expected -0.1351722627878189, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 282
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.4887613356113434)) <= 0.0 + 1.0e-05 * abs(0.4887613356113434)
            report "Error detected at cycle 282: out0_0_out expected 0.4887613356113434, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 283
        wait until falling_edge(clk);

        -- Cycle 284
        wait until falling_edge(clk);

        -- Cycle 285
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.029970936477184296)) <= 0.0 + 1.0e-05 * abs(-0.029970936477184296)
            report "Error detected at cycle 285: out0_0_out expected -0.029970936477184296, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 286
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13164180517196655)) <= 0.0 + 1.0e-05 * abs(-0.13164180517196655)
            report "Error detected at cycle 286: out0_0_out expected -0.13164180517196655, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 287
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.08169203251600266)) <= 0.0 + 1.0e-05 * abs(-0.08169203251600266)
            report "Error detected at cycle 287: out0_0_out expected -0.08169203251600266, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 288
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.07640542834997177)) <= 0.0 + 1.0e-05 * abs(-0.07640542834997177)
            report "Error detected at cycle 288: out0_0_out expected -0.07640542834997177, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 289
        wait until falling_edge(clk);

        -- Cycle 290
        wait until falling_edge(clk);

        -- Cycle 291
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.7447478175163269)) <= 0.0 + 1.0e-05 * abs(0.7447478175163269)
            report "Error detected at cycle 291: out0_0_out expected 0.7447478175163269, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 292
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.012657813727855682)) <= 0.0 + 1.0e-05 * abs(0.012657813727855682)
            report "Error detected at cycle 292: out0_0_out expected 0.012657813727855682, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 293
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.03533279150724411)) <= 0.0 + 1.0e-05 * abs(-0.03533279150724411)
            report "Error detected at cycle 293: out0_0_out expected -0.03533279150724411, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 294
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.008170685730874538)) <= 0.0 + 1.0e-05 * abs(-0.008170685730874538)
            report "Error detected at cycle 294: out0_0_out expected -0.008170685730874538, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 295
        wait until falling_edge(clk);

        -- Cycle 296
        wait until falling_edge(clk);

        -- Cycle 297
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.047435302287340164)) <= 0.0 + 1.0e-05 * abs(0.047435302287340164)
            report "Error detected at cycle 297: out0_0_out expected 0.047435302287340164, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 298
        wait until falling_edge(clk);

        -- Cycle 299
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.02206876315176487)) <= 0.0 + 1.0e-05 * abs(-0.02206876315176487)
            report "Error detected at cycle 299: out0_0_out expected -0.02206876315176487, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 300
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.10012456029653549)) <= 0.0 + 1.0e-05 * abs(0.10012456029653549)
            report "Error detected at cycle 300: out0_0_out expected 0.10012456029653549, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 301
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.038455765694379807)) <= 0.0 + 1.0e-05 * abs(0.038455765694379807)
            report "Error detected at cycle 301: out0_0_out expected 0.038455765694379807, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 302
        wait until falling_edge(clk);

        -- Cycle 303
        wait until falling_edge(clk);

        -- Cycle 304
        wait until falling_edge(clk);

        -- Cycle 305
        wait until falling_edge(clk);

        -- Cycle 306
        wait until falling_edge(clk);

        -- Cycle 307
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.17430882155895233)) <= 0.0 + 1.0e-05 * abs(-0.17430882155895233)
            report "Error detected at cycle 307: out0_0_out expected -0.17430882155895233, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 308
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.003185315988957882)) <= 0.0 + 1.0e-05 * abs(0.003185315988957882)
            report "Error detected at cycle 308: out0_0_out expected 0.003185315988957882, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 309
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0931301936507225)) <= 0.0 + 1.0e-05 * abs(-0.0931301936507225)
            report "Error detected at cycle 309: out0_0_out expected -0.0931301936507225, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 310
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.5832412242889404)) <= 0.0 + 1.0e-05 * abs(0.5832412242889404)
            report "Error detected at cycle 310: out0_0_out expected 0.5832412242889404, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 311
        wait until falling_edge(clk);

        -- Cycle 312
        wait until falling_edge(clk);

        -- Cycle 313
        wait until falling_edge(clk);

        -- Cycle 314
        wait until falling_edge(clk);

        -- Cycle 315
        wait until falling_edge(clk);

        -- Cycle 316
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.007004107348620892)) <= 0.0 + 1.0e-05 * abs(0.007004107348620892)
            report "Error detected at cycle 316: out0_0_out expected 0.007004107348620892, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 317
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1705726683139801)) <= 0.0 + 1.0e-05 * abs(-0.1705726683139801)
            report "Error detected at cycle 317: out0_0_out expected -0.1705726683139801, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 318
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.07240854203701019)) <= 0.0 + 1.0e-05 * abs(-0.07240854203701019)
            report "Error detected at cycle 318: out0_0_out expected -0.07240854203701019, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 319
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.007942136377096176)) <= 0.0 + 1.0e-05 * abs(0.007942136377096176)
            report "Error detected at cycle 319: out0_0_out expected 0.007942136377096176, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 320
        wait until falling_edge(clk);

        -- Cycle 321
        wait until falling_edge(clk);

        -- Cycle 322
        wait until falling_edge(clk);

        -- Cycle 323
        wait until falling_edge(clk);

        -- Cycle 324
        wait until falling_edge(clk);

        -- Cycle 325
        wait until falling_edge(clk);

        -- Cycle 326
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.07523210346698761)) <= 0.0 + 1.0e-05 * abs(-0.07523210346698761)
            report "Error detected at cycle 326: out0_0_out expected -0.07523210346698761, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 327
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2874801754951477)) <= 0.0 + 1.0e-05 * abs(-0.2874801754951477)
            report "Error detected at cycle 327: out0_0_out expected -0.2874801754951477, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 328
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.03942936286330223)) <= 0.0 + 1.0e-05 * abs(-0.03942936286330223)
            report "Error detected at cycle 328: out0_0_out expected -0.03942936286330223, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 329
        wait until falling_edge(clk);

        -- Cycle 330
        wait until falling_edge(clk);

        -- Cycle 331
        wait until falling_edge(clk);

        -- Cycle 332
        wait until falling_edge(clk);

        -- Cycle 333
        wait until falling_edge(clk);

        -- Cycle 334
        wait until falling_edge(clk);

        -- Cycle 335
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.020268496125936508)) <= 0.0 + 1.0e-05 * abs(-0.020268496125936508)
            report "Error detected at cycle 335: out0_0_out expected -0.020268496125936508, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 336
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2634851038455963)) <= 0.0 + 1.0e-05 * abs(-0.2634851038455963)
            report "Error detected at cycle 336: out0_0_out expected -0.2634851038455963, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 337
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.5250609517097473)) <= 0.0 + 1.0e-05 * abs(0.5250609517097473)
            report "Error detected at cycle 337: out0_0_out expected 0.5250609517097473, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 338
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.013914039358496666)) <= 0.0 + 1.0e-05 * abs(0.013914039358496666)
            report "Error detected at cycle 338: out0_0_out expected 0.013914039358496666, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 339
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13064123690128326)) <= 0.0 + 1.0e-05 * abs(-0.13064123690128326)
            report "Error detected at cycle 339: out0_0_out expected -0.13064123690128326, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 340
        wait until falling_edge(clk);

        -- Cycle 341
        wait until falling_edge(clk);

        -- Cycle 342
        wait until falling_edge(clk);

        -- Cycle 343
        wait until falling_edge(clk);

        -- Cycle 344
        wait until falling_edge(clk);

        -- Cycle 345
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.1454460620880127)) <= 0.0 + 1.0e-05 * abs(0.1454460620880127)
            report "Error detected at cycle 345: out0_0_out expected 0.1454460620880127, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 346
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.04851575940847397)) <= 0.0 + 1.0e-05 * abs(0.04851575940847397)
            report "Error detected at cycle 346: out0_0_out expected 0.04851575940847397, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 347
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.09702011197805405)) <= 0.0 + 1.0e-05 * abs(0.09702011197805405)
            report "Error detected at cycle 347: out0_0_out expected 0.09702011197805405, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 348
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.18194514513015747)) <= 0.0 + 1.0e-05 * abs(-0.18194514513015747)
            report "Error detected at cycle 348: out0_0_out expected -0.18194514513015747, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 349
        wait until falling_edge(clk);

        -- Cycle 350
        wait until falling_edge(clk);

        -- Cycle 351
        wait until falling_edge(clk);

        -- Cycle 352
        wait until falling_edge(clk);

        -- Cycle 353
        wait until falling_edge(clk);

        -- Cycle 354
        wait until falling_edge(clk);

        -- Cycle 355
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.029979869723320007)) <= 0.0 + 1.0e-05 * abs(-0.029979869723320007)
            report "Error detected at cycle 355: out0_0_out expected -0.029979869723320007, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 356
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0827391967177391)) <= 0.0 + 1.0e-05 * abs(-0.0827391967177391)
            report "Error detected at cycle 356: out0_0_out expected -0.0827391967177391, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 357
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.20848862826824188)) <= 0.0 + 1.0e-05 * abs(-0.20848862826824188)
            report "Error detected at cycle 357: out0_0_out expected -0.20848862826824188, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 358
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.06804811209440231)) <= 0.0 + 1.0e-05 * abs(0.06804811209440231)
            report "Error detected at cycle 358: out0_0_out expected 0.06804811209440231, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 359
        wait until falling_edge(clk);

        -- Cycle 360
        wait until falling_edge(clk);

        -- Cycle 361
        wait until falling_edge(clk);

        -- Cycle 362
        wait until falling_edge(clk);

        -- Cycle 363
        wait until falling_edge(clk);

        -- Cycle 364
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.9502374529838562)) <= 0.0 + 1.0e-05 * abs(0.9502374529838562)
            report "Error detected at cycle 364: out0_0_out expected 0.9502374529838562, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 365
        wait until falling_edge(clk);

        -- Cycle 366
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.06502603739500046)) <= 0.0 + 1.0e-05 * abs(-0.06502603739500046)
            report "Error detected at cycle 366: out0_0_out expected -0.06502603739500046, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 367
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.14445462822914124)) <= 0.0 + 1.0e-05 * abs(0.14445462822914124)
            report "Error detected at cycle 367: out0_0_out expected 0.14445462822914124, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 368
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.03399326652288437)) <= 0.0 + 1.0e-05 * abs(0.03399326652288437)
            report "Error detected at cycle 368: out0_0_out expected 0.03399326652288437, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 369
        wait until falling_edge(clk);

        -- Cycle 370
        wait until falling_edge(clk);

        -- Cycle 371
        wait until falling_edge(clk);

        -- Cycle 372
        wait until falling_edge(clk);

        -- Cycle 373
        wait until falling_edge(clk);

        -- Cycle 374
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.21584199368953705)) <= 0.0 + 1.0e-05 * abs(0.21584199368953705)
            report "Error detected at cycle 374: out0_0_out expected 0.21584199368953705, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 375
        wait until falling_edge(clk);

        -- Cycle 376
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.13680604100227356)) <= 0.0 + 1.0e-05 * abs(0.13680604100227356)
            report "Error detected at cycle 376: out0_0_out expected 0.13680604100227356, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 377
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13752800226211548)) <= 0.0 + 1.0e-05 * abs(-0.13752800226211548)
            report "Error detected at cycle 377: out0_0_out expected -0.13752800226211548, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 378
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10311596095561981)) <= 0.0 + 1.0e-05 * abs(-0.10311596095561981)
            report "Error detected at cycle 378: out0_0_out expected -0.10311596095561981, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 379
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10669464617967606)) <= 0.0 + 1.0e-05 * abs(-0.10669464617967606)
            report "Error detected at cycle 379: out0_0_out expected -0.10669464617967606, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 380
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.22975283861160278)) <= 0.0 + 1.0e-05 * abs(-0.22975283861160278)
            report "Error detected at cycle 380: out0_0_out expected -0.22975283861160278, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 381
        wait until falling_edge(clk);

        -- Cycle 382
        wait until falling_edge(clk);

        -- Cycle 383
        wait until falling_edge(clk);

        -- Cycle 384
        wait until falling_edge(clk);

        -- Cycle 385
        wait until falling_edge(clk);

        -- Cycle 386
        wait until falling_edge(clk);

        -- Cycle 387
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.12730126082897186)) <= 0.0 + 1.0e-05 * abs(-0.12730126082897186)
            report "Error detected at cycle 387: out0_0_out expected -0.12730126082897186, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 388
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.014474628493189812)) <= 0.0 + 1.0e-05 * abs(0.014474628493189812)
            report "Error detected at cycle 388: out0_0_out expected 0.014474628493189812, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 389
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.03195594996213913)) <= 0.0 + 1.0e-05 * abs(0.03195594996213913)
            report "Error detected at cycle 389: out0_0_out expected 0.03195594996213913, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 390
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.03924935311079025)) <= 0.0 + 1.0e-05 * abs(0.03924935311079025)
            report "Error detected at cycle 390: out0_0_out expected 0.03924935311079025, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 391
        wait until falling_edge(clk);

        -- Cycle 392
        wait until falling_edge(clk);

        -- Cycle 393
        wait until falling_edge(clk);

        -- Cycle 394
        wait until falling_edge(clk);

        -- Cycle 395
        wait until falling_edge(clk);

        -- Cycle 396
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.0063568465411663055)) <= 0.0 + 1.0e-05 * abs(0.0063568465411663055)
            report "Error detected at cycle 396: out0_0_out expected 0.0063568465411663055, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 397
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.05580083280801773)) <= 0.0 + 1.0e-05 * abs(0.05580083280801773)
            report "Error detected at cycle 397: out0_0_out expected 0.05580083280801773, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 398
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.06466279923915863)) <= 0.0 + 1.0e-05 * abs(-0.06466279923915863)
            report "Error detected at cycle 398: out0_0_out expected -0.06466279923915863, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 399
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.015442159958183765)) <= 0.0 + 1.0e-05 * abs(0.015442159958183765)
            report "Error detected at cycle 399: out0_0_out expected 0.015442159958183765, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 400
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.16565842926502228)) <= 0.0 + 1.0e-05 * abs(-0.16565842926502228)
            report "Error detected at cycle 400: out0_0_out expected -0.16565842926502228, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 401
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.5708498358726501)) <= 0.0 + 1.0e-05 * abs(0.5708498358726501)
            report "Error detected at cycle 401: out0_0_out expected 0.5708498358726501, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 402
        wait until falling_edge(clk);

        -- Cycle 403
        wait until falling_edge(clk);

        -- Cycle 404
        wait until falling_edge(clk);

        -- Cycle 405
        wait until falling_edge(clk);

        -- Cycle 406
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1079598069190979)) <= 0.0 + 1.0e-05 * abs(-0.1079598069190979)
            report "Error detected at cycle 406: out0_0_out expected -0.1079598069190979, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 407
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1013529971241951)) <= 0.0 + 1.0e-05 * abs(-0.1013529971241951)
            report "Error detected at cycle 407: out0_0_out expected -0.1013529971241951, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 408
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.04903075098991394)) <= 0.0 + 1.0e-05 * abs(-0.04903075098991394)
            report "Error detected at cycle 408: out0_0_out expected -0.04903075098991394, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 409
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.03877269849181175)) <= 0.0 + 1.0e-05 * abs(-0.03877269849181175)
            report "Error detected at cycle 409: out0_0_out expected -0.03877269849181175, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 410
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10581439733505249)) <= 0.0 + 1.0e-05 * abs(-0.10581439733505249)
            report "Error detected at cycle 410: out0_0_out expected -0.10581439733505249, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 411
        wait until falling_edge(clk);

        -- Cycle 412
        wait until falling_edge(clk);

        -- Cycle 413
        wait until falling_edge(clk);

        -- Cycle 414
        wait until falling_edge(clk);

        -- Cycle 415
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.04815756529569626)) <= 0.0 + 1.0e-05 * abs(-0.04815756529569626)
            report "Error detected at cycle 415: out0_0_out expected -0.04815756529569626, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 416
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.17547553777694702)) <= 0.0 + 1.0e-05 * abs(-0.17547553777694702)
            report "Error detected at cycle 416: out0_0_out expected -0.17547553777694702, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 417
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.23986510932445526)) <= 0.0 + 1.0e-05 * abs(-0.23986510932445526)
            report "Error detected at cycle 417: out0_0_out expected -0.23986510932445526, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 418
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.21714015305042267)) <= 0.0 + 1.0e-05 * abs(-0.21714015305042267)
            report "Error detected at cycle 418: out0_0_out expected -0.21714015305042267, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 419
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.13348814845085144)) <= 0.0 + 1.0e-05 * abs(0.13348814845085144)
            report "Error detected at cycle 419: out0_0_out expected 0.13348814845085144, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 420
        wait until falling_edge(clk);

        -- Cycle 421
        wait until falling_edge(clk);

        -- Cycle 422
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6682536602020264)) <= 0.0 + 1.0e-05 * abs(0.6682536602020264)
            report "Error detected at cycle 422: out0_0_out expected 0.6682536602020264, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 423
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0023358725011348724)) <= 0.0 + 1.0e-05 * abs(-0.0023358725011348724)
            report "Error detected at cycle 423: out0_0_out expected -0.0023358725011348724, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 424
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0699249729514122)) <= 0.0 + 1.0e-05 * abs(-0.0699249729514122)
            report "Error detected at cycle 424: out0_0_out expected -0.0699249729514122, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 425
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.014418991282582283)) <= 0.0 + 1.0e-05 * abs(-0.014418991282582283)
            report "Error detected at cycle 425: out0_0_out expected -0.014418991282582283, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 426
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.1247539222240448)) <= 0.0 + 1.0e-05 * abs(0.1247539222240448)
            report "Error detected at cycle 426: out0_0_out expected 0.1247539222240448, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 427
        wait until falling_edge(clk);

        -- Cycle 428
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.05220543220639229)) <= 0.0 + 1.0e-05 * abs(-0.05220543220639229)
            report "Error detected at cycle 428: out0_0_out expected -0.05220543220639229, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 429
        wait until falling_edge(clk);

        -- Cycle 430
        wait until falling_edge(clk);

        -- Cycle 431
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.053609464317560196)) <= 0.0 + 1.0e-05 * abs(0.053609464317560196)
            report "Error detected at cycle 431: out0_0_out expected 0.053609464317560196, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 432
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.10327304899692535)) <= 0.0 + 1.0e-05 * abs(0.10327304899692535)
            report "Error detected at cycle 432: out0_0_out expected 0.10327304899692535, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 433
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.20743325352668762)) <= 0.0 + 1.0e-05 * abs(0.20743325352668762)
            report "Error detected at cycle 433: out0_0_out expected 0.20743325352668762, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 434
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.18026866018772125)) <= 0.0 + 1.0e-05 * abs(-0.18026866018772125)
            report "Error detected at cycle 434: out0_0_out expected -0.18026866018772125, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 435
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.13309159874916077)) <= 0.0 + 1.0e-05 * abs(0.13309159874916077)
            report "Error detected at cycle 435: out0_0_out expected 0.13309159874916077, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 436
        wait until falling_edge(clk);

        -- Cycle 437
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.08773498237133026)) <= 0.0 + 1.0e-05 * abs(-0.08773498237133026)
            report "Error detected at cycle 437: out0_0_out expected -0.08773498237133026, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 438
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.09743928164243698)) <= 0.0 + 1.0e-05 * abs(-0.09743928164243698)
            report "Error detected at cycle 438: out0_0_out expected -0.09743928164243698, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 439
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.12673886120319366)) <= 0.0 + 1.0e-05 * abs(-0.12673886120319366)
            report "Error detected at cycle 439: out0_0_out expected -0.12673886120319366, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 440
        wait until falling_edge(clk);

        -- Cycle 441
        wait until falling_edge(clk);

        -- Cycle 442
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1808612197637558)) <= 0.0 + 1.0e-05 * abs(-0.1808612197637558)
            report "Error detected at cycle 442: out0_0_out expected -0.1808612197637558, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 443
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.8664875626564026)) <= 0.0 + 1.0e-05 * abs(0.8664875626564026)
            report "Error detected at cycle 443: out0_0_out expected 0.8664875626564026, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 444
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.056816041469573975)) <= 0.0 + 1.0e-05 * abs(-0.056816041469573975)
            report "Error detected at cycle 444: out0_0_out expected -0.056816041469573975, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 445
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.11387381702661514)) <= 0.0 + 1.0e-05 * abs(-0.11387381702661514)
            report "Error detected at cycle 445: out0_0_out expected -0.11387381702661514, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 446
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10088717192411423)) <= 0.0 + 1.0e-05 * abs(-0.10088717192411423)
            report "Error detected at cycle 446: out0_0_out expected -0.10088717192411423, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 447
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.04933243989944458)) <= 0.0 + 1.0e-05 * abs(0.04933243989944458)
            report "Error detected at cycle 447: out0_0_out expected 0.04933243989944458, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 448
        wait until falling_edge(clk);

        -- Cycle 449
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13691915571689606)) <= 0.0 + 1.0e-05 * abs(-0.13691915571689606)
            report "Error detected at cycle 449: out0_0_out expected -0.13691915571689606, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 450
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.3486635982990265)) <= 0.0 + 1.0e-05 * abs(-0.3486635982990265)
            report "Error detected at cycle 450: out0_0_out expected -0.3486635982990265, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 451
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.023970836773514748)) <= 0.0 + 1.0e-05 * abs(0.023970836773514748)
            report "Error detected at cycle 451: out0_0_out expected 0.023970836773514748, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 452
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.044381704181432724)) <= 0.0 + 1.0e-05 * abs(-0.044381704181432724)
            report "Error detected at cycle 452: out0_0_out expected -0.044381704181432724, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 453
        wait until falling_edge(clk);

        -- Cycle 454
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10683455318212509)) <= 0.0 + 1.0e-05 * abs(-0.10683455318212509)
            report "Error detected at cycle 454: out0_0_out expected -0.10683455318212509, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 455
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.12928462028503418)) <= 0.0 + 1.0e-05 * abs(0.12928462028503418)
            report "Error detected at cycle 455: out0_0_out expected 0.12928462028503418, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 456
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.8280317783355713)) <= 0.0 + 1.0e-05 * abs(0.8280317783355713)
            report "Error detected at cycle 456: out0_0_out expected 0.8280317783355713, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 457
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.033007219433784485)) <= 0.0 + 1.0e-05 * abs(-0.033007219433784485)
            report "Error detected at cycle 457: out0_0_out expected -0.033007219433784485, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 458
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.031012192368507385)) <= 0.0 + 1.0e-05 * abs(0.031012192368507385)
            report "Error detected at cycle 458: out0_0_out expected 0.031012192368507385, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 459
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.0059214625507593155)) <= 0.0 + 1.0e-05 * abs(-0.0059214625507593155)
            report "Error detected at cycle 459: out0_0_out expected -0.0059214625507593155, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 460
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1656889170408249)) <= 0.0 + 1.0e-05 * abs(-0.1656889170408249)
            report "Error detected at cycle 460: out0_0_out expected -0.1656889170408249, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 461
        wait until falling_edge(clk);

        -- Cycle 462
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.043869540095329285)) <= 0.0 + 1.0e-05 * abs(-0.043869540095329285)
            report "Error detected at cycle 462: out0_0_out expected -0.043869540095329285, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 463
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.2086651623249054)) <= 0.0 + 1.0e-05 * abs(0.2086651623249054)
            report "Error detected at cycle 463: out0_0_out expected 0.2086651623249054, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 464
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13278943300247192)) <= 0.0 + 1.0e-05 * abs(-0.13278943300247192)
            report "Error detected at cycle 464: out0_0_out expected -0.13278943300247192, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 465
        wait until falling_edge(clk);

        -- Cycle 466
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.1919882595539093)) <= 0.0 + 1.0e-05 * abs(0.1919882595539093)
            report "Error detected at cycle 466: out0_0_out expected 0.1919882595539093, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 467
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.02912379615008831)) <= 0.0 + 1.0e-05 * abs(0.02912379615008831)
            report "Error detected at cycle 467: out0_0_out expected 0.02912379615008831, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 468
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6109279990196228)) <= 0.0 + 1.0e-05 * abs(0.6109279990196228)
            report "Error detected at cycle 468: out0_0_out expected 0.6109279990196228, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 469
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.16041617095470428)) <= 0.0 + 1.0e-05 * abs(-0.16041617095470428)
            report "Error detected at cycle 469: out0_0_out expected -0.16041617095470428, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 470
        wait until falling_edge(clk);

        -- Cycle 471
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2262117564678192)) <= 0.0 + 1.0e-05 * abs(-0.2262117564678192)
            report "Error detected at cycle 471: out0_0_out expected -0.2262117564678192, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 472
        wait until falling_edge(clk);

        -- Cycle 473
        wait until falling_edge(clk);

        -- Cycle 474
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.015325754880905151)) <= 0.0 + 1.0e-05 * abs(-0.015325754880905151)
            report "Error detected at cycle 474: out0_0_out expected -0.015325754880905151, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 475
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.14532886445522308)) <= 0.0 + 1.0e-05 * abs(-0.14532886445522308)
            report "Error detected at cycle 475: out0_0_out expected -0.14532886445522308, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 476
        wait until falling_edge(clk);

        -- Cycle 477
        wait until falling_edge(clk);

        -- Cycle 478
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.14923670887947083)) <= 0.0 + 1.0e-05 * abs(0.14923670887947083)
            report "Error detected at cycle 478: out0_0_out expected 0.14923670887947083, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 479
        wait until falling_edge(clk);

        -- Cycle 480
        wait until falling_edge(clk);

        -- Cycle 481
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.07983817905187607)) <= 0.0 + 1.0e-05 * abs(0.07983817905187607)
            report "Error detected at cycle 481: out0_0_out expected 0.07983817905187607, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 482
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.7417508363723755)) <= 0.0 + 1.0e-05 * abs(0.7417508363723755)
            report "Error detected at cycle 482: out0_0_out expected 0.7417508363723755, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 483
        wait until falling_edge(clk);

        -- Cycle 484
        wait until falling_edge(clk);

        -- Cycle 485
        wait until falling_edge(clk);

        -- Cycle 486
        wait until falling_edge(clk);

        -- Cycle 487
        wait until falling_edge(clk);

        -- Cycle 488
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1771831214427948)) <= 0.0 + 1.0e-05 * abs(-0.1771831214427948)
            report "Error detected at cycle 488: out0_0_out expected -0.1771831214427948, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 489
        wait until falling_edge(clk);

        -- Cycle 490
        wait until falling_edge(clk);

        -- Cycle 491
        wait until falling_edge(clk);

        -- Cycle 492
        wait until falling_edge(clk);

        -- Cycle 493
        wait until falling_edge(clk);

        -- Cycle 494
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6358357071876526)) <= 0.0 + 1.0e-05 * abs(0.6358357071876526)
            report "Error detected at cycle 494: out0_0_out expected 0.6358357071876526, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        report "SUCCESS: All assertions passed" severity note;
        stop(0);
    end process stimulus;

end architecture sim;
