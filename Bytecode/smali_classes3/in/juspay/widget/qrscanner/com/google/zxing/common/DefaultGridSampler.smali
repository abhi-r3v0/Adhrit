.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/DefaultGridSampler;
.super Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;IILin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    if-lez p2, :cond_4

    if-lez p3, :cond_4

    .line 55
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 56
    new-array v1, p2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_0

    .line 61
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    .line 62
    aput v4, v1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p4, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;->a([F)V

    .line 67
    invoke-static {p1, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DefaultGridSampler;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;[F)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_2

    .line 70
    :try_start_0
    aget v5, v1, v4

    float-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 83
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 53
    :cond_4
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
