.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_decode_succeeded:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v0

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;->barcodeResult(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;)V

    .line 55
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object p1

    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a()V

    :cond_0
    return v2

    .line 61
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_decode_failed:I

    if-ne v0, v1, :cond_2

    return v2

    .line 64
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_possible_result_points:I

    if-ne v0, v1, :cond_4

    .line 65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 66
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v0

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_3

    .line 67
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;->possibleResultPoints(Ljava/util/List;)V

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
