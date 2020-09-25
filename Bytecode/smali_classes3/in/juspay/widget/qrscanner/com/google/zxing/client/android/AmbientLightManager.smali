.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    .line 51
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method private a(Z)V
    .locals 2

    .line 75
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->e:Landroid/os/Handler;

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager$1;

    invoke-direct {v1, p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager$1;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 57
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    .line 59
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 61
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 67
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 69
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 85
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 86
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    if-eqz v1, :cond_1

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a(Z)V

    return-void

    :cond_0
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    .line 90
    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/AmbientLightManager;->a(Z)V

    :cond_1
    return-void
.end method
