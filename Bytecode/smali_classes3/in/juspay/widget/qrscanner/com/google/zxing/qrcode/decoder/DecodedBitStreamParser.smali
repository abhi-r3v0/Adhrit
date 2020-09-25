.class final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a:[C

    return-void
.end method

.method private static a(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 245
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 248
    aget-char p0, v0, p0

    return p0

    .line 246
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 333
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_0
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 340
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x10

    .line 345
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    .line 348
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method static a([BLin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 57
    new-instance v7, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;-><init>([B)V

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x0

    move-object/from16 v16, v12

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 71
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 73
    :cond_0
    invoke-virtual {v7, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v1

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    goto :goto_1

    .line 75
    :goto_2
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-eq v6, v1, :cond_2

    .line 76
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->h:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-eq v6, v1, :cond_c

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->i:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_1

    goto/16 :goto_4

    .line 79
    :cond_1
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->d:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_4

    .line 80
    invoke-virtual {v7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const/16 v1, 0x8

    .line 85
    invoke-virtual {v7, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v2

    .line 86
    invoke-virtual {v7, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v1

    move v15, v1

    move v14, v2

    :cond_2
    :goto_3
    move-object v11, v6

    goto/16 :goto_5

    .line 81
    :cond_3
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 87
    :cond_4
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->f:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_6

    .line 89
    invoke-static {v7}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;)I

    move-result v1

    .line 90
    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;->a(I)Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;

    move-result-object v16

    if-eqz v16, :cond_5

    goto :goto_3

    .line 92
    :cond_5
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 96
    :cond_6
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->j:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_7

    .line 98
    invoke-virtual {v7, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v1

    .line 99
    invoke-virtual {v6, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    invoke-virtual {v7, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v2

    if-ne v1, v11, :cond_2

    .line 101
    invoke-static {v7, v9, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_3

    .line 106
    :cond_7
    invoke-virtual {v6, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    invoke-virtual {v7, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v3

    .line 107
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_8

    .line 108
    invoke-static {v7, v9, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->c(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_3

    .line 109
    :cond_8
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_9

    .line 110
    invoke-static {v7, v9, v3, v13}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_3

    .line 111
    :cond_9
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_a

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v4, v16

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v6, p3

    .line 112
    invoke-static/range {v1 .. v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_5

    :cond_a
    move-object v11, v6

    .line 113
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->g:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v11, v1, :cond_b

    .line 114
    invoke-static {v7, v9, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->b(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_5

    .line 116
    :cond_b
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_4
    move-object v11, v6

    const/4 v13, 0x1

    .line 121
    :goto_5
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v11, v1, :cond_f

    .line 127
    new-instance v7, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    .line 128
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v3, v12

    goto :goto_6

    :cond_d
    move-object v3, v10

    :goto_6
    if-nez p2, :cond_e

    move-object v4, v12

    goto :goto_7

    .line 130
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_7
    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v7

    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 124
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 142
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 148
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 152
    invoke-virtual {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v2

    .line 153
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_0

    const v3, 0xa1a1

    goto :goto_1

    :cond_0
    const v3, 0xa6a1

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 161
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 162
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 168
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 170
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 143
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    .line 217
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 221
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v2, 0x8

    .line 223
    invoke-virtual {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 232
    invoke-static {v0, p5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/StringUtils;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 237
    :goto_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 239
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 218
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 261
    invoke-virtual {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v1

    .line 262
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 268
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_2

    .line 271
    invoke-virtual {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result p0

    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 276
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_6

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_5

    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_4

    .line 280
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 p0, 0x1d

    .line 283
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static b(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 178
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 184
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 188
    invoke-virtual {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v2

    .line 189
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_0

    const v3, 0x8140

    goto :goto_1

    :cond_0
    const v3, 0xc140

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 197
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 198
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 204
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 206
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 179
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static c(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 299
    invoke-virtual {p0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    .line 303
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 297
    :cond_1
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 310
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_4

    .line 313
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_3

    .line 317
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    rem-int/2addr p0, v1

    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 315
    :cond_3
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 311
    :cond_4
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 321
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_7

    .line 324
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a(I)I

    move-result p0

    if-ge p0, v1, :cond_6

    .line 328
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :cond_6
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 322
    :cond_7
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    return-void
.end method
