.class final Lo/setEnsureMinTouchTargetSize;
.super Lo/setHintTextColor;
.source ""


# direct methods
.method public constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 243
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/zzir;Ljava/lang/String;)[B
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "_r"

    .line 4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 5
    iget-object v3, v1, Lo/setEnsureMinTouchTargetSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->INotificationSideChannel$Stub$Proxy()V

    .line 6
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v4, Lo/zziq;->getServiceComponent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v15, v4}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B

    return-object v0

    .line 11
    :cond_0
    iget-object v3, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "_iap"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "_iapx"

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    iget-object v0, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v2, v3, v15, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    .line 17
    :cond_1
    invoke-static {}, Lo/cH$onRelationshipValidationResult;->extraCallback()Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3}, Lo/zzzv;->onPostMessage()V

    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3, v15}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v11

    if-nez v11, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-object v0

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Lo/setFabAnimationMode;->requestPostMessageChannel()Z

    move-result v3

    if-nez v3, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-object v0

    .line 30
    :cond_3
    :try_start_2
    invoke-static {}, Lo/cH$onTransact;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21()Lo/cH$onTransact$extraCallback;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(I)Lo/cH$onTransact$extraCallback;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v12

    .line 31
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 32
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 33
    :cond_4
    invoke-virtual {v11}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 34
    invoke-virtual {v11}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 35
    :cond_5
    invoke-virtual {v11}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 36
    invoke-virtual {v11}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->asBinder(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 37
    :cond_6
    invoke-virtual {v11}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    .line 38
    invoke-virtual {v11}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->onTransact(I)Lo/cH$onTransact$extraCallback;

    .line 40
    :cond_7
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub(J)Lo/cH$onTransact$extraCallback;

    move-result-object v3

    .line 41
    invoke-virtual {v11}, Lo/setFabAnimationMode;->updateVisuals()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor(J)Lo/cH$onTransact$extraCallback;

    .line 42
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v5, v6}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 43
    invoke-virtual {v11}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 44
    invoke-virtual {v11}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_0

    .line 45
    :cond_8
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 46
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->extraCommand(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_0

    .line 47
    :cond_9
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 48
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->newSession(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_0

    .line 49
    :cond_a
    invoke-virtual {v11}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 50
    invoke-virtual {v11}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_0

    .line 51
    :cond_b
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 52
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->newSession(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 53
    :cond_c
    :goto_0
    iget-object v3, v1, Lo/setEnsureMinTouchTargetSize;->extraCallback:Lo/setHint;

    invoke-virtual {v3, v15}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v3

    .line 54
    invoke-virtual {v11}, Lo/setFabAnimationMode;->extraCommand()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lo/cH$onTransact$extraCallback;->asInterface(J)Lo/cH$onTransact$extraCallback;

    .line 55
    iget-object v5, v1, Lo/setEnsureMinTouchTargetSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->cancel()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    invoke-virtual {v12}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/setStartIconTintList;->ICustomTabsCallback$Stub(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 56
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    sget-object v6, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v5, v6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 57
    invoke-virtual {v3}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 58
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 59
    invoke-virtual {v12, v14}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_1

    .line 61
    :cond_d
    invoke-virtual {v12}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    .line 62
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 63
    invoke-virtual {v12, v14}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 64
    :cond_e
    :goto_1
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    sget-object v6, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v5, v6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 65
    invoke-virtual {v3}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lo/cH$onTransact$extraCallback;->requestPostMessageChannel(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 66
    :cond_f
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 67
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    sget-object v6, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v5, v6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 68
    invoke-virtual {v3}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 70
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->P_()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v5

    .line 71
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lo/FloatingActionButton$BaseBehavior;->onNavigationEvent(Ljava/lang/String;Lo/zzq;)Landroid/util/Pair;

    move-result-object v5

    .line 72
    invoke-virtual {v11}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v5, :cond_11

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_11

    .line 74
    :try_start_3
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v0, Lo/zzir;->onPostMessage:J

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-static {v6, v7}, Lo/setEnsureMinTouchTargetSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-virtual {v12, v6}, Lo/cH$onTransact$extraCallback;->onTransact(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_11

    .line 85
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v12, v5}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(Z)Lo/cH$onTransact$extraCallback;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-object v0

    .line 87
    :cond_11
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 89
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 90
    invoke-virtual {v12, v5}, Lo/cH$onTransact$extraCallback;->extraCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v5

    .line 91
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 93
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 94
    invoke-virtual {v5, v6}, Lo/cH$onTransact$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v5

    .line 95
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v6

    invoke-virtual {v6}, Lo/zzfw;->onNavigationEvent()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v5, v7}, Lo/cH$onTransact$extraCallback;->asBinder(I)Lo/cH$onTransact$extraCallback;

    move-result-object v5

    .line 96
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v6

    invoke-virtual {v6}, Lo/zzfw;->asInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :try_start_6
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 98
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    sget-object v6, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v5, v6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 99
    invoke-virtual {v3}, Lo/zzq;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 101
    :cond_12
    invoke-virtual {v11}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, v0, Lo/zzir;->onPostMessage:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static {v3, v5}, Lo/setEnsureMinTouchTargetSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_13
    :try_start_7
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 111
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->warmup(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 113
    :cond_14
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5, v3}, Lo/zzzv;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 116
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setErrorIconDrawable;

    const-string v8, "_lte"

    .line 117
    iget-object v9, v7, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_3

    :cond_16
    move-object v7, v14

    :goto_3
    const-wide/16 v23, 0x0

    if-eqz v7, :cond_17

    .line 121
    iget-object v6, v7, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    if-nez v6, :cond_18

    .line 122
    :cond_17
    new-instance v6, Lo/setErrorIconDrawable;

    const-string v18, "auto"

    const-string v19, "_lte"

    .line 123
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v7

    invoke-interface {v7}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v20

    .line 124
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v22}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 125
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3, v6}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    .line 127
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v7, "Checking account type status for ad personalization signals"

    invoke-virtual {v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v6

    invoke-virtual {v6}, Lo/zzfw;->asBinder()Z

    move-result v6

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1b

    .line 130
    invoke-virtual {v11}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v11}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 132
    invoke-virtual {v3}, Lo/setHintEnabled;->L_()Lo/setClickable;

    move-result-object v9

    invoke-virtual {v9, v6}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 133
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v9

    const-string v10, "Turning off ad personalization due to account type"

    invoke-virtual {v9, v10}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 134
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 135
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 136
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/setErrorIconDrawable;

    const-string v14, "_npa"

    .line 137
    iget-object v10, v10, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 138
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_19
    const/4 v14, 0x0

    goto :goto_4

    .line 141
    :cond_1a
    :goto_5
    new-instance v9, Lo/setErrorIconDrawable;

    const-string v18, "auto"

    const-string v19, "_npa"

    .line 142
    invoke-virtual {v3}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v20

    .line 143
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v22}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 144
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lo/cH$newSession;

    .line 146
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1c

    .line 147
    invoke-static {}, Lo/cH$newSession;->asInterface()Lo/cH$newSession$onPostMessage;

    move-result-object v6

    .line 148
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/setErrorIconDrawable;

    iget-object v9, v9, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lo/cH$newSession$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;

    move-result-object v6

    .line 149
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/setErrorIconDrawable;

    iget-wide v9, v9, Lo/setErrorIconDrawable;->onMessageChannelReady:J

    invoke-virtual {v6, v9, v10}, Lo/cH$newSession$onPostMessage;->onNavigationEvent(J)Lo/cH$newSession$onPostMessage;

    move-result-object v6

    .line 150
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v9

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/setErrorIconDrawable;

    iget-object v10, v10, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v9, v6, v10}, Lo/setErrorTextColor;->onNavigationEvent(Lo/cH$newSession$onPostMessage;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v6}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v6

    check-cast v6, Lo/fa;

    check-cast v6, Lo/cH$newSession;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 154
    :cond_1c
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lo/cH$onTransact$extraCallback;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;

    .line 155
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 156
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v4, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi23:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 157
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v4, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi26:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 158
    invoke-static/range {p1 .. p1}, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback(Lo/zzir;)Lo/setFabCradleRoundedCornerRadius;

    move-result-object v3

    .line 159
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v4

    iget-object v5, v3, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v6

    invoke-virtual {v6, v15}, Lo/zzzv;->ICustomTabsCallback$Stub(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v4

    .line 162
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v5

    invoke-virtual {v5, v15}, Lo/setStartIconTintList;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setFabCradleRoundedCornerRadius;I)V

    .line 163
    iget-object v3, v3, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    goto :goto_7

    .line 165
    :cond_1d
    iget-object v3, v0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v3}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v3

    :goto_7
    move-object v14, v3

    const-string v3, "_c"

    .line 166
    invoke-virtual {v14, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Marking in-app purchase as real-time"

    invoke-virtual {v3, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v14, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_o"

    .line 169
    iget-object v4, v0, Lo/zzir;->extraCallback:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    invoke-virtual {v12}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 171
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    const-string v4, "_dbg"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v14, v4, v5}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v14, v2, v4}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    iget-object v3, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 176
    new-instance v17, Lo/dispatchMessageTraced;

    iget-object v4, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-wide v9, v0, Lo/zzir;->onPostMessage:J

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v11, v18

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v2 .. v16}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v12, v17

    move-wide/from16 v9, v23

    goto :goto_8

    :cond_1f
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    const/16 v19, 0x0

    .line 177
    iget-wide v3, v2, Lo/dispatchMessageTraced;->onTransact:J

    .line 178
    iget-wide v5, v0, Lo/zzir;->onPostMessage:J

    .line 179
    invoke-virtual {v2, v5, v6}, Lo/dispatchMessageTraced;->onPostMessage(J)Lo/dispatchMessageTraced;

    move-result-object v17

    move-wide v9, v3

    move-object/from16 v12, v17

    .line 180
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2, v12}, Lo/zzzv;->onMessageChannelReady(Lo/dispatchMessageTraced;)V

    .line 181
    new-instance v13, Lo/sendMessageAtTime;

    iget-object v3, v1, Lo/setEnsureMinTouchTargetSize;->validateRelationship:Lo/setCheckedIcon;

    iget-object v4, v0, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-object v6, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-wide v7, v0, Lo/zzir;->onPostMessage:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Lo/sendMessageAtTime;-><init>(Lo/setCheckedIcon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 182
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v2

    iget-wide v3, v13, Lo/sendMessageAtTime;->onMessageChannelReady:J

    .line 183
    invoke-virtual {v2, v3, v4}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v2

    iget-object v3, v13, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    .line 184
    invoke-virtual {v2, v3}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v2

    iget-wide v3, v13, Lo/sendMessageAtTime;->ICustomTabsCallback:J

    .line 185
    invoke-virtual {v2, v3, v4}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v2

    .line 186
    iget-object v3, v13, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    invoke-virtual {v3}, Lo/zzfa$zza;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v5

    .line 188
    iget-object v6, v13, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    invoke-virtual {v6, v4}, Lo/zzfa$zza;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onNavigationEvent$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v2, v5}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    goto :goto_9

    :cond_20
    move-object/from16 v3, v26

    .line 193
    invoke-virtual {v3, v2}, Lo/cH$onTransact$extraCallback;->extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    move-result-object v4

    .line 194
    invoke-static {}, Lo/cH$ICustomTabsCallback$Stub;->onNavigationEvent()Lo/cH$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v5

    .line 195
    invoke-static {}, Lo/cH$onPostMessage;->extraCallback()Lo/cH$onPostMessage$onNavigationEvent;

    move-result-object v6

    iget-wide v7, v12, Lo/dispatchMessageTraced;->onNavigationEvent:J

    .line 196
    invoke-virtual {v6, v7, v8}, Lo/cH$onPostMessage$onNavigationEvent;->ICustomTabsCallback(J)Lo/cH$onPostMessage$onNavigationEvent;

    move-result-object v6

    iget-object v0, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 197
    invoke-virtual {v6, v0}, Lo/cH$onPostMessage$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onPostMessage$onNavigationEvent;

    move-result-object v0

    .line 198
    invoke-virtual {v5, v0}, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;->ICustomTabsCallback(Lo/cH$onPostMessage$onNavigationEvent;)Lo/cH$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v0

    .line 199
    invoke-virtual {v4, v0}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback$Stub$onPostMessage;)Lo/cH$onTransact$extraCallback;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->N_()Lo/setErrorIconTintMode;

    move-result-object v5

    .line 202
    invoke-virtual/range {v25 .. v25}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 204
    invoke-virtual {v3}, Lo/cH$onTransact$extraCallback;->extraCallback()Ljava/util/List;

    move-result-object v8

    .line 205
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 206
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 207
    invoke-virtual/range {v5 .. v10}, Lo/setErrorIconTintMode;->onMessageChannelReady(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-virtual {v3, v0}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;

    .line 209
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 211
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lo/cH$onTransact$extraCallback;->extraCallback(J)Lo/cH$onTransact$extraCallback;

    move-result-object v0

    .line 212
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lo/cH$onTransact$extraCallback;->onPostMessage(J)Lo/cH$onTransact$extraCallback;

    .line 213
    :cond_21
    invoke-virtual/range {v25 .. v25}, Lo/setFabAnimationMode;->ICustomTabsService()J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-eqz v0, :cond_22

    .line 215
    invoke-virtual {v3, v4, v5}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(J)Lo/cH$onTransact$extraCallback;

    .line 216
    :cond_22
    invoke-virtual/range {v25 .. v25}, Lo/setFabAnimationMode;->asInterface()J

    move-result-wide v6

    cmp-long v2, v6, v23

    if-eqz v2, :cond_23

    .line 218
    invoke-virtual {v3, v6, v7}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(J)Lo/cH$onTransact$extraCallback;

    goto :goto_a

    :cond_23
    if-eqz v0, :cond_24

    .line 220
    invoke-virtual {v3, v4, v5}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(J)Lo/cH$onTransact$extraCallback;

    .line 221
    :cond_24
    :goto_a
    invoke-virtual/range {v25 .. v25}, Lo/setFabAnimationMode;->ICustomTabsService$Stub()V

    .line 223
    invoke-virtual/range {v25 .. v25}, Lo/setFabAnimationMode;->mayLaunchUrl()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult(I)Lo/cH$onTransact$extraCallback;

    move-result-object v0

    const-wide/16 v4, 0x7949

    .line 224
    invoke-virtual {v0, v4, v5}, Lo/cH$onTransact$extraCallback;->onTransact(J)Lo/cH$onTransact$extraCallback;

    move-result-object v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(J)Lo/cH$onTransact$extraCallback;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 226
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Z)Lo/cH$onTransact$extraCallback;

    move-object/from16 v0, v27

    .line 227
    invoke-virtual {v0, v3}, Lo/cH$onRelationshipValidationResult$onNavigationEvent;->onMessageChannelReady(Lo/cH$onTransact$extraCallback;)Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    .line 228
    invoke-virtual {v3}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult()J

    move-result-wide v4

    move-object/from16 v2, v25

    invoke-virtual {v2, v4, v5}, Lo/setFabAnimationMode;->onPostMessage(J)V

    .line 229
    invoke-virtual {v3}, Lo/cH$onTransact$extraCallback;->asBinder()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/setFabAnimationMode;->onMessageChannelReady(J)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 236
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v2

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cH$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/setErrorTextColor;->ICustomTabsCallback([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 240
    invoke-static/range {p2 .. p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 241
    invoke-virtual {v2, v4, v3, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19

    :catch_2
    move-exception v0

    .line 106
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v4, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 235
    throw v0
.end method
