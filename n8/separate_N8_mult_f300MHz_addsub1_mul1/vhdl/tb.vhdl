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

        -- Cycle 0
        in0_0_in <= "00111111111110100010000010110010";
        wait until falling_edge(clk);

        -- Cycle 1
        in0_0_in <= "00111110110100000011101111000000";
        wait until falling_edge(clk);

        -- Cycle 2
        in0_0_in <= "01000000000100000010010010011000";
        wait until falling_edge(clk);

        -- Cycle 3
        in0_0_in <= "00111110111001110111011010001001";
        wait until falling_edge(clk);

        -- Cycle 4
        in0_0_in <= "00111111001011011011110001111110";
        wait until falling_edge(clk);

        -- Cycle 5
        in0_0_in <= "00111111110011101111010110110001";
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
        in0_0_in <= "01000000000100110001001001011111";
        wait until falling_edge(clk);

        -- Cycle 10
        in0_0_in <= "00111110111100101100100000101010";
        wait until falling_edge(clk);

        -- Cycle 11
        in0_0_in <= "00111111010010100001100100100111";
        wait until falling_edge(clk);

        -- Cycle 12
        in0_0_in <= "00111110100011011011110110010100";
        wait until falling_edge(clk);

        -- Cycle 13
        in0_0_in <= "00111110111111101110101110110001";
        wait until falling_edge(clk);

        -- Cycle 14
        in0_0_in <= "00111111001111011111110100010000";
        wait until falling_edge(clk);

        -- Cycle 15
        in0_0_in <= "00111111111001101100100010010110";
        wait until falling_edge(clk);

        -- Cycle 16
        in0_0_in <= "00111110001101011111111000110001";
        wait until falling_edge(clk);

        -- Cycle 17
        in0_0_in <= "00111110101101111111010100010011";
        wait until falling_edge(clk);

        -- Cycle 18
        in0_0_in <= "00111110111111010000010111011001";
        wait until falling_edge(clk);

        -- Cycle 19
        in0_0_in <= "00111111001000111111101101001111";
        wait until falling_edge(clk);

        -- Cycle 20
        in0_0_in <= "00111110101100001100111010000011";
        wait until falling_edge(clk);

        -- Cycle 21
        in0_0_in <= "00111111010001111111100101101111";
        wait until falling_edge(clk);

        -- Cycle 22
        in0_0_in <= "01000000000011010100011010011111";
        wait until falling_edge(clk);

        -- Cycle 23
        in0_0_in <= "00111111001110101001011010101000";
        wait until falling_edge(clk);

        -- Cycle 24
        in0_0_in <= "00111110111011011000010101011100";
        wait until falling_edge(clk);

        -- Cycle 25
        in0_0_in <= "00111111011001111011111101100000";
        wait until falling_edge(clk);

        -- Cycle 26
        in0_0_in <= "00111111000101110000010011011101";
        wait until falling_edge(clk);

        -- Cycle 27
        in0_0_in <= "00111110000100100100101010100001";
        wait until falling_edge(clk);

        -- Cycle 28
        in0_0_in <= "00111110111110001101001110101101";
        wait until falling_edge(clk);

        -- Cycle 29
        in0_0_in <= "00111110111000001011100110010100";
        wait until falling_edge(clk);

        -- Cycle 30
        in0_0_in <= "00111111110100111001111010011110";
        wait until falling_edge(clk);

        -- Cycle 31
        in0_0_in <= "00111110011000011100001100111111";
        wait until falling_edge(clk);

        -- Cycle 32
        in0_0_in <= "00111110110000110010100100101101";
        wait until falling_edge(clk);

        -- Cycle 33
        in0_0_in <= "00111110110100100101101011110010";
        wait until falling_edge(clk);

        -- Cycle 34
        in0_0_in <= "00111101111101101101000100111010";
        wait until falling_edge(clk);

        -- Cycle 35
        in0_0_in <= "00111111111100101110000100010000";
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
        wait until falling_edge(clk);

        -- Cycle 256
        wait until falling_edge(clk);

        -- Cycle 257
        wait until falling_edge(clk);

        -- Cycle 258
        wait until falling_edge(clk);

        -- Cycle 259
        wait until falling_edge(clk);

        -- Cycle 260
        wait until falling_edge(clk);

        -- Cycle 261
        wait until falling_edge(clk);

        -- Cycle 262
        wait until falling_edge(clk);

        -- Cycle 263
        wait until falling_edge(clk);

        -- Cycle 264
        wait until falling_edge(clk);

        -- Cycle 265
        wait until falling_edge(clk);

        -- Cycle 266
        wait until falling_edge(clk);

        -- Cycle 267
        wait until falling_edge(clk);

        -- Cycle 268
        wait until falling_edge(clk);

        -- Cycle 269
        wait until falling_edge(clk);

        -- Cycle 270
        wait until falling_edge(clk);

        -- Cycle 271
        wait until falling_edge(clk);

        -- Cycle 272
        wait until falling_edge(clk);

        -- Cycle 273
        wait until falling_edge(clk);

        -- Cycle 274
        wait until falling_edge(clk);

        -- Cycle 275
        wait until falling_edge(clk);

        -- Cycle 276
        wait until falling_edge(clk);

        -- Cycle 277
        wait until falling_edge(clk);

        -- Cycle 278
        wait until falling_edge(clk);

        -- Cycle 279
        wait until falling_edge(clk);

        -- Cycle 280
        wait until falling_edge(clk);

        -- Cycle 281
        wait until falling_edge(clk);

        -- Cycle 282
        wait until falling_edge(clk);

        -- Cycle 283
        wait until falling_edge(clk);

        -- Cycle 284
        wait until falling_edge(clk);

        -- Cycle 285
        wait until falling_edge(clk);

        -- Cycle 286
        wait until falling_edge(clk);

        -- Cycle 287
        wait until falling_edge(clk);

        -- Cycle 288
        wait until falling_edge(clk);

        -- Cycle 289
        wait until falling_edge(clk);

        -- Cycle 290
        wait until falling_edge(clk);

        -- Cycle 291
        wait until falling_edge(clk);

        -- Cycle 292
        wait until falling_edge(clk);

        -- Cycle 293
        wait until falling_edge(clk);

        -- Cycle 294
        wait until falling_edge(clk);

        -- Cycle 295
        wait until falling_edge(clk);

        -- Cycle 296
        wait until falling_edge(clk);

        -- Cycle 297
        wait until falling_edge(clk);

        -- Cycle 298
        wait until falling_edge(clk);

        -- Cycle 299
        wait until falling_edge(clk);

        -- Cycle 300
        wait until falling_edge(clk);

        -- Cycle 301
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6399386525154114)) <= 0.0 + 1.0e-05 * abs(0.6399386525154114)
            report "Error detected at cycle 301: out0_0_out expected 0.6399386525154114, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
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
        wait until falling_edge(clk);

        -- Cycle 308
        wait until falling_edge(clk);

        -- Cycle 309
        wait until falling_edge(clk);

        -- Cycle 310
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
        wait until falling_edge(clk);

        -- Cycle 317
        wait until falling_edge(clk);

        -- Cycle 318
        wait until falling_edge(clk);

        -- Cycle 319
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
        wait until falling_edge(clk);

        -- Cycle 327
        wait until falling_edge(clk);

        -- Cycle 328
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
        wait until falling_edge(clk);

        -- Cycle 336
        wait until falling_edge(clk);

        -- Cycle 337
        wait until falling_edge(clk);

        -- Cycle 338
        wait until falling_edge(clk);

        -- Cycle 339
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
        wait until falling_edge(clk);

        -- Cycle 346
        wait until falling_edge(clk);

        -- Cycle 347
        wait until falling_edge(clk);

        -- Cycle 348
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
        wait until falling_edge(clk);

        -- Cycle 356
        wait until falling_edge(clk);

        -- Cycle 357
        wait until falling_edge(clk);

        -- Cycle 358
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
        wait until falling_edge(clk);

        -- Cycle 365
        wait until falling_edge(clk);

        -- Cycle 366
        wait until falling_edge(clk);

        -- Cycle 367
        wait until falling_edge(clk);

        -- Cycle 368
        wait until falling_edge(clk);

        -- Cycle 369
        wait until falling_edge(clk);

        -- Cycle 370
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6552298665046692)) <= 0.0 + 1.0e-05 * abs(0.6552298665046692)
            report "Error detected at cycle 370: out0_0_out expected 0.6552298665046692, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 371
        wait until falling_edge(clk);

        -- Cycle 372
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.1676914542913437)) <= 0.0 + 1.0e-05 * abs(-0.1676914542913437)
            report "Error detected at cycle 372: out0_0_out expected -0.1676914542913437, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 373
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.038591064512729645)) <= 0.0 + 1.0e-05 * abs(-0.038591064512729645)
            report "Error detected at cycle 373: out0_0_out expected -0.038591064512729645, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 374
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.07118867337703705)) <= 0.0 + 1.0e-05 * abs(-0.07118867337703705)
            report "Error detected at cycle 374: out0_0_out expected -0.07118867337703705, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 375
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.0010980579536408186)) <= 0.0 + 1.0e-05 * abs(0.0010980579536408186)
            report "Error detected at cycle 375: out0_0_out expected 0.0010980579536408186, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 376
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.024337125942111015)) <= 0.0 + 1.0e-05 * abs(-0.024337125942111015)
            report "Error detected at cycle 376: out0_0_out expected -0.024337125942111015, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 377
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.04889813810586929)) <= 0.0 + 1.0e-05 * abs(-0.04889813810586929)
            report "Error detected at cycle 377: out0_0_out expected -0.04889813810586929, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 378
        wait until falling_edge(clk);

        -- Cycle 379
        wait until falling_edge(clk);

        -- Cycle 380
        wait until falling_edge(clk);

        -- Cycle 381
        wait until falling_edge(clk);

        -- Cycle 382
        wait until falling_edge(clk);

        -- Cycle 383
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.6230738162994385)) <= 0.0 + 1.0e-05 * abs(0.6230738162994385)
            report "Error detected at cycle 383: out0_0_out expected 0.6230738162994385, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 384
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.11348739266395569)) <= 0.0 + 1.0e-05 * abs(-0.11348739266395569)
            report "Error detected at cycle 384: out0_0_out expected -0.11348739266395569, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 385
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.05378502979874611)) <= 0.0 + 1.0e-05 * abs(0.05378502979874611)
            report "Error detected at cycle 385: out0_0_out expected 0.05378502979874611, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 386
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.20239722728729248)) <= 0.0 + 1.0e-05 * abs(-0.20239722728729248)
            report "Error detected at cycle 386: out0_0_out expected -0.20239722728729248, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 387
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.07288522273302078)) <= 0.0 + 1.0e-05 * abs(0.07288522273302078)
            report "Error detected at cycle 387: out0_0_out expected 0.07288522273302078, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 388
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.19113214313983917)) <= 0.0 + 1.0e-05 * abs(-0.19113214313983917)
            report "Error detected at cycle 388: out0_0_out expected -0.19113214313983917, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 389
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.4185147285461426)) <= 0.0 + 1.0e-05 * abs(-0.4185147285461426)
            report "Error detected at cycle 389: out0_0_out expected -0.4185147285461426, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 390
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10431204736232758)) <= 0.0 + 1.0e-05 * abs(-0.10431204736232758)
            report "Error detected at cycle 390: out0_0_out expected -0.10431204736232758, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 391
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.28758031129837036)) <= 0.0 + 1.0e-05 * abs(0.28758031129837036)
            report "Error detected at cycle 391: out0_0_out expected 0.28758031129837036, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 392
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.23138302564620972)) <= 0.0 + 1.0e-05 * abs(-0.23138302564620972)
            report "Error detected at cycle 392: out0_0_out expected -0.23138302564620972, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 393
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.0227673053741455)) <= 0.0 + 1.0e-05 * abs(1.0227673053741455)
            report "Error detected at cycle 393: out0_0_out expected 1.0227673053741455, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 394
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.013774358667433262)) <= 0.0 + 1.0e-05 * abs(-0.013774358667433262)
            report "Error detected at cycle 394: out0_0_out expected -0.013774358667433262, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 395
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.05513254180550575)) <= 0.0 + 1.0e-05 * abs(-0.05513254180550575)
            report "Error detected at cycle 395: out0_0_out expected -0.05513254180550575, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 396
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.12129056453704834)) <= 0.0 + 1.0e-05 * abs(-0.12129056453704834)
            report "Error detected at cycle 396: out0_0_out expected -0.12129056453704834, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 397
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.5404293537139893)) <= 0.0 + 1.0e-05 * abs(0.5404293537139893)
            report "Error detected at cycle 397: out0_0_out expected 0.5404293537139893, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 398
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.0031542778015137)) <= 0.0 + 1.0e-05 * abs(1.0031542778015137)
            report "Error detected at cycle 398: out0_0_out expected 1.0031542778015137, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 399
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.5107254385948181)) <= 0.0 + 1.0e-05 * abs(-0.5107254385948181)
            report "Error detected at cycle 399: out0_0_out expected -0.5107254385948181, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 400
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.2282794713973999)) <= 0.0 + 1.0e-05 * abs(-0.2282794713973999)
            report "Error detected at cycle 400: out0_0_out expected -0.2282794713973999, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 401
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.14631810784339905)) <= 0.0 + 1.0e-05 * abs(0.14631810784339905)
            report "Error detected at cycle 401: out0_0_out expected 0.14631810784339905, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 402
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.595527172088623)) <= 0.0 + 1.0e-05 * abs(0.595527172088623)
            report "Error detected at cycle 402: out0_0_out expected 0.595527172088623, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 403
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.008897637948393822)) <= 0.0 + 1.0e-05 * abs(0.008897637948393822)
            report "Error detected at cycle 403: out0_0_out expected 0.008897637948393822, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 404
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.10824299603700638)) <= 0.0 + 1.0e-05 * abs(-0.10824299603700638)
            report "Error detected at cycle 404: out0_0_out expected -0.10824299603700638, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 405
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.02348753809928894)) <= 0.0 + 1.0e-05 * abs(-0.02348753809928894)
            report "Error detected at cycle 405: out0_0_out expected -0.02348753809928894, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 406
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (0.1428597867488861)) <= 0.0 + 1.0e-05 * abs(0.1428597867488861)
            report "Error detected at cycle 406: out0_0_out expected 0.1428597867488861, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 407
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.14721275866031647)) <= 0.0 + 1.0e-05 * abs(-0.14721275866031647)
            report "Error detected at cycle 407: out0_0_out expected -0.14721275866031647, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 408
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.08005347847938538)) <= 0.0 + 1.0e-05 * abs(-0.08005347847938538)
            report "Error detected at cycle 408: out0_0_out expected -0.08005347847938538, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 409
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (1.11365807056427)) <= 0.0 + 1.0e-05 * abs(1.11365807056427)
            report "Error detected at cycle 409: out0_0_out expected 1.11365807056427, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        -- Cycle 410
        assert abs(to_real(to_float(out0_0_out, 8, 23)) - (-0.13396699726581573)) <= 0.0 + 1.0e-05 * abs(-0.13396699726581573)
            report "Error detected at cycle 410: out0_0_out expected -0.13396699726581573, got " & real'image(to_real(to_float(out0_0_out, 8, 23))) severity failure;
        wait until falling_edge(clk);

        report "SUCCESS: All assertions passed" severity note;
        stop(0);
    end process stimulus;

end architecture sim;
