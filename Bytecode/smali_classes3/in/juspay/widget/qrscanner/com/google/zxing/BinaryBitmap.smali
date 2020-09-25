.class public final Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;

.field private b:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->b:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;->b()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->b:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 88
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->b:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
