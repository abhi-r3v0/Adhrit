.class public final Lo/setCompatPressedTranslationZResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lo/getPrimaryButtonText$onMessageChannelReady;
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/setChipSpacingResource;

.field private volatile onMessageChannelReady:Lo/setTargetElevation;

.field private volatile onPostMessage:Z


# direct methods
.method protected constructor <init>(Lo/setChipSpacingResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setCompatPressedTranslationZResource;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    return p1
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 1

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 79
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance v0, Lo/setShadowPaddingEnabled;

    invoke-direct {v0, p0}, Lo/setShadowPaddingEnabled;-><init>(Lo/setCompatPressedTranslationZResource;)V

    .line 82
    invoke-virtual {p1, v0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Lo/setReferenceId;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 84
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    iget-object v0, v0, Lo/setChipSpacingResource;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onNavigationEvent()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    .line 89
    :try_start_0
    iput-boolean p1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance v0, Lo/setCompatPressedTranslationZ;

    invoke-direct {v0, p0}, Lo/setCompatPressedTranslationZ;-><init>(Lo/setCompatPressedTranslationZResource;)V

    .line 93
    invoke-virtual {p1, v0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 54
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 55
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 59
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v1}, Lo/setTargetElevation;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v1}, Lo/setTargetElevation;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_1
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_2
    new-instance v1, Lo/setTargetElevation;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lo/setTargetElevation;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    iput-object v1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    .line 65
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    .line 67
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v0}, Lo/setTargetElevation;->checkAvailabilityAndConnect()V

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onMessageChannelReady(Landroid/content/Intent;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 3
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object v1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    iget-object v2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    .line 11
    iget-object v2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-static {v2}, Lo/setChipSpacingResource;->extraCallback(Lo/setChipSpacingResource;)Lo/setCompatPressedTranslationZResource;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lo/findSameItem$extraCallback;->onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 13
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v0}, Lo/setTargetElevation;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v0}, Lo/setTargetElevation;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :cond_0
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {v0}, Lo/setTargetElevation;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "MeasurementServiceConnection.onConnected"

    .line 69
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    invoke-virtual {p1}, Lo/setTargetElevation;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lo/setStatusBarForeground;

    .line 72
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setCompatHoveredFocusedTranslationZ;

    invoke-direct {v1, p0, p1}, Lo/setCompatHoveredFocusedTranslationZ;-><init>(Lo/setCompatPressedTranslationZResource;Lo/setStatusBarForeground;)V

    .line 73
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 76
    :try_start_1
    iput-object p1, p0, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady:Lo/setTargetElevation;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 17
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 18
    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 20
    :try_start_0
    iput-boolean p1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z

    .line 21
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 24
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 29
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lo/setStatusBarForeground;

    if-eqz v2, :cond_2

    .line 31
    check-cast v1, Lo/setStatusBarForeground;

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Lo/AppBarLayout$BaseBehavior;

    invoke-direct {v1, p2}, Lo/AppBarLayout$BaseBehavior;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    .line 34
    :goto_1
    iget-object p2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_3
    iget-object p2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 38
    :catch_0
    :try_start_2
    iget-object p2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_4

    .line 40
    iput-boolean p1, p0, Lo/setCompatPressedTranslationZResource;->onPostMessage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object p1

    iget-object p2, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p2}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->extraCallback(Lo/setChipSpacingResource;)Lo/setCompatPressedTranslationZResource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lo/findSameItem$extraCallback;->extraCallback(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 46
    :cond_4
    :try_start_4
    iget-object p1, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance p2, Lo/setCompatHoveredFocusedTranslationZResource;

    invoke-direct {p2, p0, v0}, Lo/setCompatHoveredFocusedTranslationZResource;-><init>(Lo/setCompatPressedTranslationZResource;Lo/setStatusBarForeground;)V

    .line 47
    invoke-virtual {p1, p2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    .line 48
    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    .line 49
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setTranslationX;

    invoke-direct {v1, p0, p1}, Lo/setTranslationX;-><init>(Lo/setCompatPressedTranslationZResource;Landroid/content/ComponentName;)V

    .line 52
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method
