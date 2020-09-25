.class public abstract Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public final a()Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;
    .locals 1

    .line 40
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;->a:Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;

    return-object v0
.end method

.method public abstract b()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation
.end method
