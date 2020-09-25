.class public Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

.field private final b:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    .line 36
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    return-void
.end method


# virtual methods
.method public final a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 1

    .line 40
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final b()[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;
    .locals 1

    .line 44
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    return-object v0
.end method
