.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

.field private f:Landroid/os/Handler;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/os/Handler$Callback;

.field private final k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    .line 36
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->j:Landroid/os/Handler$Callback;

    .line 103
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 50
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 52
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    .line 53
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    .line 54
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c()V

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V

    return-void
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;->a(Landroid/graphics/Rect;)V

    .line 147
    invoke-virtual {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 158
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {v1, v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/Result;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V

    .line 159
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    sget v0, Lin/juspay/widget/qrscanner/R$id;->zxing_decode_succeeded:I

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 165
    :cond_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 166
    sget v0, Lin/juspay/widget/qrscanner/R$id;->zxing_decode_failed:I

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 170
    :cond_2
    :goto_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 171
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a()Ljava/util/List;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_possible_result_points:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :cond_3
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 130
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->h:Z

    return p0
.end method

.method static synthetic d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;
    .locals 1

    .line 136
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 139
    :cond_0
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;->b()Lin/juspay/widget/qrscanner/com/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 79
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->j:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 85
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    return-void
.end method

.method public b()V
    .locals 3

    .line 94
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 96
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    iput-boolean v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 98
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
