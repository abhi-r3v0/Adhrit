.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;


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

    .line 103
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lin/juspay/widget/qrscanner/R$id;->zxing_decode:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 121
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_preview_failed:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
