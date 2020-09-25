.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 5

    .line 35
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ltz p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_2

    .line 49
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 50
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 51
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v4, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    if-ge p0, v0, :cond_3

    return p0

    :cond_3
    if-eqz v3, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public static b(I)Landroid/hardware/Camera;
    .locals 1

    .line 79
    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/open/OpenCameraInterface;->a(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method
