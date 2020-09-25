.class public Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    .line 35
    iput p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    return-void
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F
    .locals 3

    .line 127
    iget v0, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    .line 128
    iget p1, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    .line 129
    iget v1, p2, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    sub-float/2addr v1, v0

    iget v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    iget p2, p2, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    sub-float/2addr p2, p1

    iget p0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    sub-float/2addr p0, v0

    mul-float p2, p2, p0

    sub-float/2addr v1, p2

    return v1
.end method

.method public static distance(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F
    .locals 2

    .line 118
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    iget p0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    iget v1, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    iget p1, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    invoke-static {v0, p0, v1, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/detector/MathUtils;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static orderBestPatterns([Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 9

    const/4 v0, 0x0

    .line 74
    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v1, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->distance(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F

    move-result v1

    .line 75
    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object v5, p0, v4

    invoke-static {v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->distance(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F

    move-result v3

    .line 76
    aget-object v5, p0, v0

    aget-object v6, p0, v4

    invoke-static {v5, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->distance(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F

    move-result v5

    cmpl-float v6, v3, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_0

    .line 83
    aget-object v1, p0, v0

    .line 84
    aget-object v3, p0, v2

    .line 85
    aget-object v5, p0, v4

    goto :goto_0

    :cond_0
    cmpl-float v3, v5, v3

    if-ltz v3, :cond_1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1

    .line 87
    aget-object v1, p0, v2

    .line 88
    aget-object v3, p0, v0

    .line 89
    aget-object v5, p0, v4

    goto :goto_0

    .line 91
    :cond_1
    aget-object v1, p0, v4

    .line 92
    aget-object v3, p0, v0

    .line 93
    aget-object v5, p0, v2

    .line 100
    :goto_0
    invoke-static {v3, v1, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 106
    :cond_2
    aput-object v3, p0, v0

    .line 107
    aput-object v1, p0, v2

    .line 108
    aput-object v5, p0, v4

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    instance-of v0, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    .line 50
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    iget v2, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    iget p1, p1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getX()F
    .locals 1

    .line 39
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 43
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 57
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
