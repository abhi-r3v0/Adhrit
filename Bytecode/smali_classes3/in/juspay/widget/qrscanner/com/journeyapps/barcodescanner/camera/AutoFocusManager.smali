.class public final Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field private static final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Z

.field private final e:Landroid/hardware/Camera;

.field private f:Landroid/os/Handler;

.field private g:I

.field private final i:Landroid/os/Handler$Callback;

.field private final j:Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    .line 53
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$1;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->i:Landroid/os/Handler$Callback;

    .line 64
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->j:Landroid/hardware/Camera$AutoFocusCallback;

    .line 78
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->i:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    .line 80
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    .line 83
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->a()V

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)I
    .locals 0

    .line 31
    iget p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    return p0
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    return p1
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c()V

    return-void
.end method

.method static synthetic d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    if-eqz v0, :cond_0

    .line 102
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->j:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 110
    :catch_0
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 117
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    .line 97
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    .line 126
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->e()V

    .line 127
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
