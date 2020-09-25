.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_decode:I

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;

    invoke-static {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V

    goto :goto_0

    .line 41
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lin/juspay/widget/qrscanner/R$id;->zxing_preview_failed:I

    if-ne p1, v0, :cond_1

    .line 43
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
