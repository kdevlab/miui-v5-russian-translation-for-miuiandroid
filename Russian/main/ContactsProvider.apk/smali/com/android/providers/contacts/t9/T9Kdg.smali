.class public Lcom/android/providers/contacts/t9/T9Kdg;
.super Ljava/lang/Object;
.source "T9Kdg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KDGT9"

.field private static final sPinyinT9Map:[C

.field private static final sZhuyin2T9Map:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    .line 11
    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/contacts/t9/T9Kdg;->sZhuyin2T9Map:[C

    return-void

    .line 10
    nop

    :array_0
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 11
    :array_1
    .array-data 0x2
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatCharToT9(C)C
    .locals 13
    .parameter "paramChar"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x396

    const/4 v10, 0x0

    .line 16
    const/4 v5, 0x0

    .line 18
    .local v5, serial:Ljava/lang/String;
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    .local v2, get:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.repo.build"

    aput-object v8, v6, v7

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #get:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v3, 0x0

    .line 25
    .local v3, i:C
    const-string v6, "kdgdev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "burgerz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "czjomi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 26
    :cond_0
    const/16 v6, 0x41

    if-lt p0, v6, :cond_1

    const/16 v6, 0x5a

    if-gt p0, v6, :cond_1

    .line 27
    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    add-int/lit8 v7, p0, -0x41

    aget-char v3, v6, v7

    .line 28
    const-string v6, "KDGT9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 508
    .end local v3           #i:C
    .local v4, i:I
    :goto_1
    return v4

    .line 31
    .end local v4           #i:I
    .restart local v3       #i:C
    :cond_1
    const/16 v6, 0x61

    if-lt p0, v6, :cond_3

    const/16 v6, 0x7a

    if-gt p0, v6, :cond_3

    .line 33
    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    add-int/lit8 v7, p0, -0x61

    aget-char v3, v6, v7

    .line 502
    :cond_2
    :goto_2
    const-string v6, "KDGT9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 504
    .restart local v4       #i:I
    goto :goto_1

    .line 35
    .end local v4           #i:I
    :cond_3
    const/16 v6, 0x3105

    if-lt p0, v6, :cond_4

    const/16 v6, 0x3129

    if-gt p0, v6, :cond_4

    .line 37
    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sZhuyin2T9Map:[C

    add-int/lit16 v7, p0, -0x3105

    aget-char v3, v6, v7

    goto :goto_2

    .line 39
    :cond_4
    const/16 v6, 0xc0

    if-lt p0, v6, :cond_5

    const/16 v6, 0xc7

    if-gt p0, v6, :cond_5

    .line 41
    const/16 v3, 0x32

    goto :goto_2

    .line 43
    :cond_5
    const/16 v6, 0xe0

    if-lt p0, v6, :cond_6

    const/16 v6, 0xe7

    if-gt p0, v6, :cond_6

    .line 45
    const/16 v3, 0x32

    goto :goto_2

    .line 47
    :cond_6
    const/16 v6, 0x100

    if-lt p0, v6, :cond_7

    const/16 v6, 0x10d

    if-gt p0, v6, :cond_7

    .line 49
    const/16 v3, 0x32

    goto :goto_2

    .line 51
    :cond_7
    const/16 v6, 0x180

    if-lt p0, v6, :cond_8

    const/16 v6, 0x188

    if-gt p0, v6, :cond_8

    .line 53
    const/16 v3, 0x32

    goto :goto_2

    .line 55
    :cond_8
    const/16 v6, 0x1cd

    if-lt p0, v6, :cond_9

    const/16 v6, 0x1ce

    if-gt p0, v6, :cond_9

    .line 57
    const/16 v3, 0x32

    goto :goto_2

    .line 59
    :cond_9
    const/16 v6, 0x386

    if-ne p0, v6, :cond_a

    .line 61
    const/16 v3, 0x32

    goto :goto_2

    .line 63
    :cond_a
    const/16 v6, 0x391

    if-lt p0, v6, :cond_b

    const/16 v6, 0x393

    if-gt p0, v6, :cond_b

    .line 65
    const/16 v3, 0x32

    goto :goto_2

    .line 67
    :cond_b
    const/16 v6, 0x3ac

    if-ne p0, v6, :cond_c

    .line 69
    const/16 v3, 0x32

    goto :goto_2

    .line 71
    :cond_c
    const/16 v6, 0x3b1

    if-lt p0, v6, :cond_d

    const/16 v6, 0x3b3

    if-gt p0, v6, :cond_d

    .line 73
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 75
    :cond_d
    const/16 v6, 0x410

    if-lt p0, v6, :cond_e

    const/16 v6, 0x413

    if-gt p0, v6, :cond_e

    .line 77
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 79
    :cond_e
    const/16 v6, 0x430

    if-lt p0, v6, :cond_f

    const/16 v6, 0x433

    if-gt p0, v6, :cond_f

    .line 81
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 83
    :cond_f
    const/16 v6, 0x490

    if-lt p0, v6, :cond_10

    const/16 v6, 0x491

    if-gt p0, v6, :cond_10

    .line 85
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 87
    :cond_10
    const/16 v6, 0x1ea0

    if-lt p0, v6, :cond_11

    const/16 v6, 0x1eb7

    if-gt p0, v6, :cond_11

    .line 89
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 91
    :cond_11
    const/16 v6, 0xc3e

    if-ne p0, v6, :cond_12

    .line 93
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 95
    :cond_12
    const/16 v6, 0x628

    if-lt p0, v6, :cond_13

    const/16 v6, 0x62b

    if-gt p0, v6, :cond_13

    .line 97
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 99
    :cond_13
    const/16 v6, 0x67e

    if-ne p0, v6, :cond_14

    .line 101
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 103
    :cond_14
    const/16 v6, 0x5d3

    if-lt p0, v6, :cond_15

    const/16 v6, 0x5d5

    if-gt p0, v6, :cond_15

    .line 105
    const/16 v3, 0x32

    goto/16 :goto_2

    .line 107
    :cond_15
    const/16 v6, 0xc8

    if-lt p0, v6, :cond_16

    const/16 v6, 0xcb

    if-gt p0, v6, :cond_16

    .line 109
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 111
    :cond_16
    const/16 v6, 0xe8

    if-lt p0, v6, :cond_17

    const/16 v6, 0xeb

    if-gt p0, v6, :cond_17

    .line 113
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 115
    :cond_17
    const/16 v6, 0x10e

    if-lt p0, v6, :cond_18

    const/16 v6, 0x11b

    if-gt p0, v6, :cond_18

    .line 117
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 119
    :cond_18
    const/16 v6, 0x189

    if-lt p0, v6, :cond_19

    const/16 v6, 0x192

    if-gt p0, v6, :cond_19

    .line 121
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 123
    :cond_19
    const/16 v6, 0x394

    if-lt p0, v6, :cond_1a

    if-gt p0, v11, :cond_1a

    .line 125
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 127
    :cond_1a
    const/16 v6, 0x3ad

    if-lt p0, v6, :cond_1b

    const/16 v6, 0x33

    if-gt p0, v6, :cond_1b

    .line 129
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 131
    :cond_1b
    const/16 v6, 0x3b4

    if-lt p0, v6, :cond_1c

    const/16 v6, 0x3b6

    if-gt p0, v6, :cond_1c

    .line 133
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 135
    :cond_1c
    const/16 v6, 0x401

    if-lt p0, v6, :cond_1d

    const/16 v6, 0x402

    if-gt p0, v6, :cond_1d

    .line 137
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 139
    :cond_1d
    const/16 v6, 0x451

    if-lt p0, v6, :cond_1e

    const/16 v6, 0x452

    if-gt p0, v6, :cond_1e

    .line 141
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 143
    :cond_1e
    const/16 v6, 0x404

    if-ne p0, v6, :cond_1f

    const/16 v6, 0x454

    if-eq p0, v6, :cond_1f

    .line 145
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 147
    :cond_1f
    const/16 v6, 0x414

    if-lt p0, v6, :cond_20

    const/16 v6, 0x417

    if-gt p0, v6, :cond_20

    .line 149
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 151
    :cond_20
    const/16 v6, 0x434

    if-lt p0, v6, :cond_21

    const/16 v6, 0x437

    if-gt p0, v6, :cond_21

    .line 153
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 155
    :cond_21
    const/16 v6, 0x1eb8

    if-lt p0, v6, :cond_22

    const/16 v6, 0x1ec7

    if-gt p0, v6, :cond_22

    .line 157
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 159
    :cond_22
    const/16 v6, 0x3137

    if-ne p0, v6, :cond_23

    const/16 v6, 0x314c

    if-eq p0, v6, :cond_23

    .line 161
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 163
    :cond_23
    const/16 v6, 0x627

    if-ne p0, v6, :cond_24

    .line 165
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 167
    :cond_24
    const/16 v6, 0x621

    if-lt p0, v6, :cond_25

    const/16 v6, 0x623

    if-gt p0, v6, :cond_25

    .line 169
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 171
    :cond_25
    const/16 v6, 0x625

    if-ne p0, v6, :cond_26

    const/16 v6, 0x649

    if-eq p0, v6, :cond_26

    .line 173
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 175
    :cond_26
    const/16 v6, 0x5d0

    if-lt p0, v6, :cond_27

    const/16 v6, 0x5d2

    if-gt p0, v6, :cond_27

    .line 177
    const/16 v3, 0x33

    goto/16 :goto_2

    .line 179
    :cond_27
    const/16 v6, 0xcc

    if-lt p0, v6, :cond_28

    const/16 v6, 0xcf

    if-gt p0, v6, :cond_28

    .line 181
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 183
    :cond_28
    const/16 v6, 0xec

    if-lt p0, v6, :cond_29

    const/16 v6, 0xef

    if-gt p0, v6, :cond_29

    .line 185
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 187
    :cond_29
    const/16 v6, 0x11c

    if-lt p0, v6, :cond_2a

    const/16 v6, 0x133

    if-gt p0, v6, :cond_2a

    .line 189
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 191
    :cond_2a
    const/16 v6, 0x193

    if-lt p0, v6, :cond_2b

    const/16 v6, 0x197

    if-gt p0, v6, :cond_2b

    .line 193
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 195
    :cond_2b
    const/16 v6, 0x1cf

    if-lt p0, v6, :cond_2c

    const/16 v6, 0x1d0

    if-gt p0, v6, :cond_2c

    .line 197
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 199
    :cond_2c
    if-lt p0, v11, :cond_2d

    const/16 v6, 0x399

    if-gt p0, v6, :cond_2d

    .line 201
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 203
    :cond_2d
    const/16 v6, 0x3aa

    if-ne p0, v6, :cond_2e

    const/16 v6, 0x3ca

    if-eq p0, v6, :cond_2e

    .line 205
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 207
    :cond_2e
    const/16 v6, 0x3ae

    if-lt p0, v6, :cond_2f

    const/16 v6, 0x3af

    if-gt p0, v6, :cond_2f

    .line 209
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 211
    :cond_2f
    const/16 v6, 0x3b7

    if-lt p0, v6, :cond_30

    const/16 v6, 0x3b9

    if-gt p0, v6, :cond_30

    .line 213
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 215
    :cond_30
    const/16 v6, 0x406

    if-lt p0, v6, :cond_31

    const/16 v6, 0x408

    if-gt p0, v6, :cond_31

    .line 217
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 219
    :cond_31
    const/16 v6, 0x418

    if-lt p0, v6, :cond_32

    const/16 v6, 0x41b

    if-gt p0, v6, :cond_32

    .line 221
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 223
    :cond_32
    const/16 v6, 0x438

    if-lt p0, v6, :cond_33

    const/16 v6, 0x43b

    if-gt p0, v6, :cond_33

    .line 225
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 227
    :cond_33
    const/16 v6, 0x456

    if-lt p0, v6, :cond_34

    const/16 v6, 0x458

    if-gt p0, v6, :cond_34

    .line 229
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 231
    :cond_34
    const/16 v6, 0x1ec8

    if-lt p0, v6, :cond_35

    const/16 v6, 0x1ecb

    if-gt p0, v6, :cond_35

    .line 233
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 235
    :cond_35
    const/16 v6, 0x3139

    if-ne p0, v6, :cond_36

    .line 237
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 239
    :cond_36
    const/16 v6, 0x633

    if-lt p0, v6, :cond_37

    const/16 v6, 0x636

    if-gt p0, v6, :cond_37

    .line 241
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 243
    :cond_37
    const/16 v6, 0x5dd

    if-lt p0, v6, :cond_38

    const/16 v6, 0x5e0

    if-gt p0, v6, :cond_38

    .line 245
    const/16 v3, 0x34

    goto/16 :goto_2

    .line 247
    :cond_38
    const/16 v6, 0x134

    if-lt p0, v6, :cond_39

    const/16 v6, 0x142

    if-gt p0, v6, :cond_39

    .line 249
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 251
    :cond_39
    const/16 v6, 0x198

    if-lt p0, v6, :cond_3a

    const/16 v6, 0x19b

    if-gt p0, v6, :cond_3a

    .line 253
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 255
    :cond_3a
    const/16 v6, 0x39a

    if-lt p0, v6, :cond_3b

    const/16 v6, 0x39c

    if-gt p0, v6, :cond_3b

    .line 257
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 259
    :cond_3b
    const/16 v6, 0x3ba

    if-lt p0, v6, :cond_3c

    const/16 v6, 0x3bc

    if-gt p0, v6, :cond_3c

    .line 261
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 263
    :cond_3c
    const/16 v6, 0x41c

    if-lt p0, v6, :cond_3d

    const/16 v6, 0x41f

    if-gt p0, v6, :cond_3d

    .line 265
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 267
    :cond_3d
    const/16 v6, 0x43c

    if-lt p0, v6, :cond_3e

    const/16 v6, 0x43f

    if-gt p0, v6, :cond_3e

    .line 269
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 271
    :cond_3e
    const/16 v6, 0x3141

    if-ne p0, v6, :cond_3f

    .line 273
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 275
    :cond_3f
    const/16 v6, 0x62f

    if-lt p0, v6, :cond_40

    const/16 v6, 0x632

    if-gt p0, v6, :cond_40

    .line 277
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 279
    :cond_40
    const/16 v6, 0x698

    if-ne p0, v6, :cond_41

    .line 281
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 283
    :cond_41
    const/16 v6, 0x5d9

    if-lt p0, v6, :cond_42

    const/16 v6, 0x5dc

    if-gt p0, v6, :cond_42

    .line 285
    const/16 v3, 0x35

    goto/16 :goto_2

    .line 287
    :cond_42
    const/16 v6, 0xd1

    if-lt p0, v6, :cond_43

    const/16 v6, 0xd8

    if-gt p0, v6, :cond_43

    .line 289
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 291
    :cond_43
    const/16 v6, 0xf1

    if-lt p0, v6, :cond_44

    const/16 v6, 0xf8

    if-gt p0, v6, :cond_44

    .line 293
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 295
    :cond_44
    const/16 v6, 0x143

    if-lt p0, v6, :cond_45

    const/16 v6, 0x153

    if-gt p0, v6, :cond_45

    .line 297
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 299
    :cond_45
    const/16 v6, 0x19c

    if-lt p0, v6, :cond_46

    const/16 v6, 0x1a3

    if-gt p0, v6, :cond_46

    .line 301
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 303
    :cond_46
    const/16 v6, 0x38c

    if-ne p0, v6, :cond_47

    const/16 v6, 0x3cc

    if-eq p0, v6, :cond_47

    .line 305
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 307
    :cond_47
    const/16 v6, 0x39d

    if-lt p0, v6, :cond_48

    const/16 v6, 0x39f

    if-gt p0, v6, :cond_48

    .line 309
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 311
    :cond_48
    const/16 v6, 0x3bd

    if-lt p0, v6, :cond_49

    const/16 v6, 0x3bf

    if-gt p0, v6, :cond_49

    .line 313
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 315
    :cond_49
    const/16 v6, 0x420

    if-lt p0, v6, :cond_4a

    const/16 v6, 0x423

    if-gt p0, v6, :cond_4a

    .line 317
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 319
    :cond_4a
    const/16 v6, 0x440

    if-lt p0, v6, :cond_4b

    const/16 v6, 0x443

    if-gt p0, v6, :cond_4b

    .line 321
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 323
    :cond_4b
    const/16 v6, 0x1ecc

    if-lt p0, v6, :cond_4c

    const/16 v6, 0x1ee3

    if-gt p0, v6, :cond_4c

    .line 325
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 327
    :cond_4c
    const/16 v6, 0x3142

    if-ne p0, v6, :cond_4d

    const/16 v6, 0x314d

    if-eq p0, v6, :cond_4d

    .line 329
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 331
    :cond_4d
    const/16 v6, 0x62c

    if-lt p0, v6, :cond_4e

    const/16 v6, 0x62e

    if-gt p0, v6, :cond_4e

    .line 333
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 335
    :cond_4e
    const/16 v6, 0x686

    if-ne p0, v6, :cond_4f

    .line 337
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 339
    :cond_4f
    const/16 v6, 0x5d6

    if-lt p0, v6, :cond_50

    const/16 v6, 0x5d8

    if-gt p0, v6, :cond_50

    .line 341
    const/16 v3, 0x36

    goto/16 :goto_2

    .line 343
    :cond_50
    const/16 v6, 0x154

    if-lt p0, v6, :cond_51

    const/16 v6, 0x161

    if-gt p0, v6, :cond_51

    .line 345
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 347
    :cond_51
    const/16 v6, 0xdf

    if-ne p0, v6, :cond_52

    .line 349
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 351
    :cond_52
    const/16 v6, 0x1a4

    if-lt p0, v6, :cond_53

    const/16 v6, 0x1aa

    if-gt p0, v6, :cond_53

    .line 353
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 355
    :cond_53
    const/16 v6, 0x3a0

    if-lt p0, v6, :cond_54

    const/16 v6, 0x3a3

    if-gt p0, v6, :cond_54

    .line 357
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 359
    :cond_54
    const/16 v6, 0x3c0

    if-lt p0, v6, :cond_55

    const/16 v6, 0x3c3

    if-gt p0, v6, :cond_55

    .line 361
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 363
    :cond_55
    const/16 v6, 0x424

    if-lt p0, v6, :cond_56

    const/16 v6, 0x427

    if-gt p0, v6, :cond_56

    .line 365
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 367
    :cond_56
    const/16 v6, 0x444

    if-lt p0, v6, :cond_57

    const/16 v6, 0x447

    if-gt p0, v6, :cond_57

    .line 369
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 371
    :cond_57
    const/16 v6, 0x3145

    if-ne p0, v6, :cond_58

    const/16 v6, 0x6cc

    if-eq p0, v6, :cond_58

    .line 373
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 375
    :cond_58
    const/16 v6, 0x646

    if-lt p0, v6, :cond_59

    const/16 v6, 0x648

    if-gt p0, v6, :cond_59

    .line 377
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 379
    :cond_59
    const/16 v6, 0x64a

    if-ne p0, v6, :cond_5a

    const/16 v6, 0x624

    if-eq p0, v6, :cond_5a

    .line 381
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 383
    :cond_5a
    const/16 v6, 0x626

    if-ne p0, v6, :cond_5b

    .line 385
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 387
    :cond_5b
    const/16 v6, 0x5e8

    if-lt p0, v6, :cond_5c

    const/16 v6, 0x5ea

    if-gt p0, v6, :cond_5c

    .line 389
    const/16 v3, 0x37

    goto/16 :goto_2

    .line 391
    :cond_5c
    const/16 v6, 0xd9

    if-lt p0, v6, :cond_5d

    const/16 v6, 0xdc

    if-gt p0, v6, :cond_5d

    .line 393
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 395
    :cond_5d
    const/16 v6, 0xf9

    if-lt p0, v6, :cond_5e

    const/16 v6, 0xfc

    if-gt p0, v6, :cond_5e

    .line 397
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 399
    :cond_5e
    const/16 v6, 0x162

    if-lt p0, v6, :cond_5f

    const/16 v6, 0x173

    if-gt p0, v6, :cond_5f

    .line 401
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 403
    :cond_5f
    const/16 v6, 0x1ab

    if-lt p0, v6, :cond_60

    const/16 v6, 0x1b2

    if-gt p0, v6, :cond_60

    .line 405
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 407
    :cond_60
    const/16 v6, 0x1d3

    if-lt p0, v6, :cond_61

    const/16 v6, 0x1dc

    if-gt p0, v6, :cond_61

    .line 409
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 411
    :cond_61
    const/16 v6, 0x3a4

    if-lt p0, v6, :cond_62

    const/16 v6, 0x3a6

    if-gt p0, v6, :cond_62

    .line 413
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 415
    :cond_62
    const/16 v6, 0x3c4

    if-lt p0, v6, :cond_63

    const/16 v6, 0x3c6

    if-gt p0, v6, :cond_63

    .line 417
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 419
    :cond_63
    const/16 v6, 0x3cb

    if-ne p0, v6, :cond_64

    const/16 v6, 0x3147

    if-eq p0, v6, :cond_64

    .line 421
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 423
    :cond_64
    const/16 v6, 0x428

    if-lt p0, v6, :cond_65

    const/16 v6, 0x42b

    if-gt p0, v6, :cond_65

    .line 425
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 427
    :cond_65
    const/16 v6, 0x448

    if-lt p0, v6, :cond_66

    const/16 v6, 0x44b

    if-gt p0, v6, :cond_66

    .line 429
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 431
    :cond_66
    const/16 v6, 0x1ee4

    if-lt p0, v6, :cond_67

    const/16 v6, 0x1ef1

    if-gt p0, v6, :cond_67

    .line 433
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 435
    :cond_67
    const/16 v6, 0x641

    if-lt p0, v6, :cond_68

    const/16 v6, 0x645

    if-gt p0, v6, :cond_68

    .line 437
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 439
    :cond_68
    const/16 v6, 0x6a9

    if-ne p0, v6, :cond_69

    const/16 v6, 0x6af

    if-eq p0, v6, :cond_69

    .line 441
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 443
    :cond_69
    const/16 v6, 0x5e5

    if-lt p0, v6, :cond_6a

    const/16 v6, 0x5e7

    if-gt p0, v6, :cond_6a

    .line 445
    const/16 v3, 0x38

    goto/16 :goto_2

    .line 447
    :cond_6a
    const/16 v6, 0xdd

    if-ne p0, v6, :cond_6b

    const/16 v6, 0xfd

    if-eq p0, v6, :cond_6b

    .line 449
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 451
    :cond_6b
    const/16 v6, 0x174

    if-lt p0, v6, :cond_6c

    const/16 v6, 0x17e

    if-gt p0, v6, :cond_6c

    .line 453
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 455
    :cond_6c
    const/16 v6, 0x1b3

    if-lt p0, v6, :cond_6d

    const/16 v6, 0x1bf

    if-gt p0, v6, :cond_6d

    .line 457
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 459
    :cond_6d
    const/16 v6, 0x38f

    if-ne p0, v6, :cond_6e

    const/16 v6, 0x3ce

    if-eq p0, v6, :cond_6e

    .line 461
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 463
    :cond_6e
    const/16 v6, 0x3a7

    if-lt p0, v6, :cond_6f

    const/16 v6, 0x3a9

    if-gt p0, v6, :cond_6f

    .line 465
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 467
    :cond_6f
    const/16 v6, 0x3c7

    if-lt p0, v6, :cond_70

    const/16 v6, 0x3c9

    if-gt p0, v6, :cond_70

    .line 469
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 471
    :cond_70
    const/16 v6, 0x42c

    if-lt p0, v6, :cond_71

    const/16 v6, 0x42f

    if-gt p0, v6, :cond_71

    .line 473
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 475
    :cond_71
    const/16 v6, 0x44c

    if-lt p0, v6, :cond_72

    const/16 v6, 0x44f

    if-gt p0, v6, :cond_72

    .line 477
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 479
    :cond_72
    const/16 v6, 0x1ef2

    if-lt p0, v6, :cond_73

    const/16 v6, 0x1ef9

    if-gt p0, v6, :cond_73

    .line 481
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 483
    :cond_73
    const/16 v6, 0x3148

    if-ne p0, v6, :cond_74

    const/16 v6, 0x314a

    if-eq p0, v6, :cond_74

    .line 485
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 487
    :cond_74
    const/16 v6, 0x637

    if-lt p0, v6, :cond_75

    const/16 v6, 0x63a

    if-gt p0, v6, :cond_75

    .line 489
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 491
    :cond_75
    const/16 v6, 0x5e1

    if-lt p0, v6, :cond_76

    const/16 v6, 0x5e4

    if-gt p0, v6, :cond_76

    .line 493
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 495
    :cond_76
    const/16 v6, 0x314e

    if-ne p0, v6, :cond_77

    .line 497
    const/16 v3, 0x39

    goto/16 :goto_2

    .line 499
    :cond_77
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9Kdg;->isValidT9Key(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 500
    move v3, p0

    goto/16 :goto_2

    .line 506
    :cond_78
    invoke-static {v12, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move v4, v3

    .line 508
    .restart local v4       #i:I
    goto/16 :goto_1

    .line 21
    .end local v3           #i:C
    .end local v4           #i:I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public static isValidT9Key(C)Z
    .locals 1
    .parameter "paramChar"

    .prologue
    .line 513
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 518
    :cond_1
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
