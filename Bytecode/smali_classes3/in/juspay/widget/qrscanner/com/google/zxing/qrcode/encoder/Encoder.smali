.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(I)I
    .locals 2

    .line 194
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 195
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 263
    invoke-static {p0, p1, p2, v2, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MatrixUtil;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 264
    invoke-static {p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I
    .locals 0

    .line 186
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result p1

    invoke-virtual {p0, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    .line 59
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MaskUtil;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 60
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MaskUtil;->b(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MaskUtil;->c(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MaskUtil;->d(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;III)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 397
    invoke-virtual/range {p0 .. p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 408
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 413
    invoke-static/range {v0 .. v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(IIII[I[I)V

    .line 417
    aget v0, v15, v10

    .line 418
    new-array v1, v0, [B

    shl-int/lit8 v2, v12, 0x3

    move-object/from16 v3, p0

    .line 419
    invoke-virtual {v3, v2, v1, v10, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a(I[BII)V

    .line 420
    aget v2, v16, v10

    invoke-static {v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a([BI)[B

    move-result-object v2

    .line 421
    new-instance v4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v4, v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 424
    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 425
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    .line 431
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v13, :cond_3

    .line 435
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;

    .line 436
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;->a()[B

    move-result-object v4

    .line 437
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 438
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 444
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;

    .line 445
    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/BlockPair;->b()[B

    move-result-object v3

    .line 446
    array-length v4, v3

    if-ge v10, v4, :cond_4

    .line 447
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 451
    :cond_6
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    .line 452
    :cond_7
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_8
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_9
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;
    .locals 5

    const-string v0, "Shift_JIS"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->g:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 215
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 219
    :cond_1
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 226
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 229
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 231
    :cond_5
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method private static a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 275
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 276
    invoke-static {p0, v1, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 175
    invoke-static {v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 178
    invoke-static {p1, p2, p3, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result p1

    .line 179
    invoke-static {p1, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 82
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->CHARACTER_SET:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ISO-8859-1"

    if-eqz v0, :cond_1

    .line 84
    sget-object v2, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->CHARACTER_SET:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 89
    :goto_1
    invoke-static {p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    move-result-object v3

    .line 93
    new-instance v4, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;

    invoke-direct {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;-><init>()V

    .line 96
    sget-object v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v3, v5, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    :cond_2
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;->a(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    invoke-static {v0, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 104
    :cond_3
    invoke-static {v3, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 108
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;-><init>()V

    .line 109
    invoke-static {p0, v3, v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 112
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->QR_VERSION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->QR_VERSION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 114
    invoke-static {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p2

    .line 115
    invoke-static {v3, v4, v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 116
    invoke-static {v1, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 117
    :cond_4
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_5
    invoke-static {p1, v3, v4, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p2

    .line 123
    :goto_2
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;

    invoke-direct {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;-><init>()V

    .line 124
    invoke-virtual {v1, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 126
    sget-object v2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    if-ne v3, v2, :cond_6

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b()I

    move-result p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 127
    :goto_3
    invoke-static {p0, p2, v3, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 129
    invoke-virtual {v1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 131
    invoke-virtual {p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p0

    .line 132
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v0

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result v2

    sub-int/2addr v0, v2

    .line 135
    invoke-static {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(ILin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    .line 139
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v2

    .line 141
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->b()I

    move-result p0

    .line 138
    invoke-static {v1, v2, v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;III)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;

    move-result-object p0

    .line 143
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 146
    invoke-virtual {v0, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;)V

    .line 147
    invoke-virtual {v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)V

    .line 150
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d()I

    move-result v1

    .line 151
    new-instance v2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v2, v1, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 152
    invoke-static {p0, p1, p2, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a(I)V

    .line 156
    invoke-static {p0, p1, p2, v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/MatrixUtil;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    invoke-virtual {v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v0
.end method

.method static a(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    if-ge p3, p2, :cond_4

    .line 345
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 349
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 353
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 379
    aput p1, p4, p0

    .line 380
    aput v2, p5, p0

    return-void

    .line 382
    :cond_0
    aput v4, p4, p0

    .line 383
    aput v3, p5, p0

    return-void

    .line 375
    :cond_1
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :cond_2
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_3
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_4
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 305
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 309
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 310
    invoke-virtual {p1, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 317
    invoke-virtual {p1, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 323
    :goto_3
    invoke-virtual {p1, v2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 326
    :cond_4
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_5
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    .line 486
    invoke-virtual {p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 490
    invoke-virtual {p3, p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    return-void

    .line 488
    :cond_0
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 2

    .line 606
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->f:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    .line 608
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/CharacterSetECI;->a()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    return-void
.end method

.method static a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 1

    .line 478
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;->a()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 6

    .line 519
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 522
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 525
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 526
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 527
    invoke-virtual {p1, v2, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 531
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 532
    invoke-virtual {p1, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 536
    invoke-virtual {p1, v2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    .line 582
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 588
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 589
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 601
    invoke-virtual {p1, v3, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 598
    :cond_2
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 584
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    .line 570
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 575
    invoke-virtual {p1, v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 572
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    .line 500
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 511
    invoke-static {p0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    return-void

    .line 514
    :cond_0
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid mode: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 508
    :cond_1
    invoke-static {p0, p2, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_2
    invoke-static {p0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->b(Ljava/lang/CharSequence;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    return-void

    .line 502
    :cond_3
    invoke-static {p0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/CharSequence;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V

    return-void
.end method

.method private static a(ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 1

    .line 290
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v0

    .line 292
    invoke-virtual {p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 296
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    array-length v1, p0

    .line 242
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 246
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static a([BI)[B
    .locals 5

    .line 460
    array-length v0, p0

    add-int v1, v0, p1

    .line 461
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 463
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_0
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v3, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;->e:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {p0, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {p0, v1, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a([II)V

    .line 467
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 469
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    .line 543
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 546
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 551
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 556
    invoke-virtual {p1, v2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 553
    :cond_0
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 560
    invoke-virtual {p1, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitArray;->b(II)V

    move v1, v4

    goto :goto_0

    .line 548
    :cond_2
    new-instance p0, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
