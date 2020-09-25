.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

.field private c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;

.field private d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

.field private e:Landroid/os/Handler;

.field private f:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private g:Z

.field private h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 28
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    .line 179
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->i:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$5;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$5;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$6;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$6;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    .line 38
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 40
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    .line 41
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    .line 42
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 239
    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 0

    .line 18
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;
    .locals 0

    .line 18
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;

    return-object p0
.end method

.method static synthetic e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;
    .locals 0

    .line 18
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    return-object p0
.end method

.method private g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 1

    .line 99
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .locals 1

    .line 62
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->f:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    .line 89
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    :cond_0
    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->f:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 58
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h()V

    .line 165
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v1, p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 134
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 136
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v1, p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 112
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 116
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 120
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 121
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h()V

    .line 123
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 127
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 128
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->h()V

    .line 130
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 147
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 151
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    return v0
.end method
