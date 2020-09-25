.class public Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:[I

.field private final e:Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 65
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    .line 66
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static a([II)F
    .locals 1

    const/4 v0, 0x4

    .line 192
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private a(IIII)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 245
    invoke-direct/range {p0 .. p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v1, v6, :cond_0

    if-lt v2, v6, :cond_0

    .line 249
    iget-object v9, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    aget v9, v4, v7

    add-int/2addr v9, v8

    aput v9, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v6, :cond_c

    if-ge v2, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    if-lt v1, v6, :cond_2

    if-lt v2, v6, :cond_2

    .line 259
    iget-object v9, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_2

    aget v9, v4, v8

    if-gt v9, v3, :cond_2

    .line 261
    aget v9, v4, v8

    add-int/2addr v9, v8

    aput v9, v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-lt v1, v6, :cond_c

    if-lt v2, v6, :cond_c

    .line 266
    aget v9, v4, v8

    if-le v9, v3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    if-lt v1, v6, :cond_4

    if-lt v2, v6, :cond_4

    .line 271
    iget-object v9, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_4

    aget v9, v4, v5

    if-gt v9, v3, :cond_4

    .line 273
    aget v9, v4, v5

    add-int/2addr v9, v8

    aput v9, v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 276
    :cond_4
    aget v6, v4, v5

    if-le v6, v3, :cond_5

    return v5

    .line 280
    :cond_5
    iget-object v6, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 281
    iget-object v9, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    :goto_3
    add-int v11, v1, v10

    if-ge v11, v6, :cond_6

    add-int v12, v2, v10

    if-ge v12, v9, :cond_6

    .line 285
    iget-object v13, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v13, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 286
    aget v11, v4, v7

    add-int/2addr v11, v8

    aput v11, v4, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    if-ge v11, v6, :cond_c

    add-int v11, v2, v10

    if-lt v11, v9, :cond_7

    goto/16 :goto_6

    :cond_7
    :goto_4
    add-int v11, v1, v10

    const/4 v12, 0x3

    if-ge v11, v6, :cond_8

    add-int v13, v2, v10

    if-ge v13, v9, :cond_8

    .line 295
    iget-object v14, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_8

    aget v13, v4, v12

    if-ge v13, v3, :cond_8

    .line 297
    aget v11, v4, v12

    add-int/2addr v11, v8

    aput v11, v4, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    if-ge v11, v6, :cond_c

    add-int v11, v2, v10

    if-ge v11, v9, :cond_c

    .line 301
    aget v11, v4, v12

    if-lt v11, v3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    add-int v11, v1, v10

    const/4 v13, 0x4

    if-ge v11, v6, :cond_a

    add-int v14, v2, v10

    if-ge v14, v9, :cond_a

    .line 305
    iget-object v15, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v15, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_a

    aget v11, v4, v13

    if-ge v11, v3, :cond_a

    .line 307
    aget v11, v4, v13

    add-int/2addr v11, v8

    aput v11, v4, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 311
    :cond_a
    aget v1, v4, v13

    if-lt v1, v3, :cond_b

    return v5

    .line 317
    :cond_b
    aget v1, v4, v5

    aget v2, v4, v8

    add-int/2addr v1, v2

    aget v2, v4, v7

    add-int/2addr v1, v2

    aget v2, v4, v12

    add-int/2addr v1, v2

    aget v2, v4, v13

    add-int/2addr v1, v2

    sub-int v1, v1, p4

    .line 319
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    if-ge v1, v2, :cond_c

    .line 320
    invoke-static {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v1

    if-eqz v1, :cond_c

    return v8

    :cond_c
    :goto_6
    return v5
.end method

.method protected static a([I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 203
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 215
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 216
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 217
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 218
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 219
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 220
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method private a()[I
    .locals 3

    .line 224
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 225
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 226
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 227
    aput v1, v0, v2

    const/4 v2, 0x4

    .line 228
    aput v1, v0, v2

    return-object v0
.end method

.method private b(IIII)F
    .locals 10

    .line 336
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 338
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 339
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v2

    move v3, p1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    .line 343
    invoke-virtual {v0, p2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    return v6

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 350
    invoke-virtual {v0, p2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 351
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_d

    .line 355
    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    .line 358
    invoke-virtual {v0, p2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 359
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 362
    :cond_4
    aget v3, v2, v7

    if-le v3, p3, :cond_5

    return v6

    :cond_5
    add-int/2addr p1, v5

    :goto_3
    if-ge p1, v1, :cond_6

    .line 368
    invoke-virtual {v0, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 369
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v6

    :cond_7
    :goto_4
    const/4 v3, 0x3

    if-ge p1, v1, :cond_8

    .line 375
    invoke-virtual {v0, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_8

    aget v8, v2, v3

    if-ge v8, p3, :cond_8

    .line 376
    aget v8, v2, v3

    add-int/2addr v8, v5

    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 379
    aget v8, v2, v3

    if-lt v8, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x4

    if-ge p1, v1, :cond_a

    .line 382
    invoke-virtual {v0, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_a

    aget v9, v2, v8

    if-ge v9, p3, :cond_a

    .line 383
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 386
    :cond_a
    aget p2, v2, v8

    if-lt p2, p3, :cond_b

    return v6

    .line 392
    :cond_b
    aget p2, v2, v7

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v8

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 394
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_c

    return v6

    .line 398
    :cond_c
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {v2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result p1

    return p1

    :cond_d
    :goto_6
    return v6
.end method

.method private b()I
    .locals 7

    .line 529
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 534
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 535
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    .line 544
    :cond_2
    iput-boolean v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    .line 545
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 546
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result v0

    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    div-int/2addr v0, v6

    return v0

    :cond_3
    return v1
.end method

.method private c(IIII)F
    .locals 10

    .line 408
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 410
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 411
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v2

    move v3, p1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    .line 414
    invoke-virtual {v0, v3, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    return v6

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 421
    invoke-virtual {v0, v3, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 422
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_d

    .line 425
    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    .line 428
    invoke-virtual {v0, v3, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 429
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 432
    :cond_4
    aget v3, v2, v7

    if-le v3, p3, :cond_5

    return v6

    :cond_5
    add-int/2addr p1, v5

    :goto_3
    if-ge p1, v1, :cond_6

    .line 437
    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 438
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v6

    :cond_7
    :goto_4
    const/4 v3, 0x3

    if-ge p1, v1, :cond_8

    .line 444
    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_8

    aget v8, v2, v3

    if-ge v8, p3, :cond_8

    .line 445
    aget v8, v2, v3

    add-int/2addr v8, v5

    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 448
    aget v8, v2, v3

    if-lt v8, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x4

    if-ge p1, v1, :cond_a

    .line 451
    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_a

    aget v9, v2, v8

    if-ge v9, p3, :cond_a

    .line 452
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 455
    :cond_a
    aget p2, v2, v8

    if-lt p2, p3, :cond_b

    return v6

    .line 461
    :cond_b
    aget p2, v2, v7

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v8

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 463
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_c

    return v6

    .line 467
    :cond_c
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {v2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result p1

    return p1

    :cond_d
    :goto_6
    return v6
.end method

.method private c()Z
    .locals 9

    .line 561
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 563
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 565
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    return v3

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 577
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 578
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1

    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v0

    cmpg-float v0, v2, v5

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v3
.end method

.method private d()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v0, v1, :cond_2

    .line 602
    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 603
    invoke-virtual {v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v9

    add-float/2addr v7, v9

    mul-float v9, v9, v9

    add-float/2addr v8, v9

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    div-float/2addr v7, v0

    div-float/2addr v8, v0

    mul-float v0, v7, v7

    sub-float/2addr v8, v0

    float-to-double v8, v8

    .line 608
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 610
    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v8, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    invoke-direct {v8, v7, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    .line 612
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v6, 0x0

    .line 614
    :goto_1
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_2

    .line 615
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 616
    invoke-virtual {v8}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 617
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_1
    add-int/2addr v6, v3

    goto :goto_1

    .line 623
    :cond_2
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 627
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 628
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_2

    .line 631
    :cond_3
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 633
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    invoke-direct {v6, v5, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 635
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    new-array v0, v1, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 638
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 639
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v4

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 640
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v3

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v2, 0x2

    .line 641
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v2

    return-object v0

    .line 594
    :cond_5
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final a(Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 78
    sget-object v2, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->d:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 79
    sget-object v3, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->b:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 80
    :goto_1
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 81
    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    .line 89
    div-int/lit16 v5, v5, 0xe4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v5, 0x3

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [I

    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v3, :cond_e

    if-nez v8, :cond_e

    aput v1, v2, v1

    aput v1, v2, v0

    const/4 v9, 0x2

    aput v1, v2, v9

    aput v1, v2, v6

    const/4 v10, 0x4

    aput v1, v2, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v4, :cond_c

    .line 105
    iget-object v13, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v13, v11, v7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_5

    and-int/lit8 v13, v12, 0x1

    if-ne v13, v0, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 110
    :cond_4
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_6

    :cond_5
    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_b

    if-ne v12, v10, :cond_a

    .line 114
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 115
    invoke-virtual {p0, v2, v7, v11, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 120
    iget-boolean v5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v5, :cond_6

    .line 121
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c()Z

    move-result v8

    goto :goto_4

    .line 123
    :cond_6
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b()I

    move-result v5

    .line 124
    aget v12, v2, v9

    if-le v5, v12, :cond_7

    .line 133
    aget v11, v2, v9

    sub-int/2addr v5, v11

    sub-int/2addr v5, v9

    add-int/2addr v7, v5

    add-int/lit8 v11, v4, -0x1

    :cond_7
    :goto_4
    aput v1, v2, v1

    aput v1, v2, v0

    aput v1, v2, v9

    aput v1, v2, v6

    aput v1, v2, v10

    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_6

    .line 138
    :cond_8
    aget v12, v2, v9

    aput v12, v2, v1

    .line 139
    aget v12, v2, v6

    aput v12, v2, v0

    .line 140
    aget v12, v2, v10

    aput v12, v2, v9

    aput v0, v2, v6

    aput v1, v2, v10

    goto :goto_5

    .line 154
    :cond_9
    aget v12, v2, v9

    aput v12, v2, v1

    .line 155
    aget v12, v2, v6

    aput v12, v2, v0

    .line 156
    aget v12, v2, v10

    aput v12, v2, v9

    aput v0, v2, v6

    aput v1, v2, v10

    :goto_5
    const/4 v12, 0x3

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 162
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_6

    .line 165
    :cond_b
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    :goto_6
    add-int/2addr v11, v0

    goto :goto_3

    .line 169
    :cond_c
    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 170
    invoke-virtual {p0, v2, v7, v4, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 172
    aget v5, v2, v1

    .line 173
    iget-boolean v9, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v9, :cond_d

    .line 175
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c()Z

    move-result v8

    :cond_d
    add-int/2addr v7, v5

    goto/16 :goto_2

    .line 181
    :cond_e
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->d()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->orderBestPatterns([Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V

    .line 184
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v0
.end method

.method protected final a([IIIZ)Z
    .locals 6

    const/4 v0, 0x0

    .line 489
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 491
    invoke-static {p1, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result p3

    float-to-int p3, p3

    .line 492
    aget v4, p1, v3

    invoke-direct {p0, p2, p3, v4, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b(IIII)F

    move-result p2

    .line 493
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    float-to-int v4, p2

    .line 495
    aget v5, p1, v3

    invoke-direct {p0, p3, v4, v5, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->c(IIII)F

    move-result p3

    .line 496
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p4, :cond_0

    float-to-int p4, p3

    aget p1, p1, v3

    .line 497
    invoke-direct {p0, v4, p4, p1, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    int-to-float p1, v1

    const/high16 p4, 0x40e00000    # 7.0f

    div-float/2addr p1, p4

    const/4 p4, 0x0

    .line 500
    :goto_0
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_2

    .line 501
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    .line 503
    invoke-virtual {v1, p1, p2, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a(FFF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-virtual {v1, p2, p3, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b(FFF)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 510
    new-instance p4, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {p4, p3, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 511
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;

    if-eqz p1, :cond_3

    .line 513
    invoke-interface {p1, p4}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V

    :cond_3
    return v2

    :cond_4
    return v0
.end method
