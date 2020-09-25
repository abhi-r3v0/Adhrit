.class public final Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/hardware/Camera;

.field private c:Landroid/hardware/Camera$CameraInfo;

.field private d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

.field private e:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

.field private i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private j:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private l:I

.field private m:Landroid/content/Context;

.field private final n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->l:I

    .line 126
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->m:Landroid/content/Context;

    .line 127
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-direct {p1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;)V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    .line 312
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 315
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    .line 319
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 320
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 251
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->j()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 268
    invoke-static {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 270
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 271
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->f(Landroid/hardware/Camera$Parameters;)V

    .line 274
    :cond_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->e(Landroid/hardware/Camera$Parameters;)V

    .line 278
    :cond_2
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt p1, v1, :cond_3

    .line 280
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->d(Landroid/hardware/Camera$Parameters;)V

    .line 281
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->b(Landroid/hardware/Camera$Parameters;)V

    .line 282
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->c(Landroid/hardware/Camera$Parameters;)V

    .line 288
    :cond_3
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->j:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Ljava/util/List;Z)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->j:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 294
    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->j:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v1, v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 297
    :goto_0
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glass-1"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 300
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;)V

    .line 305
    :cond_5
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private j()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 241
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->g:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private k()I
    .locals 4

    .line 327
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    .line 345
    :cond_3
    :goto_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_4

    .line 346
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 347
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0
.end method

.method private l()V
    .locals 3

    .line 361
    :try_start_0
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k()I

    move-result v0

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->l:I

    .line 362
    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 367
    :try_start_1
    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 371
    :try_start_2
    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    .line 378
    :goto_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->j:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    goto :goto_1

    .line 382
    :cond_0
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 384
    :goto_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 134
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a()I

    move-result v0

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a()I

    move-result v0

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;->a(I)I

    move-result v0

    .line 141
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    .line 142
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;->a(Landroid/hardware/Camera;)V

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 429
    iget-boolean v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 431
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 452
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->i()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 455
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b()V

    .line 459
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 460
    invoke-static {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 461
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-static {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 464
    :cond_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 466
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz p1, :cond_2

    .line 467
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->a()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 153
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->l()V

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3

    .line 176
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 177
    iget-boolean v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    .line 180
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 181
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->m:Landroid/content/Context;

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->h:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, p0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->e:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;

    .line 182
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 192
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->b()V

    .line 194
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 196
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->e:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->b()V

    .line 198
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->e:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;

    .line 200
    :cond_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 202
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 1

    .line 213
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 225
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 228
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()I
    .locals 1

    .line 237
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->l:I

    return v0
.end method

.method public final h()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 1

    .line 410
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0

    .line 415
    :cond_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public final i()Z
    .locals 3

    .line 474
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "on"

    .line 478
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    .line 479
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
