.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;
.super Lin/juspay/widget/qrscanner/com/google/zxing/common/GlobalHistogramBinarizer;
.source ""


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)V

    return-void
.end method

.method private static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private static a([BIIIILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V
    .locals 7

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    add-int v5, v0, v4

    .line 150
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_0

    add-int v5, p1, v4

    add-int v6, p2, v2

    .line 151
    invoke-virtual {p5, v5, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, p4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([BIIII[[ILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    shl-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, p4, -0x8

    if-le v4, v5, :cond_0

    move v4, v5

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    shl-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, p3, -0x8

    if-le v6, v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v6

    :goto_2
    add-int/lit8 v6, v0, -0x3

    const/4 v8, 0x2

    .line 121
    invoke-static {v5, v8, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a(III)I

    move-result v6

    add-int/lit8 v9, v1, -0x3

    .line 122
    invoke-static {v3, v8, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a(III)I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    :goto_3
    if-gt v10, v8, :cond_2

    add-int v12, v9, v10

    .line 125
    aget-object v12, p5, v12

    add-int/lit8 v13, v6, -0x2

    .line 126
    aget v13, v12, v13

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    aget v14, v12, v6

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    add-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 128
    :cond_2
    div-int/lit8 v9, v11, 0x19

    move-object v6, p0

    move v8, v4

    move/from16 v10, p3

    move-object/from16 v11, p6

    .line 129
    invoke-static/range {v6 .. v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a([BIIIILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a([BIIII)[[I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    .line 167
    const-class v6, I

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_b

    shl-int/lit8 v7, v6, 0x3

    const/16 v8, 0x8

    add-int/lit8 v9, p4, -0x8

    if-le v7, v9, :cond_0

    move v7, v9

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_a

    shl-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, p3, -0x8

    if-le v10, v11, :cond_1

    move v10, v11

    :cond_1
    mul-int v11, v7, p3

    add-int/2addr v11, v10

    const/16 v10, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xff

    :goto_2
    const/16 v5, 0x18

    if-ge v12, v8, :cond_7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_4

    add-int v16, v11, v2

    .line 185
    aget-byte v4, p0, v16

    and-int/2addr v4, v10

    add-int/2addr v13, v4

    if-ge v4, v15, :cond_2

    move v15, v4

    :cond_2
    if-le v4, v14, :cond_3

    move v14, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    sub-int v2, v14, v15

    if-le v2, v5, :cond_6

    :cond_5
    add-int/lit8 v12, v12, 0x1

    add-int v11, v11, p3

    if-ge v12, v8, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_5

    add-int v4, v11, v2

    .line 200
    aget-byte v4, p0, v4

    and-int/2addr v4, v10

    add-int/2addr v13, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    add-int/2addr v12, v2

    add-int v11, v11, p3

    const/4 v2, 0x2

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    shr-int/lit8 v4, v13, 0x6

    sub-int/2addr v14, v15

    if-gt v14, v5, :cond_8

    .line 215
    div-int/lit8 v4, v15, 0x2

    if-lez v6, :cond_8

    if-lez v9, :cond_8

    add-int/lit8 v5, v6, -0x1

    .line 225
    aget-object v10, v3, v5

    aget v10, v10, v9

    aget-object v11, v3, v6

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    const/4 v13, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aget-object v5, v3, v5

    aget v5, v5, v12

    add-int/2addr v10, v5

    div-int/lit8 v5, v10, 0x4

    if-ge v15, v5, :cond_9

    move v4, v5

    goto :goto_5

    :cond_8
    const/4 v13, 0x2

    .line 232
    :cond_9
    :goto_5
    aget-object v5, v3, v6

    aput v4, v5, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    const/4 v13, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    return-object v3
.end method


# virtual methods
.method public final b()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;->a()Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->b()I

    move-result v4

    .line 69
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->c()I

    move-result v5

    const/16 v1, 0x28

    if-lt v4, v1, :cond_3

    if-lt v5, v1, :cond_3

    .line 71
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a()[B

    move-result-object v1

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v2, v4, 0x7

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v2, v0

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v3, v5, 0x7

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v3, v0

    .line 80
    invoke-static {v1, v2, v3, v4, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a([BIIII)[[I

    move-result-object v6

    .line 82
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-direct {v0, v4, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v7, v0

    .line 83
    invoke-static/range {v1 .. v7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a([BIIII[[ILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V

    .line 84
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    goto :goto_0

    .line 87
    :cond_3
    invoke-super {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/GlobalHistogramBinarizer;->b()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 89
    :goto_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    return-object v0
.end method
