.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ";"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static varargs a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 290
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    .line 291
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    neg-int v2, p0

    invoke-direct {v1, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 143
    invoke-static {p0, v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;II)V

    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;II)V
    .locals 8

    .line 147
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 152
    aget v5, v2, v4

    .line 153
    aget v6, v2, v3

    mul-int/lit16 v7, p1, 0x3e8

    if-lt v5, v7, :cond_0

    mul-int/lit16 v5, p2, 0x3e8

    if-gt v6, v5, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 163
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 164
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    aget p1, v1, v4

    aget p2, v1, v3

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V
    .locals 5

    .line 58
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "macro"

    const-string v2, "auto"

    const-string v3, "focus mode"

    if-nez p2, :cond_4

    .line 61
    sget-object v4, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object v4, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v4, :cond_1

    const-string p1, "continuous-picture"

    const-string v4, "continuous-video"

    .line 66
    filled-new-array {p1, v4, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 71
    :cond_1
    sget-object v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v2, :cond_2

    const-string p1, "infinity"

    .line 72
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 75
    :cond_2
    sget-object v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    if-ne p1, v2, :cond_3

    .line 76
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_5

    if-nez p1, :cond_5

    const-string p1, "edof"

    .line 83
    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 89
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 92
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 98
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "flash mode"

    if-eqz p1, :cond_0

    const-string p1, "torch"

    const-string v2, "on"

    .line 101
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 106
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x190

    .line 179
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(I)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5

    .line 121
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    .line 122
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3fc00000    # 1.5f

    :goto_0
    div-float/2addr v3, v2

    .line 127
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 130
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 131
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 135
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_2
    return-void
.end method

.method public static c(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x190

    .line 191
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(I)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 220
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "barcode"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene mode"

    .line 224
    invoke-static {v2, v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    const-string v1, "negative"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "color effect"

    .line 276
    invoke-static {v2, v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
