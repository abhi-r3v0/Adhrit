.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a:F

    .line 42
    iput p4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b:F

    .line 43
    iput p7, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->c:F

    .line 44
    iput p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->d:F

    .line 45
    iput p5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->e:F

    .line 46
    iput p8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->f:F

    .line 47
    iput p3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->g:F

    .line 48
    iput p6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->h:F

    .line 49
    iput p9, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->i:F

    return-void
.end method

.method public static a(FFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
    .locals 11

    sub-float v0, p0, p2

    add-float/2addr v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float v1, v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 105
    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v5, v5, v0

    mul-float v3, v3, v1

    sub-float/2addr v5, v3

    div-float v7, v5, v6

    mul-float v2, v2, v1

    mul-float v0, v0, v4

    sub-float/2addr v2, v0

    div-float v8, v2, v6

    .line 116
    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    sub-float v0, p2, p0

    mul-float v1, v7, p2

    add-float/2addr v1, v0

    sub-float v0, p6, p0

    mul-float v2, v8, p6

    add-float/2addr v2, v0

    sub-float v0, p3, p1

    mul-float v3, v7, p3

    add-float v4, v0, v3

    sub-float v0, p7, p1

    mul-float v3, v8, p7

    add-float v5, v0, v3

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public static a(FFFFFFFFFFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
    .locals 0

    .line 61
    invoke-static/range {p0 .. p7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b(FFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    .line 62
    invoke-static/range {p8 .. p15}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a(FFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    return-object p0
.end method

.method public static b(FFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
    .locals 0

    .line 127
    invoke-static/range {p0 .. p7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a(FFFFFFFF)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a()Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
    .locals 18

    move-object/from16 v0, p0

    .line 132
    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    iget v1, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->e:F

    iget v2, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v3, v1, v2

    iget v4, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->f:F

    iget v5, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->g:F

    mul-float v7, v4, v6

    iget v8, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v5

    mul-float v10, v1, v6

    sub-float/2addr v9, v10

    iget v10, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v12, v10, v5

    iget v13, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v14, v13, v2

    sub-float/2addr v12, v14

    iget v14, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v2, v2, v14

    mul-float v15, v10, v6

    sub-float v15, v2, v15

    mul-float v6, v6, v13

    mul-float v5, v5, v14

    sub-float v16, v6, v5

    mul-float v2, v13, v4

    mul-float v5, v10, v1

    sub-float v17, v2, v5

    mul-float v10, v10, v8

    mul-float v4, v4, v14

    sub-float/2addr v10, v4

    mul-float v14, v14, v1

    mul-float v13, v13, v8

    sub-float v13, v14, v13

    move-object v1, v11

    move v2, v3

    move v3, v7

    move v4, v9

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move v9, v10

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v11
.end method

.method final a(Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;)Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;

    iget v2, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a:F

    iget v3, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v4, v2, v3

    iget v5, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->d:F

    iget v6, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v7, v5, v6

    add-float/2addr v4, v7

    iget v7, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->g:F

    iget v8, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v9, v7, v8

    add-float/2addr v4, v9

    iget v9, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v10, v2, v9

    iget v12, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v13, v5, v12

    add-float/2addr v10, v13

    iget v13, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v14, v7, v13

    add-float/2addr v10, v14

    iget v14, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->g:F

    mul-float v2, v2, v14

    iget v15, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v5, v5, v15

    add-float/2addr v2, v5

    iget v1, v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v7, v7, v1

    add-float v5, v2, v7

    iget v2, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v7, v2, v3

    move/from16 p1, v5

    iget v5, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v16, v5, v6

    add-float v7, v7, v16

    move/from16 v16, v10

    iget v10, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v17, v10, v8

    add-float v7, v7, v17

    mul-float v17, v2, v9

    mul-float v18, v5, v12

    add-float v17, v17, v18

    mul-float v18, v10, v13

    add-float v17, v17, v18

    mul-float v2, v2, v14

    mul-float v5, v5, v15

    add-float/2addr v2, v5

    mul-float v10, v10, v1

    add-float/2addr v10, v2

    iget v2, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v3, v3, v2

    iget v5, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    iget v6, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v8, v8, v6

    add-float/2addr v8, v3

    mul-float v9, v9, v2

    mul-float v12, v12, v5

    add-float/2addr v9, v12

    mul-float v13, v13, v6

    add-float/2addr v9, v13

    mul-float v2, v2, v14

    mul-float v5, v5, v15

    add-float/2addr v2, v5

    mul-float v6, v6, v1

    add-float v12, v2, v6

    move-object v1, v11

    move v2, v4

    move/from16 v3, v16

    move/from16 v4, p1

    move v5, v7

    move/from16 v6, v17

    move v7, v10

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v11
.end method

.method public final a([F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    array-length v2, v1

    .line 68
    iget v3, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a:F

    .line 69
    iget v4, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->b:F

    .line 70
    iget v5, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->c:F

    .line 71
    iget v6, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->d:F

    .line 72
    iget v7, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->e:F

    .line 73
    iget v8, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->f:F

    .line 74
    iget v9, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->g:F

    .line 75
    iget v10, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->h:F

    .line 76
    iget v11, v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->i:F

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_0

    .line 78
    aget v13, v1, v12

    add-int/lit8 v14, v12, 0x1

    .line 79
    aget v15, v1, v14

    mul-float v16, v5, v13

    mul-float v17, v8, v15

    add-float v16, v16, v17

    add-float v16, v16, v11

    mul-float v17, v3, v13

    mul-float v18, v6, v15

    add-float v17, v17, v18

    add-float v17, v17, v9

    div-float v17, v17, v16

    .line 81
    aput v17, v1, v12

    mul-float v13, v13, v4

    mul-float v15, v15, v7

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    div-float v13, v13, v16

    .line 82
    aput v13, v1, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method
