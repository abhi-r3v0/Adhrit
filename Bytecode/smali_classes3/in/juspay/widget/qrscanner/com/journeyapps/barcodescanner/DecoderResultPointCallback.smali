.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V

    :cond_0
    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    return-void
.end method
