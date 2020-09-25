.class final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->a:I

    .line 33
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    return-void
.end method

.method static a([BLin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;
    .locals 12

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 57
    invoke-virtual {p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->d()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p2

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p2, v2

    .line 63
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-array v0, v3, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;

    .line 69
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v6, p2, v4

    const/4 v7, 0x0

    .line 70
    :goto_2
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->a()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 71
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->b()I

    move-result v8

    .line 72
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v10, v5, 0x1

    .line 73
    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;

    new-array v9, v9, [B

    invoke-direct {v11, v8, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v11, v0, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_2
    aget-object p2, v0, v1

    iget-object p2, p2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    array-length p2, p2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 82
    aget-object v2, v0, v3

    iget-object v2, v2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    array-length v2, v2

    if-eq v2, p2, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 90
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge p1, p2, :cond_5

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_4

    .line 96
    aget-object v6, v0, v4

    iget-object v6, v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v6, p1

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    move p1, v3

    :goto_6
    if-ge p1, v5, :cond_6

    .line 101
    aget-object v4, v0, p1

    iget-object v4, v4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v4, p2

    add-int/lit8 p1, p1, 0x1

    move v2, v6

    goto :goto_6

    .line 104
    :cond_6
    aget-object p1, v0, v1

    iget-object p1, p1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    array-length p1, p1

    :goto_7
    if-ge p2, p1, :cond_9

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_8

    if-ge v4, v3, :cond_7

    move v6, p2

    goto :goto_9

    :cond_7
    add-int/lit8 v6, p2, 0x1

    .line 108
    :goto_9
    aget-object v7, v0, v4

    iget-object v7, v7, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v7, v6

    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_8

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    return-object v0

    .line 52
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 115
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->a:I

    return v0
.end method

.method final b()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b:[B

    return-object v0
.end method
