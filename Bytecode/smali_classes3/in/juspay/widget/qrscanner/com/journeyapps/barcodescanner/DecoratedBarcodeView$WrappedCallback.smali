.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCallback"
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    return-void
.end method


# virtual methods
.method public barcodeResult(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;->barcodeResult(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    .line 57
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-static {v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;->possibleResultPoints(Ljava/util/List;)V

    return-void
.end method
