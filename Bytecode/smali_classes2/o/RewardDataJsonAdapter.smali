.class final Lo/RewardDataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private asBinder:Landroid/os/Handler;

.field private final extraCallback:Landroid/view/Display;

.field private final onMessageChannelReady:[F

.field private final onNavigationEvent:[F

.field private final onPostMessage:Landroid/hardware/SensorManager;

.field private onRelationshipValidationResult:Lo/CardLinkRequestJsonAdapter;

.field private onTransact:[F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lo/RewardDataJsonAdapter;->onPostMessage:Landroid/hardware/SensorManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lo/RewardDataJsonAdapter;->extraCallback:Landroid/view/Display;

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RewardDataJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method private final onNavigationEvent(II)V
    .locals 3

    iget-object v0, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/CardLinkRequestJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/RewardDataJsonAdapter;->onRelationshipValidationResult:Lo/CardLinkRequestJsonAdapter;

    return-void
.end method

.method final ICustomTabsCallback([F)Z
    .locals 4

    iget-object v0, p0, Lo/RewardDataJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    iget-object v3, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    array-length v3, v3

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method final onMessageChannelReady()V
    .locals 4

    iget-object v0, p0, Lo/RewardDataJsonAdapter;->asBinder:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/RewardDataJsonAdapter;->onPostMessage:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OrientationMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lo/RewardDataJsonAdapter;->asBinder:Landroid/os/Handler;

    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onPostMessage:Landroid/hardware/SensorManager;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SensorManager.registerListener failed."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/RewardDataJsonAdapter;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/RewardDataJsonAdapter;->asBinder:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/RewardDataJsonAdapter;->onPostMessage:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lo/RewardDataJsonAdapter;->asBinder:Landroid/os/Handler;

    new-instance v1, Lo/CardLinkRequest;

    invoke-direct {v1, p0}, Lo/CardLinkRequest;-><init>(Lo/RewardDataJsonAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/RewardDataJsonAdapter;->asBinder:Landroid/os/Handler;

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, p1, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, p1, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lo/RewardDataJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    const/16 v5, 0x9

    if-nez v2, :cond_1

    new-array v2, v5, [F

    iput-object v2, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lo/RewardDataJsonAdapter;->extraCallback:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x81

    const/4 v2, 0x3

    if-eq p1, v4, :cond_4

    const/16 v6, 0x82

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    invoke-static {p1, v6, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    iget-object v7, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    invoke-static {p1, v1, v6, v7}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lo/RewardDataJsonAdapter;->onMessageChannelReady:[F

    iget-object v6, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    invoke-static {p1, v3, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :goto_0
    invoke-direct {p0, v4, v2}, Lo/RewardDataJsonAdapter;->onNavigationEvent(II)V

    const/4 p1, 0x6

    invoke-direct {p0, v3, p1}, Lo/RewardDataJsonAdapter;->onNavigationEvent(II)V

    const/4 p1, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lo/RewardDataJsonAdapter;->onNavigationEvent(II)V

    iget-object p1, p0, Lo/RewardDataJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lo/RewardDataJsonAdapter;->onNavigationEvent:[F

    iget-object v2, p0, Lo/RewardDataJsonAdapter;->onTransact:[F

    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lo/RewardDataJsonAdapter;->onRelationshipValidationResult:Lo/CardLinkRequestJsonAdapter;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo/CardLinkRequestJsonAdapter;->onMessageChannelReady()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
