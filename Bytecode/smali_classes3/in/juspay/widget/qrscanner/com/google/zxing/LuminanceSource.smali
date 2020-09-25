.class public abstract Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a:I

    .line 35
    iput p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract a(I[B)[B
.end method

.method public final b()I
    .locals 1

    .line 66
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 73
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 134
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a:I

    new-array v1, v0, [B

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->b:I

    add-int/lit8 v0, v0, 0x1

    mul-int v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 136
    :goto_0
    iget v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->b:I

    if-ge v3, v4, :cond_4

    .line 137
    invoke-virtual {p0, v3, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a(I[B)[B

    move-result-object v1

    const/4 v4, 0x0

    .line 138
    :goto_1
    iget v5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;->a:I

    if-ge v4, v5, :cond_3

    .line 139
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x40

    if-ge v5, v6, :cond_0

    const/16 v5, 0x23

    goto :goto_2

    :cond_0
    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    const/16 v5, 0x2b

    goto :goto_2

    :cond_1
    const/16 v6, 0xc0

    if-ge v5, v6, :cond_2

    const/16 v5, 0x2e

    goto :goto_2

    :cond_2
    const/16 v5, 0x20

    .line 150
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    .line 152
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
