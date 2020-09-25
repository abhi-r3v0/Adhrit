.class public abstract Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;
    .locals 1

    .line 56
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/GridSampler;

    return-object v0
.end method

.method protected static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 126
    :goto_0
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v3, v5, :cond_5

    if-eqz v4, :cond_5

    .line 127
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 128
    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_4

    if-gt v4, v0, :cond_4

    if-lt v8, v7, :cond_4

    if-gt v8, p0, :cond_4

    if-ne v4, v7, :cond_0

    .line 134
    aput v6, p1, v3

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    if-ne v4, v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 137
    aput v4, p1, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ne v8, v7, :cond_2

    .line 141
    aput v6, p1, v5

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    if-ne v8, p0, :cond_3

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 144
    aput v4, p1, v5

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 130
    :cond_4
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 150
    :cond_5
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    :goto_5
    if-ltz v3, :cond_b

    if-eqz v4, :cond_b

    .line 151
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 152
    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_a

    if-gt v4, v0, :cond_a

    if-lt v8, v7, :cond_a

    if-gt v8, p0, :cond_a

    if-ne v4, v7, :cond_6

    .line 158
    aput v6, p1, v3

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    if-ne v4, v0, :cond_7

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 161
    aput v4, p1, v3

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_7
    if-ne v8, v7, :cond_8

    .line 165
    aput v6, p1, v5

    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_8
    if-ne v8, p0, :cond_9

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 168
    aput v4, p1, v5

    goto :goto_8

    :cond_9
    :goto_9
    add-int/lit8 v3, v3, -0x2

    goto :goto_5

    .line 154
    :cond_a
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_b
    return-void
.end method


# virtual methods
.method public abstract a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;IILin/juspay/widget/qrscanner/com/google/zxing/common/PerspectiveTransform;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation
.end method
