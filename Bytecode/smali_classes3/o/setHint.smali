.class public Lo/setHint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChipStrokeWidthResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setHint$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static volatile extraCallback:Lo/setHint;


# instance fields
.field private ICustomTabsCallback:Lo/zzzv;

.field private final ICustomTabsCallback$Stub:Lo/setErrorTextColor;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

.field private ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:Ljava/nio/channels/FileChannel;

.field private IPostMessageService:Ljava/nio/channels/FileLock;

.field private IPostMessageService$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/setEnsureMinTouchTargetSize;

.field private asInterface:Lo/FloatingActionButton$BaseBehavior;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private newSession:J

.field private final notify:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/setHideOnScroll;

.field private onNavigationEvent:Lo/setBackgroundTintMode;

.field private onPostMessage:Lo/setClickable;

.field private onRelationshipValidationResult:Lo/setErrorIconTintMode;

.field private onTransact:Lo/setBoxCornerRadii;

.field private postMessage:I

.field private requestPostMessageChannel:Z

.field private updateVisuals:I

.field private validateRelationship:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:Z


# direct methods
.method private constructor <init>(Lo/setHelperTextColor;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lo/setHint;-><init>(Lo/setHelperTextColor;Lo/setCheckedIcon;)V

    return-void
.end method

.method private constructor <init>(Lo/setHelperTextColor;Lo/setCheckedIcon;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lo/setHint;->warmup:Z

    .line 17
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p2, p1, Lo/setHelperTextColor;->onMessageChannelReady:Landroid/content/Context;

    const/4 v0, 0x0

    .line 19
    invoke-static {p2, v0, v0}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lo/setHint;->ICustomTabsService$Stub:J

    .line 24
    new-instance p2, Lo/setErrorTextColor;

    invoke-direct {p2, p0}, Lo/setErrorTextColor;-><init>(Lo/setHint;)V

    .line 26
    invoke-virtual {p2}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 27
    iput-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub:Lo/setErrorTextColor;

    .line 29
    new-instance p2, Lo/setHideOnScroll;

    invoke-direct {p2, p0}, Lo/setHideOnScroll;-><init>(Lo/setHint;)V

    .line 31
    invoke-virtual {p2}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 32
    iput-object p2, p0, Lo/setHint;->onMessageChannelReady:Lo/setHideOnScroll;

    .line 34
    new-instance p2, Lo/setClickable;

    invoke-direct {p2, p0}, Lo/setClickable;-><init>(Lo/setHint;)V

    .line 36
    invoke-virtual {p2}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 37
    iput-object p2, p0, Lo/setHint;->onPostMessage:Lo/setClickable;

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/setHint;->notify:Ljava/util/Map;

    .line 40
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p2

    .line 41
    new-instance v0, Lo/setHintTextAppearance;

    invoke-direct {v0, p0, p1}, Lo/setHintTextAppearance;-><init>(Lo/setHint;Lo/setHelperTextColor;)V

    .line 42
    invoke-virtual {p2, v0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_sno"

    .line 411
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v5, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 414
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 416
    iget-object v15, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 417
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-static/range {p1 .. p2}, Lo/setErrorTextColor;->onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 419
    :cond_0
    iget-boolean v7, v3, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v7, :cond_1

    .line 420
    invoke-virtual {v1, v3}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 422
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v7

    iget-object v8, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lo/setClickable;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    .line 424
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 426
    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 427
    iget-object v5, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v5

    .line 428
    iget-object v6, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 429
    invoke-virtual {v3, v6, v4, v5}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v3

    invoke-virtual {v3, v15}, Lo/setClickable;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 432
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v3

    invoke-virtual {v3, v15}, Lo/setClickable;->asBinder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 433
    iget-object v4, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 435
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const/16 v9, 0xb

    .line 436
    iget-object v11, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "_ev"

    move-object v8, v15

    .line 437
    invoke-virtual/range {v7 .. v12}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 439
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2, v15}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 442
    invoke-virtual {v2}, Lo/setFabAnimationMode;->IPostMessageService()J

    move-result-wide v3

    invoke-virtual {v2}, Lo/setFabAnimationMode;->postMessage()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 444
    iget-object v5, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v5

    .line 445
    invoke-interface {v5}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 446
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 447
    sget-object v5, Lo/zziq;->IPostMessageService:Lo/setStatusBarForegroundColor;

    .line 448
    invoke-virtual {v5, v13}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 449
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 452
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 454
    invoke-direct {v1, v2}, Lo/setHint;->onPostMessage(Lo/setFabAnimationMode;)V

    :cond_5
    return-void

    .line 456
    :cond_6
    invoke-static {}, Lo/setCount;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 457
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 458
    sget-object v8, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$1:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v8}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 459
    invoke-static/range {p1 .. p1}, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback(Lo/zzir;)Lo/setFabCradleRoundedCornerRadius;

    move-result-object v2

    .line 461
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    .line 463
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v8

    .line 464
    invoke-virtual {v8, v15}, Lo/setStartIconTintList;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v8

    .line 465
    invoke-virtual {v7, v2, v8}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setFabCradleRoundedCornerRadius;I)V

    .line 466
    invoke-virtual {v2}, Lo/setFabCradleRoundedCornerRadius;->onMessageChannelReady()Lo/zzir;

    move-result-object v2

    .line 468
    :cond_7
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    const/4 v8, 0x2

    .line 469
    invoke-virtual {v7, v8}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 471
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 472
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v7

    .line 473
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v9

    .line 474
    invoke-virtual {v9, v2}, Lo/setLiftOnScrollTargetViewId;->extraCallback(Lo/zzir;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Logging event"

    invoke-virtual {v7, v10, v9}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    invoke-virtual {v7}, Lo/zzzv;->onPostMessage()V

    .line 476
    :try_start_0
    invoke-virtual {v1, v3}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    .line 477
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 478
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 479
    sget-object v9, Lo/zziq;->run:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    const-string v9, "ecommerce_purchase"

    .line 480
    iget-object v10, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 481
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "refund"

    if-nez v9, :cond_b

    if-eqz v7, :cond_a

    :try_start_1
    const-string v7, "purchase"

    iget-object v9, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 482
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 483
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v7, 0x1

    :goto_4
    const-string v9, "_iap"

    .line 484
    iget-object v11, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 485
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_17

    .line 488
    iget-object v9, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    const-string v11, "currency"

    invoke-virtual {v9, v11}, Lo/zzfa$zza;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "value"

    if-eqz v7, :cond_10

    .line 490
    :try_start_2
    iget-object v7, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v7, v11}, Lo/zzfa$zza;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v7, v17, v21

    if-nez v7, :cond_e

    .line 492
    iget-object v7, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v7, v11}, Lo/zzfa$zza;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-double v11, v12

    mul-double v17, v11, v19

    :cond_e
    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v17, v11

    if-gtz v7, :cond_f

    const-wide/high16 v11, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v17, v11

    if-ltz v7, :cond_f

    .line 494
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 495
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 496
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 497
    sget-object v13, Lo/zziq;->run:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v13}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 498
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    neg-long v11, v11

    goto :goto_7

    .line 501
    :cond_f
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 502
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 503
    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 504
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 505
    invoke-virtual {v7, v8, v9, v10}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_e

    .line 508
    :cond_10
    iget-object v7, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v7, v11}, Lo/zzfa$zza;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 509
    :cond_11
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 510
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "[A-Z]{3}"

    .line 511
    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "_ltv_"

    .line 512
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_12
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v10, v7

    .line 513
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 514
    iget-object v9, v7, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_13

    goto :goto_a

    .line 533
    :cond_13
    iget-object v7, v7, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 534
    new-instance v17, Lo/setErrorIconDrawable;

    iget-object v9, v2, Lo/zzir;->extraCallback:Ljava/lang/String;

    .line 535
    iget-object v13, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v13}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v13

    .line 536
    invoke-interface {v13}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v18

    add-long/2addr v7, v11

    .line 537
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_9
    move-object/from16 v6, v17

    goto :goto_c

    :cond_14
    :goto_a
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 515
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    .line 516
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v9

    .line 518
    sget-object v13, Lo/zziq;->INotificationSideChannel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v9, v15, v13}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v9

    sub-int/2addr v9, v6

    .line 520
    invoke-static {v15}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 522
    invoke-virtual {v7}, Lo/setHintTextColor;->read()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    :try_start_3
    invoke-virtual {v7}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v15, v6, v5

    const/16 v16, 0x1

    aput-object v15, v6, v16

    .line 525
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v6, v16

    .line 526
    invoke-virtual {v13, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 529
    :try_start_4
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    const-string v8, "Error pruning currencies. appId"

    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    :goto_b
    new-instance v17, Lo/setErrorIconDrawable;

    iget-object v9, v2, Lo/zzir;->extraCallback:Ljava/lang/String;

    .line 531
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v6

    .line 532
    invoke-interface {v6}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_9

    .line 538
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 540
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 541
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 542
    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 543
    iget-object v10, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v10}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v10

    .line 544
    iget-object v11, v6, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, v6, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 545
    invoke-virtual {v7, v8, v9, v10, v6}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    .line 549
    invoke-virtual/range {v7 .. v12}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    :cond_15
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    :cond_16
    :goto_d
    const/4 v11, 0x1

    :goto_e
    if-nez v11, :cond_18

    .line 552
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 553
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-void

    :cond_17
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    .line 555
    :cond_18
    :try_start_5
    iget-object v6, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v6}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v6

    .line 556
    iget-object v7, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 558
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v7

    const-wide/16 v19, 0x1

    if-eqz v7, :cond_19

    .line 559
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 560
    iget-object v8, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v9, Lo/zziq;->onServiceConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v8, v9}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 562
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 563
    iget-object v7, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-static {v7}, Lo/setHelperTextEnabled;->onNavigationEvent(Lo/zzfa$zza;)J

    move-result-wide v7

    add-long v7, v7, v19

    move-wide v11, v7

    goto :goto_f

    :cond_19
    move-wide/from16 v11, v19

    .line 565
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    .line 566
    invoke-direct/range {p0 .. p0}, Lo/setHint;->validateRelationship()J

    move-result-wide v8

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v14, v6

    move-object/from16 p1, v15

    move/from16 v15, v16

    move/from16 v16, v18

    .line 567
    invoke-virtual/range {v7 .. v17}, Lo/zzzv;->ICustomTabsCallback(JLjava/lang/String;JZZZZZ)Lo/zzew;

    move-result-object v7

    .line 568
    iget-wide v8, v7, Lo/zzew;->onPostMessage:J

    .line 569
    sget-object v10, Lo/zziq;->asInterface:Lo/setStatusBarForegroundColor;

    const/4 v14, 0x0

    .line 570
    invoke-virtual {v10, v14}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 571
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x0

    cmp-long v15, v8, v12

    if-lez v15, :cond_1b

    .line 574
    rem-long/2addr v8, v10

    cmp-long v2, v8, v19

    if-nez v2, :cond_1a

    .line 576
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 578
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lo/zzew;->onPostMessage:J

    .line 579
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 580
    invoke-virtual {v2, v3, v4, v5}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 582
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-void

    :cond_1b
    if-eqz v6, :cond_1d

    .line 585
    :try_start_6
    iget-wide v8, v7, Lo/zzew;->extraCallback:J

    .line 586
    sget-object v15, Lo/zziq;->newSession:Lo/setStatusBarForegroundColor;

    .line 587
    invoke-virtual {v15, v14}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 588
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v14, v15

    sub-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-lez v14, :cond_1d

    .line 591
    rem-long/2addr v8, v10

    cmp-long v3, v8, v19

    if-nez v3, :cond_1c

    .line 593
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 594
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 595
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lo/zzew;->extraCallback:J

    .line 596
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 597
    invoke-virtual {v3, v4, v5, v6}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    :cond_1c
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    .line 600
    iget-object v11, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, p1

    .line 601
    invoke-virtual/range {v7 .. v12}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-void

    :cond_1d
    if-eqz v18, :cond_1f

    .line 606
    :try_start_7
    iget-wide v8, v7, Lo/zzew;->ICustomTabsCallback:J

    .line 607
    iget-object v10, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v10}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v10

    .line 608
    iget-object v11, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 609
    sget-object v14, Lo/zziq;->ICustomTabsService:Lo/setStatusBarForegroundColor;

    invoke-virtual {v10, v11, v14}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v10

    const v11, 0xf4240

    .line 610
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 611
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v12

    if-lez v10, :cond_1f

    cmp-long v2, v8, v19

    if-nez v2, :cond_1e

    .line 616
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 618
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lo/zzew;->ICustomTabsCallback:J

    .line 619
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 620
    invoke-virtual {v2, v3, v4, v5}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-void

    .line 624
    :cond_1f
    :try_start_8
    iget-object v7, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v7}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v14

    .line 626
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const-string v8, "_o"

    .line 627
    iget-object v9, v2, Lo/zzir;->extraCallback:Ljava/lang/String;

    invoke-virtual {v7, v14, v8, v9}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    move-object/from16 v15, p1

    .line 630
    invoke-virtual {v7, v15}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v11, "_r"

    if-eqz v7, :cond_20

    .line 632
    :try_start_9
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const-string v8, "_dbg"

    .line 633
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v14, v8, v9}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    .line 636
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v14, v11, v8}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    const-string v7, "_s"

    .line 637
    iget-object v8, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 639
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v8, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 640
    invoke-virtual {v7, v8, v4}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 641
    iget-object v8, v7, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_21

    .line 643
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v8

    .line 644
    iget-object v7, v7, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v8, v14, v4, v7}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    invoke-virtual {v4, v15}, Lo/zzzv;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v12

    if-lez v4, :cond_22

    .line 648
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 649
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 650
    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 651
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 652
    invoke-virtual {v4, v9, v10, v7}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    :cond_22
    new-instance v4, Lo/sendMessageAtTime;

    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    iget-object v9, v2, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-object v10, v2, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-wide v12, v2, Lo/zzir;->onPostMessage:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v15

    move-object v5, v11

    move-object v11, v2

    move-object/from16 v16, v14

    move-object v2, v15

    const/16 v25, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v7 .. v16}, Lo/sendMessageAtTime;-><init>(Lo/setCheckedIcon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v8, v4, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v7

    if-nez v7, :cond_24

    .line 656
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    invoke-virtual {v7, v2}, Lo/zzzv;->onRelationshipValidationResult(Ljava/lang/String;)J

    move-result-wide v7

    .line 658
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v9

    .line 659
    invoke-virtual {v9, v2}, Lo/setStartIconTintList;->onPostMessage(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_23

    if-eqz v6, :cond_23

    .line 661
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 662
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    .line 663
    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 664
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    .line 665
    iget-object v4, v4, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 667
    invoke-virtual {v7, v2}, Lo/setStartIconTintList;->onPostMessage(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 668
    invoke-virtual {v3, v5, v6, v4, v7}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    .line 672
    invoke-virtual/range {v7 .. v12}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 673
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    return-void

    .line 675
    :cond_23
    :try_start_a
    new-instance v6, Lo/dispatchMessageTraced;

    iget-object v9, v4, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lo/sendMessageAtTime;->onMessageChannelReady:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v6

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_10

    .line 677
    :cond_24
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    iget-wide v8, v7, Lo/dispatchMessageTraced;->onTransact:J

    invoke-virtual {v4, v2, v8, v9}, Lo/sendMessageAtTime;->onNavigationEvent(Lo/setCheckedIcon;J)Lo/sendMessageAtTime;

    move-result-object v4

    .line 678
    iget-wide v8, v4, Lo/sendMessageAtTime;->onMessageChannelReady:J

    invoke-virtual {v7, v8, v9}, Lo/dispatchMessageTraced;->onPostMessage(J)Lo/dispatchMessageTraced;

    move-result-object v6

    .line 679
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2, v6}, Lo/zzzv;->onMessageChannelReady(Lo/dispatchMessageTraced;)V

    .line 681
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 683
    invoke-static {v4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, v4, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    iget-object v2, v4, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    iget-object v6, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 687
    invoke-static {}, Lo/cH$onTransact;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21()Lo/cH$onTransact$extraCallback;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(I)Lo/cH$onTransact$extraCallback;

    move-result-object v2

    const-string v7, "android"

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v2

    .line 688
    iget-object v7, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 689
    iget-object v7, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 690
    :cond_25
    iget-object v7, v3, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 691
    iget-object v7, v3, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 692
    :cond_26
    iget-object v7, v3, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 693
    iget-object v7, v3, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->asBinder(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 694
    :cond_27
    iget-wide v7, v3, Lo/setCounterTextAppearance;->asInterface:J

    const-wide/32 v9, -0x80000000

    cmp-long v11, v7, v9

    if-eqz v11, :cond_28

    .line 695
    iget-wide v7, v3, Lo/setCounterTextAppearance;->asInterface:J

    long-to-int v8, v7

    invoke-virtual {v2, v8}, Lo/cH$onTransact$extraCallback;->onTransact(I)Lo/cH$onTransact$extraCallback;

    .line 696
    :cond_28
    iget-wide v7, v3, Lo/setCounterTextAppearance;->extraCallback:J

    invoke-virtual {v2, v7, v8}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub(J)Lo/cH$onTransact$extraCallback;

    .line 697
    iget-object v7, v3, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 698
    iget-object v7, v3, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 699
    :cond_29
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 700
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 701
    sget-object v8, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v8}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 702
    iget-object v7, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 703
    invoke-virtual {v1, v7}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v7

    iget-object v8, v3, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    .line 704
    invoke-static {v8}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/zzq;->onNavigationEvent(Lo/zzq;)Lo/zzq;

    move-result-object v7

    .line 705
    iget-object v8, v3, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 706
    invoke-virtual {v7}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->requestPostMessageChannel(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 707
    :cond_2a
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 708
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 709
    iget-object v8, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v9, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v8, v9}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 710
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->newSession()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v3, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 711
    iget-object v7, v3, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->extraCommand(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 712
    :cond_2b
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->newSession()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 713
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->extraCommand()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v3, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    .line 714
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 715
    iget-object v7, v3, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->newSession(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_11

    .line 716
    :cond_2c
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->newSession()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v3, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 717
    iget-object v7, v3, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->newSession(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 718
    :cond_2d
    :goto_11
    iget-wide v7, v3, Lo/setCounterTextAppearance;->asBinder:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2e

    .line 719
    iget-wide v7, v3, Lo/setCounterTextAppearance;->asBinder:J

    invoke-virtual {v2, v7, v8}, Lo/cH$onTransact$extraCallback;->asInterface(J)Lo/cH$onTransact$extraCallback;

    .line 720
    :cond_2e
    iget-wide v7, v3, Lo/setCounterTextAppearance;->updateVisuals:J

    invoke-virtual {v2, v7, v8}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor(J)Lo/cH$onTransact$extraCallback;

    .line 721
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v7

    invoke-virtual {v7}, Lo/setErrorTextColor;->onPostMessage()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2f

    .line 723
    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;

    .line 724
    :cond_2f
    iget-object v7, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 725
    invoke-virtual {v1, v7}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v7

    iget-object v8, v3, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    .line 726
    invoke-static {v8}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/zzq;->onNavigationEvent(Lo/zzq;)Lo/zzq;

    move-result-object v7

    .line 727
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 728
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v8

    .line 729
    sget-object v11, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v11}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 730
    invoke-virtual {v7}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 732
    :cond_30
    iget-object v8, v1, Lo/setHint;->asInterface:Lo/FloatingActionButton$BaseBehavior;

    .line 733
    iget-object v11, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 734
    invoke-virtual {v8, v11, v7}, Lo/FloatingActionButton$BaseBehavior;->onNavigationEvent(Ljava/lang/String;Lo/zzq;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 735
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_31

    .line 736
    iget-boolean v11, v3, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    if-eqz v11, :cond_35

    .line 737
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lo/cH$onTransact$extraCallback;->onTransact(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 738
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v11, :cond_35

    .line 739
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(Z)Lo/cH$onTransact$extraCallback;

    goto/16 :goto_13

    .line 741
    :cond_31
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v8

    .line 743
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v11

    .line 744
    invoke-virtual {v8, v11}, Lo/zzfw;->onPostMessage(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_35

    iget-boolean v8, v3, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    if-eqz v8, :cond_35

    .line 745
    invoke-static {}, Lo/setAspectRatioListener;->onMessageChannelReady()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 746
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v8

    .line 747
    iget-object v11, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v12, Lo/zziq;->dump:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 749
    :cond_32
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v8

    .line 750
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "android_id"

    .line 751
    invoke-static {v8, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_33

    .line 754
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 755
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v11, "null secure ID. appId"

    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "null"

    goto :goto_12

    .line 757
    :cond_33
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 759
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v11

    .line 760
    invoke-virtual {v11}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v11

    const-string v12, "empty secure ID. appId"

    .line 761
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    :cond_34
    :goto_12
    invoke-virtual {v2, v8}, Lo/cH$onTransact$extraCallback;->ICustomTabsService(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 764
    :cond_35
    :goto_13
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v8

    .line 765
    invoke-virtual {v8}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 766
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 767
    invoke-virtual {v2, v8}, Lo/cH$onTransact$extraCallback;->extraCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v8

    .line 768
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v11

    .line 769
    invoke-virtual {v11}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 770
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 771
    invoke-virtual {v8, v11}, Lo/cH$onTransact$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    move-result-object v8

    .line 772
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v11

    .line 773
    invoke-virtual {v11}, Lo/zzfw;->onNavigationEvent()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v8, v12}, Lo/cH$onTransact$extraCallback;->asBinder(I)Lo/cH$onTransact$extraCallback;

    move-result-object v8

    .line 774
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v11

    .line 775
    invoke-virtual {v11}, Lo/zzfw;->asInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 777
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v8

    .line 778
    sget-object v11, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v11}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 779
    iget-wide v11, v3, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    invoke-virtual {v2, v11, v12}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult(J)Lo/cH$onTransact$extraCallback;

    .line 780
    :cond_36
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->cancel()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 781
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 782
    iget-object v8, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v8}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v8

    .line 783
    sget-object v11, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v11}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 784
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    goto :goto_14

    .line 785
    :cond_37
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    .line 786
    :goto_14
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_38

    move-object/from16 v8, v25

    .line 787
    invoke-virtual {v2, v8}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 788
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v8

    iget-object v11, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v8

    if-nez v8, :cond_3d

    .line 790
    new-instance v8, Lo/setFabAnimationMode;

    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    iget-object v12, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lo/setFabAnimationMode;-><init>(Lo/setCheckedIcon;Ljava/lang/String;)V

    .line 791
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v11

    if-eqz v11, :cond_39

    .line 792
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 793
    sget-object v12, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 794
    invoke-direct {v1, v7}, Lo/setHint;->onNavigationEvent(Lo/zzq;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    goto :goto_15

    .line 795
    :cond_39
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 796
    :goto_15
    iget-object v11, v3, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->asInterface(Ljava/lang/String;)V

    .line 797
    iget-object v11, v3, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 799
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 800
    sget-object v12, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 801
    invoke-virtual {v7}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 803
    :cond_3a
    iget-object v11, v1, Lo/setHint;->asInterface:Lo/FloatingActionButton$BaseBehavior;

    .line 804
    iget-object v12, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lo/FloatingActionButton$BaseBehavior;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 805
    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    .line 806
    :cond_3b
    invoke-virtual {v8, v9, v10}, Lo/setFabAnimationMode;->asInterface(J)V

    .line 807
    invoke-virtual {v8, v9, v10}, Lo/setFabAnimationMode;->onPostMessage(J)V

    .line 808
    invoke-virtual {v8, v9, v10}, Lo/setFabAnimationMode;->onMessageChannelReady(J)V

    .line 809
    iget-object v11, v3, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 810
    iget-wide v11, v3, Lo/setCounterTextAppearance;->asInterface:J

    invoke-virtual {v8, v11, v12}, Lo/setFabAnimationMode;->onNavigationEvent(J)V

    .line 811
    iget-object v11, v3, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->onRelationshipValidationResult(Ljava/lang/String;)V

    .line 812
    iget-wide v11, v3, Lo/setCounterTextAppearance;->extraCallback:J

    invoke-virtual {v8, v11, v12}, Lo/setFabAnimationMode;->extraCallback(J)V

    .line 813
    iget-wide v11, v3, Lo/setCounterTextAppearance;->asBinder:J

    invoke-virtual {v8, v11, v12}, Lo/setFabAnimationMode;->ICustomTabsCallback(J)V

    .line 814
    iget-boolean v11, v3, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v8, v11}, Lo/setFabAnimationMode;->onMessageChannelReady(Z)V

    .line 816
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 817
    sget-object v12, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v11

    if-nez v11, :cond_3c

    .line 818
    iget-wide v11, v3, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    invoke-virtual {v8, v11, v12}, Lo/setFabAnimationMode;->extraCommand(J)V

    .line 819
    :cond_3c
    iget-wide v11, v3, Lo/setCounterTextAppearance;->updateVisuals:J

    invoke-virtual {v8, v11, v12}, Lo/setFabAnimationMode;->asBinder(J)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v11

    invoke-virtual {v11, v8}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    .line 821
    :cond_3d
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 822
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 823
    sget-object v12, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 824
    invoke-virtual {v7}, Lo/zzq;->extraCallback()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 825
    :cond_3e
    invoke-virtual {v8}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 826
    invoke-virtual {v8}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 827
    :cond_3f
    invoke-virtual {v8}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 828
    invoke-virtual {v8}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->warmup(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    .line 829
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v3, v3, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lo/zzzv;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v11, 0x0

    .line 830
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v11, v7, :cond_41

    .line 831
    invoke-static {}, Lo/cH$newSession;->asInterface()Lo/cH$newSession$onPostMessage;

    move-result-object v7

    .line 832
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setErrorIconDrawable;

    iget-object v8, v8, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lo/cH$newSession$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;

    move-result-object v7

    .line 833
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setErrorIconDrawable;

    iget-wide v12, v8, Lo/setErrorIconDrawable;->onMessageChannelReady:J

    invoke-virtual {v7, v12, v13}, Lo/cH$newSession$onPostMessage;->onNavigationEvent(J)Lo/cH$newSession$onPostMessage;

    move-result-object v7

    .line 834
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v8

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/setErrorIconDrawable;

    iget-object v12, v12, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v8, v7, v12}, Lo/setErrorTextColor;->onNavigationEvent(Lo/cH$newSession$onPostMessage;Ljava/lang/Object;)V

    .line 835
    invoke-virtual {v2, v7}, Lo/cH$onTransact$extraCallback;->extraCallback(Lo/cH$newSession$onPostMessage;)Lo/cH$onTransact$extraCallback;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 838
    :cond_41
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v7

    check-cast v7, Lo/fa;

    check-cast v7, Lo/cH$onTransact;

    invoke-virtual {v3, v7}, Lo/zzzv;->onPostMessage(Lo/cH$onTransact;)J

    move-result-wide v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 847
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    .line 848
    iget-object v8, v4, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    if-eqz v8, :cond_44

    .line 849
    iget-object v8, v4, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    invoke-virtual {v8}, Lo/zzfa$zza;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 850
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42

    :goto_17
    const/4 v11, 0x1

    goto :goto_18

    .line 853
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v5

    iget-object v8, v4, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    iget-object v11, v4, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v5, v8, v11}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 855
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v11

    .line 856
    invoke-direct/range {p0 .. p0}, Lo/setHint;->validateRelationship()J

    move-result-wide v12

    iget-object v14, v4, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lo/zzzv;->ICustomTabsCallback(JLjava/lang/String;ZZZZZ)Lo/zzew;

    move-result-object v8

    if-eqz v5, :cond_44

    .line 857
    iget-wide v11, v8, Lo/zzew;->onMessageChannelReady:J

    .line 858
    iget-object v5, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v5

    .line 859
    iget-object v8, v4, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;)I

    move-result v5

    int-to-long v13, v5

    cmp-long v5, v11, v13

    if-gez v5, :cond_44

    goto :goto_17

    :cond_44
    const/4 v11, 0x0

    .line 860
    :goto_18
    invoke-virtual {v7, v4, v2, v3, v11}, Lo/zzzv;->extraCallback(Lo/sendMessageAtTime;JZ)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 861
    iput-wide v9, v1, Lo/setHint;->newSession:J

    goto :goto_19

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 842
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 843
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 844
    invoke-virtual {v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 845
    invoke-virtual {v4, v5, v2, v3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    :cond_45
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asBinder()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 863
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 867
    invoke-direct/range {p0 .. p0}, Lo/setHint;->INotificationSideChannel()V

    .line 869
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 870
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 871
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 872
    invoke-virtual {v2, v4, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 865
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3}, Lo/zzzv;->asInterface()V

    .line 866
    throw v2
.end method

.method private final ICustomTabsService$Stub()V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    return-void
.end method

.method private final ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;
    .locals 2

    .line 111
    iget-object v0, p0, Lo/setHint;->onNavigationEvent:Lo/setBackgroundTintMode;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final INotificationSideChannel()V
    .locals 21

    move-object/from16 v0, p0

    .line 2095
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2097
    iget-wide v1, v0, Lo/setHint;->newSession:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 2099
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    .line 2100
    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 2101
    iget-wide v7, v0, Lo/setHint;->newSession:J

    sub-long/2addr v1, v7

    .line 2102
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 2105
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 2107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 2108
    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2109
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintMode;->extraCallback()V

    .line 2110
    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub()Lo/setBoxCornerRadii;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBoxCornerRadii;->onPostMessage()V

    return-void

    .line 2112
    :cond_0
    iput-wide v3, v0, Lo/setHint;->newSession:J

    .line 2113
    :cond_1
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->INotificationSideChannel$Stub()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub$Proxy()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 2122
    :cond_2
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    .line 2123
    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    .line 2124
    sget-object v5, Lo/zziq;->IPostMessageService$Stub$Proxy:Lo/setStatusBarForegroundColor;

    const/4 v6, 0x0

    .line 2125
    invoke-virtual {v5, v6}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2126
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2129
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5}, Lo/zzzv;->IPostMessageService()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5}, Lo/zzzv;->ICustomTabsCallback$Stub()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 2132
    iget-object v10, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v10}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v10

    .line 2133
    invoke-virtual {v10}, Lo/setStartIconTintList;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v10

    .line 2134
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2135
    sget-object v10, Lo/zziq;->ICustomTabsService$Stub$Proxy:Lo/setStatusBarForegroundColor;

    .line 2136
    invoke-virtual {v10, v6}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2137
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 2139
    :cond_5
    sget-object v10, Lo/zziq;->postMessage:Lo/setStatusBarForegroundColor;

    .line 2140
    invoke-virtual {v10, v6}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2141
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 2144
    :cond_6
    sget-object v10, Lo/zziq;->updateVisuals:Lo/setStatusBarForegroundColor;

    .line 2145
    invoke-virtual {v10, v6}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2146
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2149
    :goto_2
    iget-object v12, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v12

    .line 2150
    iget-object v12, v12, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    invoke-virtual {v12}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v12

    .line 2152
    iget-object v14, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v14}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v14

    .line 2153
    iget-object v14, v14, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    invoke-virtual {v14}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v14

    .line 2154
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lo/zzzv;->IPostMessageService$Stub()J

    move-result-wide v9

    .line 2155
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lo/zzzv;->ICustomTabsService$Stub()J

    move-result-wide v6

    .line 2156
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v10, v3

    goto/16 :goto_4

    :cond_8
    sub-long/2addr v6, v1

    .line 2159
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 2160
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 2161
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 2162
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    .line 2165
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 2166
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lo/setErrorTextColor;->extraCallback(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long v10, v8, v12

    :cond_a
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x14

    .line 2171
    sget-object v7, Lo/zziq;->notify:Lo/setStatusBarForegroundColor;

    const/4 v8, 0x0

    .line 2172
    invoke-virtual {v7, v8}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2173
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 2177
    sget-object v12, Lo/zziq;->cancel:Lo/setStatusBarForegroundColor;

    .line 2178
    invoke-virtual {v12, v8}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2179
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v10, v1

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_d

    .line 2189
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2190
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2191
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintMode;->extraCallback()V

    .line 2192
    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub()Lo/setBoxCornerRadii;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBoxCornerRadii;->onPostMessage()V

    return-void

    .line 2194
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object v1

    invoke-virtual {v1}, Lo/setHideOnScroll;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2196
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2197
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2198
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintMode;->onNavigationEvent()V

    .line 2199
    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub()Lo/setBoxCornerRadii;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBoxCornerRadii;->onPostMessage()V

    return-void

    .line 2202
    :cond_e
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    .line 2203
    iget-object v1, v1, Lo/setBackgroundTintList;->onPostMessage:Lo/setIconTint;

    invoke-virtual {v1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v1

    .line 2204
    sget-object v5, Lo/zziq;->requestPostMessageChannel:Lo/setStatusBarForegroundColor;

    const/4 v6, 0x0

    .line 2205
    invoke-virtual {v5, v6}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2206
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lo/setErrorTextColor;->extraCallback(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    .line 2209
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2210
    :cond_f
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintMode;->extraCallback()V

    .line 2212
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    .line 2213
    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_10

    .line 2215
    sget-object v1, Lo/zziq;->ICustomTabsService$Stub:Lo/setStatusBarForegroundColor;

    const/4 v2, 0x0

    .line 2216
    invoke-virtual {v1, v2}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2217
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2220
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    .line 2221
    iget-object v1, v1, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    .line 2222
    iget-object v2, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    .line 2223
    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 2225
    :cond_10
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2226
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2227
    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub()Lo/setBoxCornerRadii;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lo/setBoxCornerRadii;->onMessageChannelReady(J)V

    return-void

    .line 2115
    :cond_11
    :goto_5
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2116
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2117
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub$Proxy()Lo/setBackgroundTintMode;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintMode;->extraCallback()V

    .line 2118
    invoke-direct/range {p0 .. p0}, Lo/setHint;->IPostMessageService$Stub()Lo/setBoxCornerRadii;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBoxCornerRadii;->onPostMessage()V

    return-void
.end method

.method private final IPostMessageService$Stub()Lo/setBoxCornerRadii;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/setHint;->onTransact:Lo/setBoxCornerRadii;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 115
    iget-object v0, p0, Lo/setHint;->onTransact:Lo/setBoxCornerRadii;

    return-object v0
.end method

.method private final IPostMessageService$Stub$Proxy()Z
    .locals 1

    .line 1962
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 1963
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 1964
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->validateRelationship()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1965
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final cancel()V
    .locals 5

    .line 2234
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2235
    iget-boolean v0, p0, Lo/setHint;->requestPostMessageChannel:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lo/setHint;->mayLaunchUrl:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lo/setHint;->extraCommand:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2245
    :cond_0
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2246
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2247
    iget-object v0, p0, Lo/setHint;->ICustomTabsService:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 2249
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2250
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2252
    :cond_2
    iget-object v0, p0, Lo/setHint;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2237
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2238
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-boolean v1, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 2239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lo/setHint;->mayLaunchUrl:Z

    .line 2240
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lo/setHint;->extraCommand:Z

    .line 2241
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 2242
    invoke-virtual {v0, v4, v1, v2, v3}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final cancelAll()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 882
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Lo/setHelperTextEnabled;->asInterface()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 884
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final extraCallback(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .line 2348
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2349
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 2355
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2356
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2357
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 2361
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2362
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 2364
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2365
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2369
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2370
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 2351
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2352
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v0
.end method

.method private static extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;ILjava/lang/String;)V
    .locals 4

    .line 1862
    invoke-virtual {p0}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1863
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 1864
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cH$onNavigationEvent;

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    .line 1868
    invoke-virtual {v0, v3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    int-to-long v1, p1

    .line 1869
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object p1

    .line 1870
    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$onNavigationEvent;

    .line 1871
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "_ev"

    .line 1872
    invoke-virtual {v0, v1}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    .line 1873
    invoke-virtual {v0, p2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object p2

    .line 1874
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cH$onNavigationEvent;

    .line 1875
    invoke-virtual {p0, p1}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent(Lo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent(Lo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    return-void
.end method

.method private final extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V
    .locals 8

    .line 242
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 244
    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi23:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback(Lo/zzir;)Lo/setFabCradleRoundedCornerRadius;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 248
    iget-object v1, p1, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    .line 249
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    iget-object v3, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/zzzv;->ICustomTabsCallback$Stub(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 255
    iget-object v2, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v1

    .line 256
    invoke-virtual {v0, p1, v1}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setFabCradleRoundedCornerRadius;I)V

    .line 257
    invoke-virtual {p1}, Lo/setFabCradleRoundedCornerRadius;->onMessageChannelReady()Lo/zzir;

    move-result-object p1

    .line 259
    :cond_0
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 260
    sget-object v1, Lo/zziq;->getNotifyChildrenChangedOptions:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    const-string v1, "_cis"

    .line 264
    invoke-virtual {v0, v1}, Lo/zzfa$zza;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lo/zzfa$zza;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lo/setError;

    iget-wide v4, p1, Lo/zzir;->onPostMessage:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0, p2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 270
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/setHint;->onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)V

    return-void
.end method

.method private final getDefaultImpl()Z
    .locals 5

    .line 2307
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2309
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 2310
    sget-object v1, Lo/zziq;->setInternalConnectionCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lo/setHint;->IPostMessageService:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v1

    .line 2319
    :cond_0
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2320
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2321
    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2322
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lo/setHint;->ICustomTabsService$Stub$Proxy:Ljava/nio/channels/FileChannel;

    .line 2323
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lo/setHint;->IPostMessageService:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 2326
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2327
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v1

    .line 2330
    :cond_1
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2331
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2345
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2346
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2340
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2341
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2335
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2336
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)Lo/setHint;
    .locals 2

    .line 1
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lo/setHint;->extraCallback:Lo/setHint;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lo/setHint;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lo/setHint;->extraCallback:Lo/setHint;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lo/setHelperTextColor;

    invoke-direct {v1, p0}, Lo/setHelperTextColor;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p0, Lo/setHint;

    invoke-direct {p0, v1}, Lo/setHint;-><init>(Lo/setHelperTextColor;)V

    .line 10
    sput-object p0, Lo/setHint;->extraCallback:Lo/setHint;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lo/setHint;->extraCallback:Lo/setHint;

    return-object p0
.end method

.method private final onMessageChannelReady(Lo/cH$onTransact$extraCallback;JZ)V
    .locals 9

    if-eqz p4, :cond_0

    const-string v0, "_se"

    goto :goto_0

    :cond_0
    const-string v0, "_lte"

    .line 1789
    :goto_0
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {p1}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1790
    iget-object v2, v1, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1796
    :cond_1
    new-instance v8, Lo/setErrorIconDrawable;

    .line 1797
    invoke-virtual {p1}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    .line 1798
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    .line 1799
    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    iget-object v1, v1, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1800
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 1791
    :cond_2
    :goto_1
    new-instance v8, Lo/setErrorIconDrawable;

    .line 1792
    invoke-virtual {p1}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    .line 1793
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    .line 1794
    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    .line 1795
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1801
    :goto_2
    invoke-static {}, Lo/cH$newSession;->asInterface()Lo/cH$newSession$onPostMessage;

    move-result-object v1

    .line 1802
    invoke-virtual {v1, v0}, Lo/cH$newSession$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;

    move-result-object v1

    .line 1803
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    .line 1804
    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/cH$newSession$onPostMessage;->onNavigationEvent(J)Lo/cH$newSession$onPostMessage;

    move-result-object v1

    iget-object v2, v8, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1805
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/cH$newSession$onPostMessage;->onPostMessage(J)Lo/cH$newSession$onPostMessage;

    move-result-object v1

    .line 1806
    invoke-virtual {v1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cH$newSession;

    const/4 v2, 0x0

    .line 1809
    invoke-static {p1, v0}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onTransact$extraCallback;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1811
    invoke-virtual {p1, v0, v1}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$newSession;)Lo/cH$onTransact$extraCallback;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 1814
    invoke-virtual {p1, v1}, Lo/cH$onTransact$extraCallback;->extraCallback(Lo/cH$newSession;)Lo/cH$onTransact$extraCallback;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    .line 1816
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, v8}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    if-eqz p4, :cond_5

    const-string p1, "session-scoped"

    goto :goto_3

    :cond_5
    const-string p1, "lifetime"

    .line 1821
    :goto_3
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 1822
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    iget-object p3, v8, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 1823
    invoke-virtual {p2, p4, p1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private static onMessageChannelReady(Lo/setHintTextColor;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Lo/setHintTextColor;->RemoteActionCompatParcelizer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;J)Z
    .locals 42

    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "_ai"

    const-string v4, ""

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5}, Lo/zzzv;->onPostMessage()V

    .line 1090
    :try_start_0
    new-instance v5, Lo/setHint$ICustomTabsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lo/setHint$ICustomTabsCallback;-><init>(Lo/setHint;Lo/setHintTextAppearance;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-wide v8, v1, Lo/setHint;->ICustomTabsService$Stub:J

    .line 1093
    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1095
    invoke-virtual {v7}, Lo/setHintTextColor;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v11, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1097
    :try_start_1
    invoke-virtual {v7}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 1098
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_3

    cmp-long v16, v8, v11

    if-eqz v16, :cond_0

    :try_start_2
    new-array v6, v13, [Ljava/lang/String;

    .line 1101
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v14

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v15

    goto :goto_0

    :cond_0
    new-array v6, v15, [Ljava/lang/String;

    .line 1102
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v14

    :goto_0
    if-eqz v16, :cond_1

    const-string v16, "rowid <= ? and "

    move-object/from16 p2, v16

    goto :goto_1

    :cond_1
    move-object/from16 p2, v4

    .line 1104
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x94

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1105
    invoke-virtual {v10, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1106
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v11, :cond_2

    if-eqz v6, :cond_6

    .line 1108
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_6

    .line 1110
    :cond_2
    :try_start_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1111
    :try_start_6
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_2

    :cond_3
    cmp-long v6, v8, v11

    if-eqz v6, :cond_4

    const/4 v11, 0x2

    :try_start_7
    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v12, v14

    .line 1115
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v15
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v25, v4

    const/4 v6, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    move-object v4, v0

    goto/16 :goto_c

    :cond_4
    const/4 v11, 0x0

    .line 1116
    :try_start_8
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    if-eqz v6, :cond_5

    :try_start_9
    const-string v6, " and rowid <= ?"
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :cond_5
    move-object v6, v4

    .line 1118
    :goto_5
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x54

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " order by rowid limit 1;"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1119
    invoke-virtual {v10, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1120
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v11, :cond_7

    if-eqz v6, :cond_6

    .line 1122
    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :goto_6
    move-object/from16 v25, v4

    goto/16 :goto_d

    .line 1124
    :cond_7
    :try_start_d
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v11, 0x0

    :goto_7
    :try_start_e
    const-string v17, "raw_events_metadata"

    const-string v13, "metadata"

    .line 1126
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id = ? and metadata_fingerprint = ?"

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    aput-object v11, v15, v14

    const/4 v13, 0x1

    aput-object v12, v15, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid"

    const-string v24, "2"

    move-object/from16 v16, v10

    move-object/from16 v20, v15

    .line 1127
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1128
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_8

    .line 1129
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 1130
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Raw event metadata record is missing. appId"

    .line 1131
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v6, :cond_6

    .line 1133
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_6

    .line 1135
    :cond_8
    :try_start_10
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1136
    :try_start_11
    invoke-static {}, Lo/cH$onTransact;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21()Lo/cH$onTransact$extraCallback;

    move-result-object v15

    invoke-static {v15, v13}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v13

    check-cast v13, Lo/cH$onTransact$extraCallback;

    invoke-virtual {v13}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v13

    check-cast v13, Lo/fa;

    check-cast v13, Lo/cH$onTransact;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1146
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1147
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v15

    .line 1148
    invoke-virtual {v15}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v15

    const-string v14, "Get multiple raw event metadata records, expected one. appId"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v25, v4

    .line 1149
    :try_start_13
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1150
    invoke-virtual {v15, v14, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v25, v4

    .line 1151
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1152
    invoke-interface {v5, v13}, Lo/zzo;->extraCallback(Lo/cH$onTransact;)V

    const-wide/16 v13, -0x1

    cmp-long v4, v8, v13

    if-eqz v4, :cond_a

    const-string v4, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v14, v13

    const/4 v13, 0x1

    aput-object v12, v14, v13

    .line 1155
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v14, v9

    move-object/from16 v19, v4

    move-object/from16 v20, v14

    goto :goto_9

    :cond_a
    const-string v4, "app_id = ? and metadata_fingerprint = ?"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v11, v9, v8

    const/4 v8, 0x1

    aput-object v12, v9, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    :goto_9
    const-string v17, "raw_events"

    const-string v4, "rowid"

    const-string v8, "name"

    const-string v9, "timestamp"

    const-string v12, "data"

    .line 1158
    filled-new-array {v4, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid"

    const/16 v24, 0x0

    move-object/from16 v16, v10

    .line 1159
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1160
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1161
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 1162
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 1163
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1164
    invoke-virtual {v6, v8, v9}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v4, :cond_d

    .line 1166
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_d

    :cond_b
    const/4 v6, 0x0

    .line 1168
    :try_start_16
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v6, 0x3

    .line 1169
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1170
    :try_start_17
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v6

    invoke-static {v6, v10}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v6

    check-cast v6, Lo/cH$ICustomTabsCallback$onNavigationEvent;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/4 v10, 0x1

    .line 1177
    :try_start_18
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v10

    const/4 v12, 0x2

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1178
    invoke-virtual {v6}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v6

    check-cast v6, Lo/fa;

    check-cast v6, Lo/cH$ICustomTabsCallback;

    invoke-interface {v5, v8, v9, v6}, Lo/zzo;->onPostMessage(JLo/cH$ICustomTabsCallback;)Z

    move-result v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v6, :cond_c

    if-eqz v4, :cond_d

    .line 1180
    :try_start_19
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 1173
    :try_start_1a
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 1174
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event. appId"

    .line 1175
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v6}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-nez v6, :cond_b

    if-eqz v4, :cond_d

    .line 1184
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v6, v4

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v6, v4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    .line 1139
    :try_start_1c
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 1140
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event metadata. appId"

    .line 1141
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1142
    invoke-virtual {v8, v9, v10, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    if-eqz v6, :cond_d

    .line 1144
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_d

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v25, v4

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v5, v1

    const/4 v6, 0x0

    :goto_a
    move-object v1, v0

    goto/16 :goto_4d

    :catch_8
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    const/4 v6, 0x0

    :goto_b
    const/4 v11, 0x0

    .line 1186
    :goto_c
    :try_start_1e
    invoke-virtual {v7}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 1187
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    const-string v8, "Data loss. Error selecting raw event. appId"

    .line 1188
    invoke-static {v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    if-eqz v6, :cond_d

    .line 1190
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_d
    :goto_d
    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    if-eqz v4, :cond_f

    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-nez v4, :cond_81

    .line 1198
    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1199
    invoke-virtual {v4}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v4

    .line 1200
    check-cast v4, Lo/fa$onNavigationEvent;

    check-cast v4, Lo/cH$onTransact$extraCallback;

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onPostMessage()Lo/cH$onTransact$extraCallback;

    move-result-object v4

    .line 1204
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v6

    .line 1205
    iget-object v7, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v7}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lo/zziq;->getExtras:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v7, v8}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 1210
    :goto_10
    iget-object v9, v5, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move/from16 v18, v13

    const-string v13, "_fr"

    move-object/from16 v19, v2

    const-string v2, "_et"

    move/from16 v20, v14

    const-string v14, "_e"

    move/from16 v21, v6

    move/from16 v22, v7

    if-ge v12, v9, :cond_45

    .line 1212
    :try_start_20
    iget-object v9, v5, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/cH$ICustomTabsCallback;

    .line 1213
    invoke-virtual {v9}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v9

    .line 1214
    check-cast v9, Lo/fa$onNavigationEvent;

    check-cast v9, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v6

    iget-object v7, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1216
    invoke-virtual {v7}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v7

    move/from16 v26, v12

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Lo/setClickable;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    const-string v7, "_err"

    if-eqz v6, :cond_13

    .line 1218
    :try_start_21
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1219
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1220
    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1221
    iget-object v13, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v13}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v13

    .line 1222
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1223
    invoke-virtual {v2, v6, v12, v13}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v2

    iget-object v6, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lo/setClickable;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v2

    iget-object v6, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1227
    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lo/setClickable;->asBinder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v2, 0x1

    :goto_12
    if-nez v2, :cond_12

    .line 1228
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1230
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v27

    .line 1231
    iget-object v2, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1232
    invoke-virtual {v2}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0xb

    const-string v30, "_ev"

    .line 1233
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    .line 1234
    invoke-virtual/range {v27 .. v32}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_12
    move-wide/from16 v27, v15

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v7, v22

    move/from16 v6, v26

    move-object/from16 v16, v3

    goto/16 :goto_2d

    .line 1235
    :cond_13
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1236
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v6

    .line 1237
    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v27, v15

    sget-object v15, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$1:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v12, v15}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1238
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v6

    .line 1239
    invoke-static {v3}, Lo/setChipIconResource;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1240
    invoke-virtual {v9, v3}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1242
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 1243
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v12, "Renaming ad_impression to _ai"

    invoke-virtual {v6, v12}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1245
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    const/4 v12, 0x5

    .line 1246
    invoke-virtual {v6, v12}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(I)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    .line 1247
    :goto_13
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage()I

    move-result v12

    if-ge v6, v12, :cond_16

    const-string v12, "ad_platform"

    .line 1248
    invoke-virtual {v9, v6}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v15

    invoke-virtual {v15}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1249
    invoke-virtual {v9, v6}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v12

    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "admob"

    .line 1250
    invoke-virtual {v9, v6}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v15

    invoke-virtual {v15}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1252
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    .line 1253
    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v12

    const-string v15, "AdMob ad impression logged from app. Potentially duplicative."

    .line 1254
    invoke-virtual {v12, v15}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_15
    move-wide/from16 v27, v15

    .line 1257
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v6

    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1258
    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    const-string v12, "_c"

    if-nez v6, :cond_1e

    .line 1259
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    .line 1260
    invoke-static {v15}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v16, v3

    .line 1261
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v29, v10

    const v10, 0x171c4

    if-eq v3, v10, :cond_19

    const v10, 0x17331

    if-eq v3, v10, :cond_18

    const v10, 0x17333

    if-eq v3, v10, :cond_17

    goto :goto_14

    :cond_17
    const-string v3, "_ui"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_15

    :cond_18
    const-string v3, "_ug"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    goto :goto_15

    :cond_19
    const-string v3, "_in"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_15

    :cond_1a
    :goto_14
    const/4 v3, -0x1

    :goto_15
    if-eqz v3, :cond_1b

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1b

    const/4 v10, 0x2

    if-eq v3, v10, :cond_1b

    const/4 v3, 0x0

    goto :goto_16

    :cond_1b
    const/4 v3, 0x1

    :goto_16
    if-eqz v3, :cond_1c

    goto :goto_18

    :cond_1c
    move-object/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v32, v11

    move-object v10, v13

    move-object v11, v14

    :cond_1d
    :goto_17
    move/from16 v13, v18

    goto/16 :goto_1f

    :cond_1e
    move-object/from16 v16, v3

    move-object/from16 v29, v10

    :goto_18
    move-object/from16 v30, v2

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 1267
    :goto_19
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage()I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object/from16 v31, v4

    const-string v4, "_r"

    if-ge v15, v2, :cond_21

    .line 1268
    :try_start_23
    invoke-virtual {v9, v15}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1270
    invoke-virtual {v9, v15}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v2

    .line 1271
    invoke-virtual {v2}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v2

    .line 1272
    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    const-wide/16 v3, 0x1

    .line 1273
    invoke-virtual {v2, v3, v4}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1274
    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$onNavigationEvent;

    .line 1276
    invoke-virtual {v9, v15, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(ILo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-object/from16 v32, v11

    const/4 v3, 0x1

    goto :goto_1a

    .line 1277
    :cond_1f
    invoke-virtual {v9, v15}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1279
    invoke-virtual {v9, v15}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v2

    .line 1280
    invoke-virtual {v2}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v2

    .line 1281
    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-object/from16 v32, v11

    const-wide/16 v10, 0x1

    .line 1282
    invoke-virtual {v2, v10, v11}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1283
    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$onNavigationEvent;

    .line 1285
    invoke-virtual {v9, v15, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(ILo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    const/4 v10, 0x1

    goto :goto_1a

    :cond_20
    move-object/from16 v32, v11

    :goto_1a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v31

    move-object/from16 v11, v32

    goto :goto_19

    :cond_21
    move-object/from16 v32, v11

    if-nez v3, :cond_22

    if-eqz v6, :cond_22

    .line 1289
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1290
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Marking event as conversion"

    .line 1291
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v11

    .line 1292
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1293
    invoke-virtual {v2, v3, v11}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1295
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1296
    invoke-virtual {v2, v12}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    move-object v3, v13

    move-object v11, v14

    const-wide/16 v13, 0x1

    .line 1297
    invoke-virtual {v2, v13, v14}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1298
    invoke-virtual {v9, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    goto :goto_1b

    :cond_22
    move-object v3, v13

    move-object v11, v14

    :goto_1b
    if-nez v10, :cond_23

    .line 1301
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1302
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v10, "Marking event as real-time"

    .line 1303
    iget-object v13, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v13}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v13

    .line 1304
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1305
    invoke-virtual {v2, v10, v13}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1308
    invoke-virtual {v2, v4}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    const-wide/16 v13, 0x1

    .line 1309
    invoke-virtual {v2, v13, v14}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v2

    .line 1310
    invoke-virtual {v9, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1313
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v33

    .line 1314
    invoke-direct/range {p0 .. p0}, Lo/setHint;->validateRelationship()J

    move-result-wide v34

    iget-object v2, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1315
    invoke-virtual {v2}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    .line 1316
    invoke-virtual/range {v33 .. v41}, Lo/zzzv;->ICustomTabsCallback(JLjava/lang/String;ZZZZZ)Lo/zzew;

    move-result-object v2

    .line 1317
    iget-wide v13, v2, Lo/zzew;->onMessageChannelReady:J

    .line 1318
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 1319
    iget-object v10, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v10}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;)I

    move-result v2

    move-object v10, v3

    int-to-long v2, v2

    cmp-long v15, v13, v2

    if-lez v15, :cond_24

    .line 1320
    invoke-static {v9, v4}, Lo/setHint;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;)V

    goto :goto_1c

    :cond_24
    const/16 v18, 0x1

    .line 1322
    :goto_1c
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v6, :cond_1d

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v33

    .line 1326
    invoke-direct/range {p0 .. p0}, Lo/setHint;->validateRelationship()J

    move-result-wide v34

    iget-object v2, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1327
    invoke-virtual {v2}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 1328
    invoke-virtual/range {v33 .. v41}, Lo/zzzv;->ICustomTabsCallback(JLjava/lang/String;ZZZZZ)Lo/zzew;

    move-result-object v2

    .line 1329
    iget-wide v2, v2, Lo/zzew;->onNavigationEvent:J

    .line 1330
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v4

    .line 1331
    iget-object v13, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v13}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v13

    .line 1332
    sget-object v14, Lo/zziq;->warmup:Lo/setStatusBarForegroundColor;

    invoke-virtual {v4, v13, v14}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v2, v13

    if-lez v4, :cond_1d

    .line 1335
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1337
    invoke-virtual {v4}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1338
    invoke-virtual {v2, v3, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 1342
    :goto_1d
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage()I

    move-result v14

    if-ge v13, v14, :cond_27

    .line 1343
    invoke-virtual {v9, v13}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object v14

    .line 1344
    invoke-virtual {v14}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 1346
    invoke-virtual {v14}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v2

    .line 1347
    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-object v3, v2

    move v2, v13

    goto :goto_1e

    .line 1349
    :cond_25
    invoke-virtual {v14}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    const/4 v4, 0x1

    :cond_26
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_27
    if-eqz v4, :cond_28

    if-eqz v3, :cond_28

    .line 1354
    invoke-virtual {v9, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    goto/16 :goto_17

    :cond_28
    if-eqz v3, :cond_29

    .line 1358
    invoke-virtual {v3}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fa$onNavigationEvent;

    check-cast v3, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    .line 1359
    invoke-virtual {v3, v7}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v3

    const-wide/16 v13, 0xa

    .line 1360
    invoke-virtual {v3, v13, v14}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v3

    .line 1361
    invoke-virtual {v3}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$onNavigationEvent;

    .line 1362
    invoke-virtual {v9, v2, v3}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(ILo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    goto/16 :goto_17

    .line 1365
    :cond_29
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1366
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1367
    invoke-virtual {v4}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1368
    invoke-virtual {v2, v3, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17

    :goto_1f
    if-eqz v6, :cond_32

    .line 1371
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    .line 1374
    :goto_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    const-string v14, "currency"

    const-string v15, "value"

    if-ge v3, v7, :cond_2c

    .line 1375
    :try_start_24
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/cH$onNavigationEvent;

    invoke-virtual {v7}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    move v4, v3

    goto :goto_21

    .line 1377
    :cond_2a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/cH$onNavigationEvent;

    invoke-virtual {v7}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v6, v3

    :cond_2b
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2c
    const/4 v3, -0x1

    if-eq v4, v3, :cond_33

    .line 1381
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$onNavigationEvent;

    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$onNavigationEvent;

    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1383
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1384
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v9, v4}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1387
    invoke-static {v9, v12}, Lo/setHint;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 1388
    invoke-static {v9, v2, v15}, Lo/setHint;->extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;ILjava/lang/String;)V

    goto :goto_25

    :cond_2d
    const/4 v3, -0x1

    if-ne v6, v3, :cond_2e

    const/4 v2, 0x1

    const/4 v7, 0x3

    goto :goto_24

    .line 1393
    :cond_2e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cH$onNavigationEvent;

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    .line 1394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2f

    :goto_22
    const/4 v2, 0x1

    goto :goto_24

    :cond_2f
    const/4 v6, 0x0

    .line 1396
    :goto_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_31

    .line 1397
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 1398
    invoke-static {v15}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-nez v17, :cond_30

    goto :goto_22

    .line 1401
    :cond_30
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_23

    :cond_31
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_34

    .line 1405
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1406
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v6, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 1407
    invoke-virtual {v2, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v9, v4}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1410
    invoke-static {v9, v12}, Lo/setHint;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 1411
    invoke-static {v9, v2, v14}, Lo/setHint;->extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;ILjava/lang/String;)V

    goto :goto_26

    :cond_32
    :goto_25
    const/4 v3, -0x1

    :cond_33
    const/4 v7, 0x3

    .line 1413
    :cond_34
    :goto_26
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 1414
    iget-object v4, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v4}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v4, v6}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1415
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;

    invoke-static {v2, v10}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v2

    if-nez v2, :cond_36

    if-eqz v32, :cond_35

    .line 1418
    invoke-virtual/range {v32 .. v32}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v14

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    cmp-long v2, v14, v17

    if-gtz v2, :cond_35

    .line 1419
    invoke-virtual/range {v32 .. v32}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1420
    invoke-direct {v1, v9, v2}, Lo/setHint;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v4, v31

    .line 1423
    invoke-virtual {v4, v8, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    move/from16 v7, v22

    move-object/from16 v6, v30

    :goto_27
    const/16 v29, 0x0

    const/16 v32, 0x0

    goto/16 :goto_2b

    :cond_35
    move-object/from16 v4, v31

    move-object/from16 v29, v9

    move/from16 v7, v20

    move-object/from16 v6, v30

    goto/16 :goto_2b

    :cond_36
    move-object/from16 v4, v31

    move/from16 v10, v22

    move-object/from16 v6, v30

    goto/16 :goto_2a

    :cond_37
    move-object/from16 v4, v31

    const-string v2, "_vs"

    .line 1429
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;

    move-object/from16 v6, v30

    invoke-static {v2, v6}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v2

    if-nez v2, :cond_39

    if-eqz v29, :cond_38

    .line 1432
    invoke-virtual/range {v29 .. v29}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v14

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    cmp-long v2, v14, v17

    if-gtz v2, :cond_38

    .line 1433
    invoke-virtual/range {v29 .. v29}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1434
    invoke-direct {v1, v2, v9}, Lo/setHint;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)Z

    move-result v10

    if-eqz v10, :cond_38

    move/from16 v10, v22

    .line 1437
    invoke-virtual {v4, v10, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    move v7, v10

    goto :goto_27

    :cond_38
    move/from16 v10, v22

    move-object/from16 v32, v9

    move v7, v10

    move/from16 v8, v20

    goto/16 :goto_2b

    :cond_39
    move/from16 v10, v22

    goto/16 :goto_2a

    :cond_3a
    move/from16 v10, v22

    move-object/from16 v6, v30

    .line 1444
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 1445
    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1446
    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lo/zziq;->onProgressUpdate:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v12, v14}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "_ab"

    .line 1447
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;

    invoke-static {v2, v6}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v2

    if-nez v2, :cond_41

    if-eqz v29, :cond_41

    .line 1450
    invoke-virtual/range {v29 .. v29}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v14

    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0xfa0

    cmp-long v2, v14, v17

    if-gtz v2, :cond_41

    .line 1451
    invoke-virtual/range {v29 .. v29}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fa$onNavigationEvent;

    check-cast v2, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1452
    invoke-direct {v1, v2, v9}, Lo/setHint;->onNavigationEvent(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)V

    .line 1455
    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1456
    invoke-static {v12}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v12

    check-cast v12, Lo/fa;

    check-cast v12, Lo/cH$ICustomTabsCallback;

    const-string v14, "_sn"

    invoke-static {v12, v14}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v12

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    .line 1461
    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v14

    check-cast v14, Lo/fa;

    check-cast v14, Lo/cH$ICustomTabsCallback;

    const-string v15, "_sc"

    invoke-static {v14, v15}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v14

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v15

    check-cast v15, Lo/fa;

    check-cast v15, Lo/cH$ICustomTabsCallback;

    const-string v3, "_si"

    invoke-static {v15, v3}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v3

    if-eqz v12, :cond_3b

    .line 1464
    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v12

    goto :goto_28

    :cond_3b
    move-object/from16 v12, v25

    .line 1465
    :goto_28
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3c

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v15

    const-string v7, "_sn"

    invoke-virtual {v15, v9, v7, v12}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c
    if-eqz v14, :cond_3d

    .line 1467
    invoke-virtual {v14}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_29

    :cond_3d
    move-object/from16 v7, v25

    .line 1468
    :goto_29
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3e

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v12

    const-string v14, "_sc"

    invoke-virtual {v12, v9, v14, v7}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    if-eqz v3, :cond_3f

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v7

    const-string v12, "_si"

    .line 1472
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v9, v12, v3}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1474
    :cond_3f
    invoke-virtual {v4, v10, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    move v7, v10

    const/16 v29, 0x0

    goto :goto_2b

    :cond_40
    move/from16 v10, v22

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    :cond_41
    :goto_2a
    move v7, v10

    :goto_2b
    if-nez v21, :cond_44

    .line 1476
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1477
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage()I

    move-result v2

    if-nez v2, :cond_42

    .line 1479
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1480
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Engagement event does not contain any parameters. appId"

    iget-object v6, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1481
    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1482
    invoke-virtual {v2, v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 1484
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v2

    .line 1485
    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v2, v3, v6}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_43

    .line 1488
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1489
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Engagement event does not include duration. appId"

    iget-object v6, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1490
    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1491
    invoke-virtual {v2, v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 1492
    :cond_43
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v2, v27, v2

    move-wide/from16 v27, v2

    .line 1493
    :cond_44
    :goto_2c
    iget-object v2, v5, Lo/setHint$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$ICustomTabsCallback;

    move/from16 v6, v26

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v20, 0x1

    .line 1495
    invoke-virtual {v4, v9}, Lo/cH$onTransact$extraCallback;->extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    move-object/from16 v10, v29

    move-object/from16 v11, v32

    :goto_2d
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v19

    move/from16 v6, v21

    move-wide/from16 v15, v27

    goto/16 :goto_10

    :cond_45
    move-object v6, v2

    move-object v10, v13

    move-object v11, v14

    move-wide/from16 v27, v15

    if-eqz v21, :cond_4a

    move/from16 v14, v20

    move-wide/from16 v15, v27

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v14, :cond_49

    .line 1499
    invoke-virtual {v4, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;

    move-result-object v3

    .line 1500
    invoke-virtual {v3}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-static {v3, v10}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v7

    if-eqz v7, :cond_46

    .line 1502
    invoke-virtual {v4, v2}, Lo/cH$onTransact$extraCallback;->extraCallback(I)Lo/cH$onTransact$extraCallback;

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 1507
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-static {v3, v6}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 1509
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2f

    :cond_47
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_48

    .line 1510
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmp-long v9, v7, v12

    if-lez v9, :cond_48

    .line 1511
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v15, v7

    :cond_48
    :goto_30
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_2e

    :cond_49
    move-wide v2, v15

    goto :goto_31

    :cond_4a
    move-wide/from16 v2, v27

    :goto_31
    const/4 v6, 0x0

    .line 1513
    invoke-direct {v1, v4, v2, v3, v6}, Lo/setHint;->onMessageChannelReady(Lo/cH$onTransact$extraCallback;JZ)V

    .line 1515
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/cH$ICustomTabsCallback;

    const-string v8, "_s"

    .line 1516
    invoke-virtual {v7}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    if-eqz v7, :cond_4b

    const/4 v6, 0x1

    goto :goto_32

    :cond_4c
    const/4 v6, 0x0

    :goto_32
    const-string v7, "_se"

    if-eqz v6, :cond_4d

    .line 1521
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v6

    .line 1522
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v8

    .line 1523
    invoke-virtual {v6, v8, v7}, Lo/zzzv;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    const-string v6, "_sid"

    .line 1525
    invoke-static {v4, v6}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onTransact$extraCallback;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4e

    const/4 v6, 0x1

    goto :goto_33

    :cond_4e
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_4f

    const/4 v6, 0x1

    .line 1527
    invoke-direct {v1, v4, v2, v3, v6}, Lo/setHint;->onMessageChannelReady(Lo/cH$onTransact$extraCallback;JZ)V

    goto :goto_34

    .line 1529
    :cond_4f
    invoke-static {v4, v7}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onTransact$extraCallback;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_50

    .line 1531
    invoke-virtual {v4, v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(I)Lo/cH$onTransact$extraCallback;

    .line 1533
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1534
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1535
    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1536
    invoke-virtual {v2, v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1537
    :cond_50
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v2

    .line 1538
    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v2}, Lo/setHintEnabled;->L_()Lo/setClickable;

    move-result-object v3

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1540
    invoke-virtual {v2}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 1541
    invoke-virtual {v3}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1542
    invoke-virtual {v2}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v3

    invoke-virtual {v3}, Lo/zzfw;->asBinder()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1543
    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1544
    invoke-static {}, Lo/cH$newSession;->asInterface()Lo/cH$newSession$onPostMessage;

    move-result-object v3

    move-object/from16 v6, v19

    .line 1545
    invoke-virtual {v3, v6}, Lo/cH$newSession$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;

    move-result-object v3

    .line 1546
    invoke-virtual {v2}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzfw;->onTransact()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lo/cH$newSession$onPostMessage;->onNavigationEvent(J)Lo/cH$newSession$onPostMessage;

    move-result-object v2

    const-wide/16 v7, 0x1

    .line 1547
    invoke-virtual {v2, v7, v8}, Lo/cH$newSession$onPostMessage;->onPostMessage(J)Lo/cH$newSession$onPostMessage;

    move-result-object v2

    .line 1548
    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$newSession;

    const/4 v3, 0x0

    .line 1550
    :goto_35
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback()I

    move-result v7

    if-ge v3, v7, :cond_52

    .line 1552
    invoke-virtual {v4, v3}, Lo/cH$onTransact$extraCallback;->onPostMessage(I)Lo/cH$newSession;

    move-result-object v7

    invoke-virtual {v7}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    .line 1553
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1554
    invoke-virtual {v4, v3, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$newSession;)Lo/cH$onTransact$extraCallback;

    const/4 v3, 0x1

    goto :goto_36

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_52
    const/4 v3, 0x0

    :goto_36
    if-nez v3, :cond_53

    .line 1559
    invoke-virtual {v4, v2}, Lo/cH$onTransact$extraCallback;->extraCallback(Lo/cH$newSession;)Lo/cH$onTransact$extraCallback;

    :cond_53
    const-wide v2, 0x7fffffffffffffffL

    .line 1561
    invoke-virtual {v4, v2, v3}, Lo/cH$onTransact$extraCallback;->extraCallback(J)Lo/cH$onTransact$extraCallback;

    move-result-object v2

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v2, v6, v7}, Lo/cH$onTransact$extraCallback;->onPostMessage(J)Lo/cH$onTransact$extraCallback;

    const/4 v2, 0x0

    .line 1562
    :goto_37
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 1563
    invoke-virtual {v4, v2}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;

    move-result-object v3

    .line 1564
    invoke-virtual {v3}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v6

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_54

    .line 1565
    invoke-virtual {v3}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->extraCallback(J)Lo/cH$onTransact$extraCallback;

    .line 1566
    :cond_54
    invoke-virtual {v3}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v6

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->asBinder()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_55

    .line 1567
    invoke-virtual {v3}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->onPostMessage(J)Lo/cH$onTransact$extraCallback;

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1569
    :cond_56
    invoke-static {}, Lo/setAspectRatioListener;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1570
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 1571
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lo/zziq;->dump:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3, v6}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1572
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->postMessage()Lo/cH$onTransact$extraCallback;

    .line 1574
    :cond_57
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->updateVisuals()Lo/cH$onTransact$extraCallback;

    move-result-object v2

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onRelationshipValidationResult()Lo/setErrorIconTintMode;

    move-result-object v6

    .line 1576
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v7

    .line 1577
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v8

    .line 1578
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->extraCallback()Ljava/util/List;

    move-result-object v9

    .line 1579
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1580
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->asBinder()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1581
    invoke-virtual/range {v6 .. v11}, Lo/setErrorIconTintMode;->onMessageChannelReady(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 1582
    invoke-virtual {v2, v3}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;

    .line 1584
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 1585
    iget-object v3, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v3}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->asBinder(Ljava/lang/String;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    if-eqz v2, :cond_73

    .line 1587
    :try_start_26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1588
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v6

    .line 1591
    invoke-virtual {v6}, Lo/setHelperTextEnabled;->asInterface()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 1592
    :goto_38
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady()I

    move-result v8

    if-ge v7, v8, :cond_70

    .line 1593
    invoke-virtual {v4, v7}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;

    move-result-object v8

    .line 1594
    invoke-virtual {v8}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v8

    .line 1595
    check-cast v8, Lo/fa$onNavigationEvent;

    check-cast v8, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    .line 1596
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    const-string v10, "_sr"

    if-eqz v9, :cond_5c

    .line 1598
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v9

    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v11

    check-cast v11, Lo/fa;

    check-cast v11, Lo/cH$ICustomTabsCallback;

    const-string v12, "_en"

    invoke-virtual {v9, v11, v12}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1599
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/dispatchMessageTraced;

    if-nez v11, :cond_58

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v11

    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v11

    .line 1603
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_58
    iget-object v9, v11, Lo/dispatchMessageTraced;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    if-nez v9, :cond_5b

    .line 1605
    iget-object v9, v11, Lo/dispatchMessageTraced;->asInterface:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_59

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v9

    iget-object v12, v11, Lo/dispatchMessageTraced;->asInterface:Ljava/lang/Long;

    .line 1607
    invoke-virtual {v9, v8, v10, v12}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1608
    :cond_59
    iget-object v9, v11, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    if-eqz v9, :cond_5a

    iget-object v9, v11, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    .line 1609
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v9

    const-string v10, "_efs"

    const-wide/16 v11, 0x1

    .line 1611
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v10, v13}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1612
    :cond_5a
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$ICustomTabsCallback;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    :cond_5b
    invoke-virtual {v4, v7, v8}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    :goto_39
    move-object/from16 p1, v5

    move-object/from16 v19, v6

    move-object v5, v2

    goto/16 :goto_41

    .line 1616
    :cond_5c
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v9

    iget-object v11, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1617
    invoke-virtual {v11}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lo/setClickable;->onTransact(Ljava/lang/String;)J

    move-result-wide v11

    .line 1619
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 1620
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lo/setHelperTextEnabled;->onNavigationEvent(JJ)J

    move-result-wide v13

    .line 1622
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$ICustomTabsCallback;

    const-string v15, "_dbg"

    move-wide/from16 v19, v11

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1623
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    if-nez v12, :cond_62

    if-nez v11, :cond_5d

    goto :goto_3b

    .line 1625
    :cond_5d
    :try_start_29
    invoke-virtual {v9}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_62

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/cH$onNavigationEvent;

    move-object/from16 p1, v9

    .line 1626
    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 1627
    instance-of v9, v11, Ljava/lang/Long;

    if-eqz v9, :cond_5e

    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    :cond_5e
    instance-of v9, v11, Ljava/lang/String;

    if-eqz v9, :cond_5f

    .line 1628
    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    :cond_5f
    instance-of v9, v11, Ljava/lang/Double;

    if-eqz v9, :cond_62

    .line 1629
    invoke-virtual {v12}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    :cond_60
    const/4 v9, 0x1

    goto :goto_3c

    :cond_61
    move-object/from16 v9, p1

    goto :goto_3a

    :cond_62
    :goto_3b
    const/4 v9, 0x0

    :goto_3c
    if-nez v9, :cond_63

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v9

    iget-object v11, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1636
    invoke-virtual {v11}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lo/setClickable;->extraCallback(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_3d

    :cond_63
    const/4 v9, 0x1

    :goto_3d
    if-gtz v9, :cond_64

    .line 1639
    iget-object v10, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v10}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v10

    .line 1640
    invoke-virtual {v10}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 1641
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1642
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$ICustomTabsCallback;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-virtual {v4, v7, v8}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    goto/16 :goto_39

    .line 1645
    :cond_64
    :try_start_2a
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/dispatchMessageTraced;

    if-nez v11, :cond_65

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v11

    iget-object v12, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v12}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v11

    if-nez v11, :cond_65

    .line 1651
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v11

    .line 1652
    invoke-virtual {v11}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1653
    invoke-virtual {v15}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v15

    .line 1654
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 1655
    invoke-virtual {v11, v12, v15, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1656
    new-instance v11, Lo/dispatchMessageTraced;

    iget-object v1, v5, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1657
    invoke-virtual {v1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v26

    .line 1658
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    .line 1659
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v11

    invoke-direct/range {v25 .. v41}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 1661
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v1

    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v12

    check-cast v12, Lo/fa;

    check-cast v12, Lo/cH$ICustomTabsCallback;

    const-string v15, "_eid"

    invoke-virtual {v1, v12, v15}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_66

    const/4 v12, 0x1

    goto :goto_3e

    :cond_66
    const/4 v12, 0x0

    .line 1662
    :goto_3e
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v15, 0x1

    if-ne v9, v15, :cond_69

    .line 1664
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cH$ICustomTabsCallback;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, v11, Lo/dispatchMessageTraced;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    if-nez v1, :cond_67

    iget-object v1, v11, Lo/dispatchMessageTraced;->asInterface:Ljava/lang/Long;

    if-nez v1, :cond_67

    iget-object v1, v11, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    if-eqz v1, :cond_68

    :cond_67
    const/4 v1, 0x0

    .line 1666
    invoke-virtual {v11, v1, v1, v1}, Lo/dispatchMessageTraced;->extraCallback(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lo/dispatchMessageTraced;

    move-result-object v9

    .line 1667
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    :cond_68
    invoke-virtual {v4, v7, v8}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    goto/16 :goto_39

    .line 1670
    :cond_69
    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_6b

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v1

    move-object/from16 p1, v5

    move-object v15, v6

    int-to-long v5, v9

    .line 1672
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v10, v9}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1673
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cH$ICustomTabsCallback;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1676
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v1, v5}, Lo/dispatchMessageTraced;->extraCallback(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lo/dispatchMessageTraced;

    move-result-object v11

    .line 1678
    :cond_6a
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 1679
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6, v13, v14}, Lo/dispatchMessageTraced;->extraCallback(JJ)Lo/dispatchMessageTraced;

    move-result-object v5

    .line 1680
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    move-object/from16 v19, v15

    goto/16 :goto_40

    :cond_6b
    move-object/from16 p1, v5

    move-object v15, v6

    .line 1681
    iget-object v5, v11, Lo/dispatchMessageTraced;->asBinder:Ljava/lang/Long;

    if-eqz v5, :cond_6c

    .line 1682
    iget-object v5, v11, Lo/dispatchMessageTraced;->asBinder:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_3f

    :cond_6c
    move-object/from16 v5, p0

    .line 1684
    iget-object v6, v5, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 1685
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v5

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-wide/from16 v1, v19

    invoke-static {v5, v6, v1, v2}, Lo/setHelperTextEnabled;->onNavigationEvent(JJ)J

    move-result-wide v5

    :goto_3f
    cmp-long v1, v5, v13

    if-eqz v1, :cond_6e

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v1

    const-string v2, "_efs"

    move-object/from16 v19, v15

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v1, v8, v2, v15}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v1

    int-to-long v5, v9

    .line 1689
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v10, v2}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cH$ICustomTabsCallback;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1693
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v1, v5}, Lo/dispatchMessageTraced;->extraCallback(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lo/dispatchMessageTraced;

    move-result-object v11

    .line 1695
    :cond_6d
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 1696
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onTransact()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6, v13, v14}, Lo/dispatchMessageTraced;->extraCallback(JJ)Lo/dispatchMessageTraced;

    move-result-object v2

    move-object/from16 v5, v16

    .line 1697
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_6e
    move-object/from16 v19, v15

    move-object/from16 v5, v16

    .line 1698
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1700
    invoke-virtual {v8}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6, v6}, Lo/dispatchMessageTraced;->extraCallback(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lo/dispatchMessageTraced;

    move-result-object v2

    .line 1701
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    :cond_6f
    :goto_40
    invoke-virtual {v4, v7, v8}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;

    :goto_41
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v6, v19

    move-object/from16 v5, p1

    goto/16 :goto_38

    :cond_70
    move-object/from16 p1, v5

    move-object v5, v2

    .line 1704
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady()I

    move-result v2

    if-ge v1, v2, :cond_71

    .line 1705
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onPostMessage()Lo/cH$onTransact$extraCallback;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;

    .line 1706
    :cond_71
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/dispatchMessageTraced;

    invoke-virtual {v3, v2}, Lo/zzzv;->onMessageChannelReady(Lo/dispatchMessageTraced;)V

    goto :goto_42

    :cond_72
    move-object/from16 v1, p1

    goto :goto_43

    :cond_73
    move-object v1, v5

    .line 1709
    :goto_43
    iget-object v2, v1, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v2}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v2

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    if-nez v3, :cond_74

    move-object/from16 v5, p0

    .line 1713
    :try_start_2b
    iget-object v3, v5, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1714
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v1, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1715
    invoke-virtual {v7}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1716
    invoke-virtual {v3, v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_48

    :cond_74
    move-object/from16 v5, p0

    .line 1717
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady()I

    move-result v6

    if-lez v6, :cond_79

    .line 1718
    invoke-virtual {v3}, Lo/setFabAnimationMode;->ICustomTabsService()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_75

    .line 1720
    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady(J)Lo/cH$onTransact$extraCallback;

    goto :goto_44

    .line 1721
    :cond_75
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onTransact()Lo/cH$onTransact$extraCallback;

    .line 1722
    :goto_44
    invoke-virtual {v3}, Lo/setFabAnimationMode;->asInterface()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_76

    goto :goto_45

    :cond_76
    move-wide v6, v8

    :goto_45
    cmp-long v8, v6, v10

    if-eqz v8, :cond_77

    .line 1726
    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(J)Lo/cH$onTransact$extraCallback;

    goto :goto_46

    .line 1727
    :cond_77
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->asInterface()Lo/cH$onTransact$extraCallback;

    .line 1728
    :goto_46
    invoke-virtual {v3}, Lo/setFabAnimationMode;->ICustomTabsService$Stub()V

    .line 1729
    invoke-virtual {v3}, Lo/setFabAnimationMode;->mayLaunchUrl()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult(I)Lo/cH$onTransact$extraCallback;

    .line 1730
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onRelationshipValidationResult()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lo/setFabAnimationMode;->onPostMessage(J)V

    .line 1731
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->asBinder()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lo/setFabAnimationMode;->onMessageChannelReady(J)V

    .line 1732
    invoke-virtual {v3}, Lo/setFabAnimationMode;->getDefaultImpl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 1734
    invoke-virtual {v4, v6}, Lo/cH$onTransact$extraCallback;->asInterface(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;

    goto :goto_47

    .line 1735
    :cond_78
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->getInterfaceDescriptor()Lo/cH$onTransact$extraCallback;

    .line 1736
    :goto_47
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    .line 1737
    :cond_79
    :goto_48
    invoke-virtual {v4}, Lo/cH$onTransact$extraCallback;->onMessageChannelReady()I

    move-result v3

    if-lez v3, :cond_7d

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v3

    iget-object v6, v1, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v6}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lo/setClickable;->onPostMessage(Ljava/lang/String;)Lo/cD$onNavigationEvent;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 1740
    invoke-virtual {v3}, Lo/cD$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v6

    if-nez v6, :cond_7a

    goto :goto_49

    .line 1748
    :cond_7a
    invoke-virtual {v3}, Lo/cD$onNavigationEvent;->onMessageChannelReady()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->asBinder(J)Lo/cH$onTransact$extraCallback;

    goto :goto_4a

    .line 1741
    :cond_7b
    :goto_49
    iget-object v3, v1, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    invoke-virtual {v3}, Lo/cH$onTransact;->RemoteActionCompatParcelizer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-wide/16 v6, -0x1

    .line 1742
    invoke-virtual {v4, v6, v7}, Lo/cH$onTransact$extraCallback;->asBinder(J)Lo/cH$onTransact$extraCallback;

    goto :goto_4a

    .line 1744
    :cond_7c
    iget-object v3, v5, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1745
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v1, Lo/setHint$ICustomTabsCallback;->onMessageChannelReady:Lo/cH$onTransact;

    .line 1746
    invoke-virtual {v7}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1747
    invoke-virtual {v3, v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1749
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v4}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v4

    check-cast v4, Lo/fa;

    check-cast v4, Lo/cH$onTransact;

    move/from16 v13, v18

    invoke-virtual {v3, v4, v13}, Lo/zzzv;->onMessageChannelReady(Lo/cH$onTransact;Z)Z

    .line 1750
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    iget-object v1, v1, Lo/setHint$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 1751
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    invoke-virtual {v3}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1753
    invoke-virtual {v3}, Lo/setHintTextColor;->read()V

    .line 1754
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1755
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7f

    if-eqz v6, :cond_7e

    const-string v7, ","

    .line 1757
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    :cond_7e
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_7f
    const-string v6, ")"

    .line 1760
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v3}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 1762
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1763
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_80

    .line 1764
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1765
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 1766
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1767
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1768
    invoke-virtual {v3, v6, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1769
    :cond_80
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    .line 1770
    invoke-virtual {v1}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    :try_start_2c
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 1771
    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2c} :catch_9
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    goto :goto_4c

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 1774
    :try_start_2d
    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1775
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 1776
    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1777
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->asBinder()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->asInterface()V

    const/4 v1, 0x1

    return v1

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_4e

    :cond_81
    move-object v5, v1

    .line 1780
    :try_start_2e
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->asBinder()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->asInterface()V

    const/4 v1, 0x0

    return v1

    :catchall_3
    move-exception v0

    move-object v5, v1

    goto/16 :goto_a

    :goto_4d
    if-eqz v6, :cond_82

    .line 1192
    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1193
    :cond_82
    throw v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_4e

    :catchall_5
    move-exception v0

    move-object v5, v1

    :goto_4e
    move-object v1, v0

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 1784
    throw v1
.end method

.method private final onNavigationEvent(Lo/setFabAnimationMode;)Ljava/lang/Boolean;
    .locals 8

    .line 2254
    :try_start_0
    invoke-virtual {p1}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 2256
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2257
    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2258
    invoke-virtual {p1}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 2259
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2262
    :cond_0
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2263
    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2264
    invoke-virtual {p1}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2265
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2269
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final onNavigationEvent(Lo/zzq;)Ljava/lang/String;
    .locals 2

    .line 874
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 876
    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p1}, Lo/zzq;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 878
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final onNavigationEvent(Ljava/lang/String;)Lo/setCounterTextAppearance;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 2808
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2809
    invoke-virtual {v1}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 2814
    :cond_0
    invoke-direct {v0, v1}, Lo/setHint;->onNavigationEvent(Lo/setFabAnimationMode;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2815
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2817
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2818
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 2819
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v4, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 2821
    :cond_1
    new-instance v31, Lo/setCounterTextAppearance;

    .line 2822
    invoke-virtual {v1}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 2823
    invoke-virtual {v1}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v5

    .line 2824
    invoke-virtual {v1}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v6

    .line 2825
    invoke-virtual {v1}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v8

    .line 2826
    invoke-virtual {v1}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v9

    .line 2827
    invoke-virtual {v1}, Lo/setFabAnimationMode;->extraCommand()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 2828
    invoke-virtual {v1}, Lo/setFabAnimationMode;->requestPostMessageChannel()Z

    move-result v14

    .line 2829
    invoke-virtual {v1}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v16

    .line 2830
    invoke-virtual {v1}, Lo/setFabAnimationMode;->setDefaultImpl()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 2831
    invoke-virtual {v1}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v22

    .line 2832
    invoke-virtual {v1}, Lo/setFabAnimationMode;->INotificationSideChannel$Default()Z

    move-result v23

    const/16 v24, 0x0

    .line 2833
    invoke-virtual {v1}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v25

    .line 2834
    invoke-virtual {v1}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy()Ljava/lang/Boolean;

    move-result-object v26

    .line 2835
    invoke-virtual {v1}, Lo/setFabAnimationMode;->updateVisuals()J

    move-result-wide v27

    .line 2836
    invoke-virtual {v1}, Lo/setFabAnimationMode;->IconCompatParcelizer()Ljava/util/List;

    move-result-object v29

    .line 2837
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 2838
    iget-object v3, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 2839
    sget-object v15, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v2, v15}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2840
    invoke-virtual {v1}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_0

    :cond_2
    const/16 v30, 0x0

    .line 2842
    :goto_0
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2843
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 2844
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2845
    invoke-virtual/range {p0 .. p1}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    move-object/from16 v32, v1

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    const/4 v14, 0x0

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v32

    .line 2846
    invoke-direct/range {v1 .. v30}, Lo/setCounterTextAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31

    .line 2811
    :cond_4
    :goto_2
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2812
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private final onNavigationEvent(Lo/setCounterTextAppearance;Lo/setFabAnimationMode;Ljava/lang/String;)Lo/setFabAnimationMode;
    .locals 8

    .line 2990
    sget-object v0, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    .line 2991
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2992
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 2993
    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2994
    iget-object v0, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2995
    invoke-virtual {p0, v0}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v0

    iget-object v1, p1, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    .line 2996
    invoke-static {v1}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/zzq;->onNavigationEvent(Lo/zzq;)Lo/zzq;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_4

    .line 2998
    new-instance p2, Lo/setFabAnimationMode;

    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    iget-object v3, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lo/setFabAnimationMode;-><init>(Lo/setCheckedIcon;Ljava/lang/String;)V

    .line 2999
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3000
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 3001
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3002
    invoke-virtual {v0}, Lo/zzq;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3003
    invoke-direct {p0, v0}, Lo/setHint;->onNavigationEvent(Lo/zzq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 3004
    :cond_1
    invoke-virtual {v0}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3005
    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 3006
    :cond_2
    invoke-direct {p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 3009
    :cond_4
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3010
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 3011
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3012
    invoke-virtual {v0}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3013
    :cond_5
    invoke-virtual {p2}, Lo/setFabAnimationMode;->asBinder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3014
    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    .line 3015
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3016
    iget-object p3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object p3

    .line 3017
    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {p3, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3018
    invoke-virtual {v0}, Lo/zzq;->extraCallback()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3019
    invoke-direct {p0, v0}, Lo/setHint;->onNavigationEvent(Lo/zzq;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 3020
    :cond_6
    invoke-direct {p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    .line 3022
    :goto_1
    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3023
    iget-object p3, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3025
    :cond_8
    iget-object v0, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {p2}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3026
    iget-object p3, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3028
    :cond_9
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3029
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 3030
    invoke-virtual {p2}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3031
    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-virtual {p2}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3032
    iget-object p3, p1, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3034
    :cond_a
    iget-object v0, p1, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    .line 3035
    invoke-virtual {p2}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3036
    iget-object p3, p1, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->asInterface(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3038
    :cond_b
    iget-wide v2, p1, Lo/setCounterTextAppearance;->extraCallback:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    iget-wide v2, p1, Lo/setCounterTextAppearance;->extraCallback:J

    invoke-virtual {p2}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_c

    .line 3039
    iget-wide v2, p1, Lo/setCounterTextAppearance;->extraCallback:J

    invoke-virtual {p2, v2, v3}, Lo/setFabAnimationMode;->extraCallback(J)V

    const/4 p3, 0x1

    .line 3041
    :cond_c
    iget-object v0, p1, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    .line 3042
    invoke-virtual {p2}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3043
    iget-object p3, p1, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3045
    :cond_d
    iget-wide v2, p1, Lo/setCounterTextAppearance;->asInterface:J

    invoke-virtual {p2}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_e

    .line 3046
    iget-wide v2, p1, Lo/setCounterTextAppearance;->asInterface:J

    invoke-virtual {p2, v2, v3}, Lo/setFabAnimationMode;->onNavigationEvent(J)V

    const/4 p3, 0x1

    .line 3048
    :cond_e
    iget-object v0, p1, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p2}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3049
    iget-object p3, p1, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onRelationshipValidationResult(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3051
    :cond_f
    iget-wide v2, p1, Lo/setCounterTextAppearance;->asBinder:J

    invoke-virtual {p2}, Lo/setFabAnimationMode;->extraCommand()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_10

    .line 3052
    iget-wide v2, p1, Lo/setCounterTextAppearance;->asBinder:J

    invoke-virtual {p2, v2, v3}, Lo/setFabAnimationMode;->ICustomTabsCallback(J)V

    const/4 p3, 0x1

    .line 3054
    :cond_10
    iget-boolean v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p2}, Lo/setFabAnimationMode;->requestPostMessageChannel()Z

    move-result v2

    if-eq v0, v2, :cond_11

    .line 3055
    iget-boolean p3, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onMessageChannelReady(Z)V

    const/4 p3, 0x1

    .line 3057
    :cond_11
    iget-object v0, p1, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    .line 3058
    invoke-virtual {p2}, Lo/setFabAnimationMode;->cancelAll()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3059
    iget-object p3, p1, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onTransact(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3062
    :cond_12
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 3063
    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3064
    iget-wide v2, p1, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    invoke-virtual {p2}, Lo/setFabAnimationMode;->setDefaultImpl()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_13

    .line 3065
    iget-wide v2, p1, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    invoke-virtual {p2, v2, v3}, Lo/setFabAnimationMode;->extraCommand(J)V

    const/4 p3, 0x1

    .line 3067
    :cond_13
    iget-boolean v0, p1, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    invoke-virtual {p2}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v2

    if-eq v0, v2, :cond_14

    .line 3068
    iget-boolean p3, p1, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->onNavigationEvent(Z)V

    const/4 p3, 0x1

    .line 3070
    :cond_14
    iget-boolean v0, p1, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    invoke-virtual {p2}, Lo/setFabAnimationMode;->INotificationSideChannel$Default()Z

    move-result v2

    if-eq v0, v2, :cond_15

    .line 3071
    iget-boolean p3, p1, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->extraCallback(Z)V

    const/4 p3, 0x1

    .line 3073
    :cond_15
    iget-object v0, p1, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v2, :cond_16

    .line 3074
    iget-object p3, p1, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    .line 3076
    :cond_16
    iget-wide v2, p1, Lo/setCounterTextAppearance;->updateVisuals:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    iget-wide v2, p1, Lo/setCounterTextAppearance;->updateVisuals:J

    .line 3077
    invoke-virtual {p2}, Lo/setFabAnimationMode;->updateVisuals()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    .line 3078
    iget-wide v2, p1, Lo/setCounterTextAppearance;->updateVisuals:J

    invoke-virtual {p2, v2, v3}, Lo/setFabAnimationMode;->asBinder(J)V

    goto :goto_2

    :cond_17
    move v1, p3

    :goto_2
    if-eqz v1, :cond_18

    .line 3081
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    :cond_18
    return-object p2
.end method

.method private final onNavigationEvent(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)V
    .locals 9

    .line 1840
    invoke-virtual {p1}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1841
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 1843
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    .line 1846
    :cond_0
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v2

    .line 1848
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1849
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    .line 1850
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1852
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_fr"

    invoke-virtual {p2, p1, v1, v0}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final onNavigationEvent(Lo/setHelperTextColor;)V
    .locals 3

    .line 45
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 48
    new-instance p1, Lo/zzzv;

    invoke-direct {p1, p0}, Lo/zzzv;-><init>(Lo/setHint;)V

    .line 50
    invoke-virtual {p1}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 51
    iput-object p1, p0, Lo/setHint;->ICustomTabsCallback:Lo/zzzv;

    .line 53
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lo/setHint;->onPostMessage:Lo/setClickable;

    invoke-virtual {p1, v0}, Lo/setStartIconTintList;->onPostMessage(Lo/zzwe;)V

    .line 56
    new-instance p1, Lo/FloatingActionButton$BaseBehavior;

    invoke-direct {p1, p0}, Lo/FloatingActionButton$BaseBehavior;-><init>(Lo/setHint;)V

    .line 58
    invoke-virtual {p1}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 59
    iput-object p1, p0, Lo/setHint;->asInterface:Lo/FloatingActionButton$BaseBehavior;

    .line 61
    new-instance p1, Lo/setErrorIconTintMode;

    invoke-direct {p1, p0}, Lo/setErrorIconTintMode;-><init>(Lo/setHint;)V

    .line 63
    invoke-virtual {p1}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 64
    iput-object p1, p0, Lo/setHint;->onRelationshipValidationResult:Lo/setErrorIconTintMode;

    .line 66
    new-instance p1, Lo/setEnsureMinTouchTargetSize;

    invoke-direct {p1, p0}, Lo/setEnsureMinTouchTargetSize;-><init>(Lo/setHint;)V

    .line 68
    invoke-virtual {p1}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 69
    iput-object p1, p0, Lo/setHint;->asBinder:Lo/setEnsureMinTouchTargetSize;

    .line 71
    new-instance p1, Lo/setBoxCornerRadii;

    invoke-direct {p1, p0}, Lo/setBoxCornerRadii;-><init>(Lo/setHint;)V

    .line 73
    invoke-virtual {p1}, Lo/setHintTextColor;->AudioAttributesCompatParcelizer()V

    .line 74
    iput-object p1, p0, Lo/setHint;->onTransact:Lo/setBoxCornerRadii;

    .line 76
    new-instance p1, Lo/setBackgroundTintMode;

    invoke-direct {p1, p0}, Lo/setBackgroundTintMode;-><init>(Lo/setHint;)V

    .line 77
    iput-object p1, p0, Lo/setHint;->onNavigationEvent:Lo/setBackgroundTintMode;

    .line 78
    iget p1, p0, Lo/setHint;->postMessage:I

    iget v0, p0, Lo/setHint;->updateVisuals:I

    if-eq p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    iget v0, p0, Lo/setHint;->postMessage:I

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lo/setHint;->updateVisuals:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 84
    invoke-virtual {p1, v2, v0, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lo/setHint;->warmup:Z

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setHint;Lo/setHelperTextColor;)V
    .locals 0

    .line 3181
    invoke-direct {p0, p1}, Lo/setHint;->onNavigationEvent(Lo/setHelperTextColor;)V

    return-void
.end method

.method private static onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;)V
    .locals 3

    .line 1854
    invoke-virtual {p0}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1855
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cH$onNavigationEvent;

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1858
    invoke-virtual {p0, v1}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final onPostMessage(Lo/setFabAnimationMode;)V
    .locals 10

    .line 1966
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 1967
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 1969
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    invoke-virtual {p1}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1973
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lo/setHint;->onNavigationEvent(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lo/setHint;->onNavigationEvent(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1980
    :cond_1
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 1981
    invoke-virtual {v0, p1}, Lo/setStartIconTintList;->ICustomTabsCallback(Lo/setFabAnimationMode;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1984
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1985
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1987
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v1

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/setClickable;->onPostMessage(Ljava/lang/String;)Lo/cD$onNavigationEvent;

    move-result-object v1

    const/4 v2, 0x0

    .line 1989
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v3

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lo/setClickable;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 1990
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1991
    new-instance v1, Lo/postOrRun;

    invoke-direct {v1}, Lo/postOrRun;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 1992
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    const/4 v1, 0x1

    .line 1993
    iput-boolean v1, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 1994
    invoke-virtual {p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object v2

    .line 1995
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/setDefaultHintTextColor;

    invoke-direct {v7, p0}, Lo/setDefaultHintTextColor;-><init>(Lo/setHint;)V

    .line 1997
    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1998
    invoke-virtual {v2}, Lo/setHintTextColor;->read()V

    .line 1999
    invoke-static {v4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    invoke-static {v7}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    invoke-virtual {v2}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v8

    new-instance v9, Lo/setBackgroundTint;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lo/setBackgroundTint;-><init>(Lo/setHideOnScroll;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lo/setFabCradleMargin;)V

    .line 2002
    invoke-virtual {v8, v9}, Lo/setShapeAppearanceModel;->extraCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2006
    :catch_0
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2007
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 2008
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 2009
    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final onPostMessage(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .line 2372
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2373
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2379
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2380
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 2382
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 2384
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object p1

    .line 2385
    sget-object v4, Lo/zziq;->onReceiveResult:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_1

    .line 2386
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2387
    :cond_1
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 2388
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2389
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 2391
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2392
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 2396
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 2397
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 2375
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2376
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v0
.end method

.method private final onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)Z
    .locals 4

    .line 1826
    invoke-virtual {p1}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1827
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 1829
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    .line 1830
    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1831
    :cond_0
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 1833
    :goto_0
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1834
    :cond_1
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 1835
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    invoke-direct {p0, p1, p2}, Lo/setHint;->onNavigationEvent(Lo/cH$ICustomTabsCallback$onNavigationEvent;Lo/cH$ICustomTabsCallback$onNavigationEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final onPostMessage(Lo/setCounterTextAppearance;)Z
    .locals 5

    .line 3173
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3174
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 3175
    iget-object v3, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v4, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3176
    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    .line 3177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    .line 3178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 3180
    :cond_2
    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private final validateRelationship()J
    .locals 8

    .line 182
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    .line 184
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 187
    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 188
    iget-object v3, v2, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub:Lo/setIconTint;

    invoke-virtual {v3}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 190
    invoke-virtual {v2}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v5

    invoke-virtual {v5}, Lo/setHelperTextEnabled;->asInterface()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 191
    iget-object v2, v2, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub:Lo/setIconTint;

    invoke-virtual {v2, v3, v4}, Lo/setIconTint;->ICustomTabsCallback(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 194
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setClickable;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/setHint;->onPostMessage:Lo/setClickable;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 106
    iget-object v0, p0, Lo/setHint;->onPostMessage:Lo/setClickable;

    return-object v0
.end method

.method final ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;
    .locals 6

    .line 3083
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 3084
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 3085
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    iget-object v0, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3087
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v1, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v0

    .line 3088
    sget-object v1, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    .line 3089
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3090
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 3091
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3092
    iget-object v1, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 3093
    invoke-virtual {p0, v1}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v1

    iget-object v2, p1, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    .line 3094
    invoke-static {v2}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/zzq;->onNavigationEvent(Lo/zzq;)Lo/zzq;

    move-result-object v1

    .line 3095
    :cond_0
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3096
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 3097
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3098
    invoke-virtual {v1}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 3100
    :cond_2
    :goto_0
    iget-object v2, p0, Lo/setHint;->asInterface:Lo/FloatingActionButton$BaseBehavior;

    .line 3101
    iget-object v3, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/FloatingActionButton$BaseBehavior;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3103
    :goto_1
    invoke-static {}, Lo/MediationInterstitialAdapter;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3104
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 3105
    sget-object v4, Lo/zziq;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v0, :cond_5

    .line 3107
    new-instance v0, Lo/setFabAnimationMode;

    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    iget-object v4, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lo/setFabAnimationMode;-><init>(Lo/setCheckedIcon;Ljava/lang/String;)V

    .line 3108
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3109
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 3110
    sget-object v4, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3111
    invoke-virtual {v1}, Lo/zzq;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3112
    invoke-direct {p0, v1}, Lo/setHint;->onNavigationEvent(Lo/zzq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 3113
    :cond_3
    invoke-virtual {v1}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3114
    invoke-virtual {v0, v2}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    goto :goto_2

    .line 3115
    :cond_4
    invoke-direct {p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {v0, v2}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    goto :goto_2

    .line 3117
    :cond_5
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3118
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 3119
    sget-object v4, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3120
    invoke-virtual {v1}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3121
    :cond_6
    invoke-virtual {v0}, Lo/setFabAnimationMode;->asBinder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3122
    invoke-virtual {v0, v2}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    .line 3123
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3124
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 3125
    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3126
    invoke-direct {p0, v1}, Lo/setHint;->onNavigationEvent(Lo/zzq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 3127
    :cond_7
    invoke-direct {p0}, Lo/setHint;->cancelAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 3128
    :cond_8
    :goto_2
    iget-object v1, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 3129
    iget-object v1, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3131
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 3132
    invoke-virtual {v0}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3133
    iget-object v1, p1, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 3134
    :cond_9
    iget-object v1, p1, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3135
    iget-object v1, p1, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->asInterface(Ljava/lang/String;)V

    .line 3136
    :cond_a
    iget-wide v1, p1, Lo/setCounterTextAppearance;->extraCallback:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 3137
    iget-wide v1, p1, Lo/setCounterTextAppearance;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Lo/setFabAnimationMode;->extraCallback(J)V

    .line 3138
    :cond_b
    iget-object v1, p1, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3139
    iget-object v1, p1, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 3140
    :cond_c
    iget-wide v1, p1, Lo/setCounterTextAppearance;->asInterface:J

    invoke-virtual {v0, v1, v2}, Lo/setFabAnimationMode;->onNavigationEvent(J)V

    .line 3141
    iget-object v1, p1, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3142
    iget-object v1, p1, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onRelationshipValidationResult(Ljava/lang/String;)V

    .line 3143
    :cond_d
    iget-wide v1, p1, Lo/setCounterTextAppearance;->asBinder:J

    invoke-virtual {v0, v1, v2}, Lo/setFabAnimationMode;->ICustomTabsCallback(J)V

    .line 3144
    iget-boolean v1, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onMessageChannelReady(Z)V

    .line 3145
    iget-object v1, p1, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 3146
    iget-object v1, p1, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onTransact(Ljava/lang/String;)V

    .line 3148
    :cond_e
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 3149
    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3150
    iget-wide v1, p1, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    invoke-virtual {v0, v1, v2}, Lo/setFabAnimationMode;->extraCommand(J)V

    .line 3151
    :cond_f
    iget-boolean v1, p1, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->onNavigationEvent(Z)V

    .line 3152
    iget-boolean v1, p1, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->extraCallback(Z)V

    .line 3153
    iget-object v1, p1, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/Boolean;)V

    .line 3154
    iget-wide v1, p1, Lo/setCounterTextAppearance;->updateVisuals:J

    invoke-virtual {v0, v1, v2}, Lo/setFabAnimationMode;->asBinder(J)V

    .line 3155
    invoke-virtual {v0}, Lo/setFabAnimationMode;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3156
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    :cond_10
    return-object v0

    .line 3158
    :cond_11
    invoke-direct {p0, p1, v0, v2}, Lo/setHint;->onNavigationEvent(Lo/setCounterTextAppearance;Lo/setFabAnimationMode;Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object p1

    return-object p1
.end method

.method final ICustomTabsCallback(Lo/setStartIconVisible;)V
    .locals 1

    .line 2848
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/setHint;->onNavigationEvent(Ljava/lang/String;)Lo/setCounterTextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2850
    invoke-virtual {p0, p1, v0}, Lo/setHint;->ICustomTabsCallback(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V

    :cond_0
    return-void
.end method

.method final ICustomTabsCallback(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V
    .locals 10

    .line 2852
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2854
    iget-object v0, p1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v0, v0, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2857
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2858
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2859
    invoke-direct {p0, p2}, Lo/setHint;->onPostMessage(Lo/setCounterTextAppearance;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2861
    :cond_0
    iget-boolean v0, p2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 2862
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 2864
    :cond_1
    new-instance v0, Lo/setStartIconVisible;

    invoke-direct {v0, p1}, Lo/setStartIconVisible;-><init>(Lo/setStartIconVisible;)V

    const/4 p1, 0x0

    .line 2865
    iput-boolean p1, v0, Lo/setStartIconVisible;->onPostMessage:Z

    .line 2866
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->onPostMessage()V

    .line 2869
    :try_start_0
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    iget-object v2, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/setStartIconVisible;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2870
    iget-object v2, v1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2872
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 2873
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 2874
    iget-object v4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    .line 2875
    iget-object v5, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v5, v5, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iget-object v6, v1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    .line 2876
    invoke-virtual {v2, v3, v4, v5, v6}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2877
    iget-boolean v3, v1, Lo/setStartIconVisible;->onPostMessage:Z

    if-eqz v3, :cond_3

    .line 2878
    iget-object v2, v1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iput-object v2, v0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    .line 2879
    iget-wide v2, v1, Lo/setStartIconVisible;->extraCallback:J

    iput-wide v2, v0, Lo/setStartIconVisible;->extraCallback:J

    .line 2880
    iget-wide v2, v1, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    iput-wide v2, v0, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    .line 2881
    iget-object v2, v1, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    iput-object v2, v0, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    .line 2882
    iget-object v2, v1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iput-object v2, v0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    .line 2883
    iget-boolean v2, v1, Lo/setStartIconVisible;->onPostMessage:Z

    iput-boolean v2, v0, Lo/setStartIconVisible;->onPostMessage:Z

    .line 2884
    new-instance v2, Lo/setError;

    iget-object v3, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v4, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-wide v5, v3, Lo/setError;->extraCallback:J

    iget-object v3, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2885
    invoke-virtual {v3}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v8, v1, Lo/setError;->ICustomTabsCallback:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    goto :goto_0

    .line 2886
    :cond_3
    iget-object v1, v0, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2887
    new-instance p1, Lo/setError;

    iget-object v1, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v4, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-wide v5, v0, Lo/setStartIconVisible;->extraCallback:J

    iget-object v1, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2888
    invoke-virtual {v1}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v8, v1, Lo/setError;->ICustomTabsCallback:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2889
    iput-boolean v2, v0, Lo/setStartIconVisible;->onPostMessage:Z

    const/4 p1, 0x1

    .line 2891
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lo/setStartIconVisible;->onPostMessage:Z

    if-eqz v1, :cond_6

    .line 2892
    iget-object v1, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2893
    new-instance v9, Lo/setErrorIconDrawable;

    iget-object v3, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, v0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-wide v6, v1, Lo/setError;->extraCallback:J

    .line 2894
    invoke-virtual {v1}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2895
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1, v9}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2898
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2899
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2900
    iget-object v4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    .line 2901
    iget-object v5, v9, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 2902
    invoke-virtual {v1, v2, v3, v4, v5}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2904
    :cond_5
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2905
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2906
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2907
    iget-object v4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    .line 2908
    iget-object v5, v9, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 2909
    invoke-virtual {v1, v2, v3, v4, v5}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 2910
    iget-object p1, v0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    if-eqz p1, :cond_6

    .line 2911
    new-instance p1, Lo/zzir;

    iget-object v1, v0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iget-wide v2, v0, Lo/setStartIconVisible;->extraCallback:J

    invoke-direct {p1, v1, v2, v3}, Lo/zzir;-><init>(Lo/zzir;J)V

    .line 2912
    invoke-direct {p0, p1, p2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 2913
    :cond_6
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/zzzv;->extraCallback(Lo/setStartIconVisible;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2916
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2917
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2918
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    .line 2919
    iget-object v3, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2920
    invoke-virtual {v0}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    .line 2921
    invoke-virtual {p1, p2, v1, v2, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2923
    :cond_7
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2924
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2925
    invoke-static {v1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2926
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    .line 2927
    iget-object v3, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 2928
    invoke-virtual {v0}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    .line 2929
    invoke-virtual {p1, p2, v1, v2, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2930
    :goto_2
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asBinder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2931
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception p1

    .line 2933
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 2934
    throw p1
.end method

.method final ICustomTabsCallback(Lo/zzir;Ljava/lang/String;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 195
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2, v3}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {v2}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 201
    :cond_0
    invoke-direct {v0, v2}, Lo/setHint;->onNavigationEvent(Lo/setFabAnimationMode;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 203
    iget-object v4, v1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 205
    iget-object v4, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 211
    invoke-static/range {p2 .. p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 212
    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 214
    :cond_2
    :goto_0
    new-instance v15, Lo/setCounterTextAppearance;

    .line 215
    invoke-virtual {v2}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v2}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v2}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v6

    .line 218
    invoke-virtual {v2}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v2}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v9

    .line 220
    invoke-virtual {v2}, Lo/setFabAnimationMode;->extraCommand()J

    move-result-wide v11

    .line 221
    invoke-virtual {v2}, Lo/setFabAnimationMode;->requestPostMessageChannel()Z

    move-result v14

    const/16 v16, 0x0

    .line 222
    invoke-virtual {v2}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v17

    .line 223
    invoke-virtual {v2}, Lo/setFabAnimationMode;->setDefaultImpl()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 224
    invoke-virtual {v2}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v23

    .line 225
    invoke-virtual {v2}, Lo/setFabAnimationMode;->INotificationSideChannel$Default()Z

    move-result v24

    const/16 v25, 0x0

    .line 226
    invoke-virtual {v2}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v26

    .line 227
    invoke-virtual {v2}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy()Ljava/lang/Boolean;

    move-result-object v27

    .line 228
    invoke-virtual {v2}, Lo/setFabAnimationMode;->updateVisuals()J

    move-result-wide v28

    .line 229
    invoke-virtual {v2}, Lo/setFabAnimationMode;->IconCompatParcelizer()Ljava/util/List;

    move-result-object v30

    .line 230
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 231
    iget-object v13, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v13}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v13

    .line 232
    invoke-virtual {v2}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    move/from16 v32, v14

    sget-object v14, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v13, v1, v14}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {v2}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move/from16 v32, v14

    :cond_4
    const/4 v1, 0x0

    .line 235
    :goto_1
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    iget-object v2, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v2

    .line 237
    sget-object v13, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v13}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    invoke-virtual {v0, v3}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    move-object/from16 v33, v2

    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move/from16 v14, v32

    move-object/from16 v34, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v1

    move-object/from16 v31, v33

    .line 239
    invoke-direct/range {v2 .. v31}, Lo/setCounterTextAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    .line 240
    invoke-direct {v0, v1, v2}, Lo/setHint;->extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    return-void

    .line 198
    :cond_6
    :goto_3
    iget-object v1, v0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/setErrorTextColor;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub:Lo/setErrorTextColor;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 121
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub:Lo/setErrorTextColor;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsService()V
    .locals 17

    move-object/from16 v1, p0

    .line 885
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    const/4 v0, 0x1

    .line 887
    iput-boolean v0, v1, Lo/setHint;->extraCommand:Z

    const/4 v2, 0x0

    .line 888
    :try_start_0
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v3

    invoke-virtual {v3}, Lo/setChipSpacingResource;->cancel()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 891
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 893
    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 895
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 902
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    .line 904
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lo/setHint;->newSession:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 905
    invoke-direct/range {p0 .. p0}, Lo/setHint;->INotificationSideChannel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 907
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    .line 910
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 911
    iget-object v3, v1, Lo/setHint;->validateRelationship:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 914
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 916
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 917
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    .line 919
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object v3

    invoke-virtual {v3}, Lo/setHideOnScroll;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_5

    .line 921
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lo/setHint;->INotificationSideChannel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 924
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 925
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    .line 928
    :cond_5
    :try_start_5
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    .line 929
    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    .line 931
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 932
    sget-object v8, Lo/zziq;->connect:Lo/setStatusBarForegroundColor;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v7

    .line 933
    invoke-static {}, Lo/setStartIconTintList;->ICustomTabsCallback$Stub()J

    move-result-wide v10

    sub-long v10, v3, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    .line 935
    invoke-direct {v1, v9, v10, v11}, Lo/setHint;->onMessageChannelReady(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 938
    :cond_6
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v7

    .line 939
    iget-object v7, v7, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    invoke-virtual {v7}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_7

    .line 942
    iget-object v5, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 943
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 944
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 945
    invoke-virtual {v5, v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5}, Lo/zzzv;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v5

    .line 947
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_1d

    .line 948
    iget-wide v10, v1, Lo/setHint;->ICustomTabsService$Stub:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    .line 949
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v6

    invoke-virtual {v6}, Lo/zzzv;->IPostMessageService$Stub$Proxy()J

    move-result-wide v6

    iput-wide v6, v1, Lo/setHint;->ICustomTabsService$Stub:J

    .line 951
    :cond_8
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v6

    .line 953
    sget-object v7, Lo/zziq;->onRelationshipValidationResult:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v5, v7}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v6

    .line 956
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 958
    sget-object v8, Lo/zziq;->asBinder:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v5, v8}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 961
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 962
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 963
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 964
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 965
    sget-object v8, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v8}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 966
    invoke-virtual {v1, v5}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 968
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 969
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lo/cH$onTransact;

    .line 970
    invoke-virtual {v8}, Lo/cH$onTransact;->INotificationSideChannel$Stub()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 971
    invoke-virtual {v8}, Lo/cH$onTransact;->INotificationSideChannel$Stub()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_b
    move-object v7, v9

    :goto_2
    if-eqz v7, :cond_d

    const/4 v8, 0x0

    .line 975
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 976
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lo/cH$onTransact;

    .line 977
    invoke-virtual {v10}, Lo/cH$onTransact;->INotificationSideChannel$Stub()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 978
    invoke-virtual {v10}, Lo/cH$onTransact;->INotificationSideChannel$Stub()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 979
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 982
    :cond_d
    :goto_4
    invoke-static {}, Lo/cH$onRelationshipValidationResult;->extraCallback()Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    move-result-object v7

    .line 983
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 984
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 987
    invoke-virtual {v11, v5}, Lo/setStartIconTintList;->ICustomTabsCallback$Stub(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 988
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 989
    iget-object v11, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v11}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v11

    .line 990
    sget-object v12, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v11, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 991
    invoke-virtual {v1, v5}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v11

    invoke-virtual {v11}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    .line 992
    :goto_5
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 993
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v12

    .line 994
    sget-object v13, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v12, v13}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 995
    invoke-virtual {v1, v5}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v12

    invoke-virtual {v12}, Lo/zzq;->ICustomTabsCallback()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v12, 0x1

    .line 996
    :goto_7
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 997
    iget-object v13, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v13}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v13

    .line 998
    sget-object v14, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v13, v14}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 999
    invoke-virtual {v1, v5}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v13

    invoke-virtual {v13}, Lo/zzq;->extraCallback()Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    const/4 v13, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v13, 0x1

    :goto_9
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v8, :cond_18

    .line 1001
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lo/cH$onTransact;

    .line 1002
    invoke-virtual {v15}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v15

    .line 1003
    check-cast v15, Lo/fa$onNavigationEvent;

    check-cast v15, Lo/cH$onTransact$extraCallback;

    .line 1004
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    const-wide/16 v9, 0x7949

    .line 1006
    invoke-virtual {v15, v9, v10}, Lo/cH$onTransact$extraCallback;->onTransact(J)Lo/cH$onTransact$extraCallback;

    move-result-object v9

    .line 1007
    invoke-virtual {v9, v3, v4}, Lo/cH$onTransact$extraCallback;->onNavigationEvent(J)Lo/cH$onTransact$extraCallback;

    move-result-object v9

    .line 1009
    invoke-virtual {v9, v2}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback(Z)Lo/cH$onTransact$extraCallback;

    if-nez v11, :cond_14

    .line 1011
    invoke-virtual {v15}, Lo/cH$onTransact$extraCallback;->requestPostMessageChannel()Lo/cH$onTransact$extraCallback;

    .line 1012
    :cond_14
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1013
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v9

    .line 1014
    sget-object v10, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v9, v10}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v12, :cond_15

    .line 1016
    invoke-virtual {v15}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy()Lo/cH$onTransact$extraCallback;

    .line 1017
    invoke-virtual {v15}, Lo/cH$onTransact$extraCallback;->warmup()Lo/cH$onTransact$extraCallback;

    :cond_15
    if-nez v13, :cond_16

    .line 1019
    invoke-virtual {v15}, Lo/cH$onTransact$extraCallback;->ICustomTabsService()Lo/cH$onTransact$extraCallback;

    .line 1021
    :cond_16
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v9

    .line 1022
    sget-object v10, Lo/zziq;->getRoot:Lo/setStatusBarForegroundColor;

    invoke-virtual {v9, v5, v10}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1023
    invoke-virtual {v15}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$onTransact;

    invoke-virtual {v9}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v9

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v10

    invoke-virtual {v10, v9}, Lo/setErrorTextColor;->onNavigationEvent([B)J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Lo/cH$onTransact$extraCallback;->ICustomTabsService(J)Lo/cH$onTransact$extraCallback;

    .line 1025
    :cond_17
    invoke-virtual {v7, v15}, Lo/cH$onRelationshipValidationResult$onNavigationEvent;->onMessageChannelReady(Lo/cH$onTransact$extraCallback;)Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v16, v10

    .line 1029
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    const/4 v9, 0x2

    .line 1030
    invoke-virtual {v6, v9}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v6

    invoke-virtual {v7}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$onRelationshipValidationResult;

    invoke-virtual {v6, v9}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onRelationshipValidationResult;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    .line 1032
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-virtual {v7}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v9

    check-cast v9, Lo/fa;

    check-cast v9, Lo/cH$onRelationshipValidationResult;

    .line 1033
    invoke-virtual {v9}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v14

    .line 1035
    sget-object v9, Lo/zziq;->mayLaunchUrl:Lo/setStatusBarForegroundColor;

    const/4 v0, 0x0

    .line 1036
    invoke-virtual {v9, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1039
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1041
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a

    const/4 v9, 0x1

    goto :goto_c

    :cond_1a
    const/4 v9, 0x0

    :goto_c
    invoke-static {v9}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 1042
    iget-object v9, v1, Lo/setHint;->validateRelationship:Ljava/util/List;

    if-eqz v9, :cond_1b

    .line 1044
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    .line 1045
    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v9

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v9, v10}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_d

    .line 1046
    :cond_1b
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v10, v16

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v1, Lo/setHint;->validateRelationship:Ljava/util/List;

    .line 1048
    :goto_d
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v9

    .line 1049
    iget-object v9, v9, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    invoke-virtual {v9, v3, v4}, Lo/setIconTint;->ICustomTabsCallback(J)V

    const-string v3, "?"

    if-lez v8, :cond_1c

    .line 1052
    invoke-virtual {v7, v2}, Lo/cH$onRelationshipValidationResult$onNavigationEvent;->onMessageChannelReady(I)Lo/cH$onTransact;

    move-result-object v3

    invoke-virtual {v3}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    .line 1054
    :cond_1c
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 1055
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 1056
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 1057
    iput-boolean v3, v1, Lo/setHint;->mayLaunchUrl:Z

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object v11

    new-instance v3, Lo/setErrorTextAppearance;

    invoke-direct {v3, v1, v5}, Lo/setErrorTextAppearance;-><init>(Lo/setHint;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v11}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1061
    invoke-virtual {v11}, Lo/setHintTextColor;->read()V

    .line 1062
    invoke-static {v13}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-static {v14}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {v11}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v4

    new-instance v6, Lo/setBackgroundTint;

    const/4 v15, 0x0

    move-object v10, v6

    move-object v12, v5

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lo/setBackgroundTint;-><init>(Lo/setHideOnScroll;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lo/setFabCradleMargin;)V

    .line 1066
    invoke-virtual {v4, v6}, Lo/setShapeAppearanceModel;->extraCallback(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    .line 1070
    :catch_0
    :try_start_7
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1071
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Failed to parse upload URL. Not uploading. appId"

    .line 1072
    invoke-static {v5}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1073
    invoke-virtual {v3, v4, v5, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 1075
    :cond_1d
    iput-wide v7, v1, Lo/setHint;->ICustomTabsService$Stub:J

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    .line 1078
    invoke-static {}, Lo/setStartIconTintList;->ICustomTabsCallback$Stub()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lo/zzzv;->onPostMessage(J)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1082
    invoke-direct {v1, v0}, Lo/setHint;->onPostMessage(Lo/setFabAnimationMode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1083
    :cond_1e
    :goto_e
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 1084
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    return-void

    :catchall_0
    move-exception v0

    .line 1086
    iput-boolean v2, v1, Lo/setHint;->extraCommand:Z

    .line 1087
    invoke-direct/range {p0 .. p0}, Lo/setHint;->cancel()V

    .line 1088
    throw v0
.end method

.method final IPostMessageService()Lo/setCheckedIcon;
    .locals 1

    .line 2568
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    return-object v0
.end method

.method public final asBinder()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/setHint;->asInterface:Lo/FloatingActionButton$BaseBehavior;

    return-object v0
.end method

.method public final asInterface()Lo/setEnsureMinTouchTargetSize;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/setHint;->asBinder:Lo/setEnsureMinTouchTargetSize;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 119
    iget-object v0, p0, Lo/setHint;->asBinder:Lo/setEnsureMinTouchTargetSize;

    return-object v0
.end method

.method protected final extraCallback()V
    .locals 5

    .line 88
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 90
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->ICustomTabsService$Stub$Proxy()V

    .line 92
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 95
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    .line 96
    iget-object v0, v0, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    .line 97
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    return-void
.end method

.method final extraCallback(Ljava/lang/String;Lo/zzq;)V
    .locals 5

    .line 139
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 141
    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 143
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 144
    iget-object v0, p0, Lo/setHint;->notify:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    .line 146
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 150
    invoke-virtual {v0}, Lo/setHintTextColor;->read()V

    .line 151
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 152
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-virtual {v0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 156
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 158
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 159
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 160
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-virtual {p2, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    .line 164
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 166
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    invoke-virtual {v0, v1, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final extraCallback(Lo/setCounterTextAppearance;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    .line 2569
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2571
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    iget-object v7, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v7}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2573
    invoke-direct/range {p0 .. p1}, Lo/setHint;->onPostMessage(Lo/setCounterTextAppearance;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 2575
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v8, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    .line 2577
    invoke-virtual {v7}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    .line 2578
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2579
    invoke-virtual {v7, v8, v9}, Lo/setFabAnimationMode;->onRelationshipValidationResult(J)V

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v10

    invoke-virtual {v10, v7}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    .line 2581
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v7

    iget-object v10, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lo/setClickable;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2582
    :cond_1
    iget-boolean v7, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v7, :cond_2

    .line 2583
    invoke-virtual/range {p0 .. p1}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 2585
    :cond_2
    iget-wide v10, v2, Lo/setCounterTextAppearance;->newSession:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    .line 2588
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v7

    .line 2589
    invoke-interface {v7}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v10

    .line 2591
    :cond_3
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->validateRelationship()Lo/zzfw;

    move-result-object v7

    .line 2592
    invoke-virtual {v7}, Lo/zzfw;->onRelationshipValidationResult()V

    .line 2593
    iget v7, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v15, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v15, :cond_4

    .line 2596
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    .line 2597
    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v12

    iget-object v13, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2598
    invoke-static {v13}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 2599
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 2600
    invoke-virtual {v12, v14, v13, v7}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 2602
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v12

    invoke-virtual {v12}, Lo/zzzv;->onPostMessage()V

    .line 2604
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v12

    iget-object v13, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v14, "_npa"

    .line 2605
    invoke-virtual {v12, v13, v14}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v12, "auto"

    .line 2606
    iget-object v13, v14, Lo/setErrorIconDrawable;->onPostMessage:Ljava/lang/String;

    .line 2607
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v18, v3

    const/4 v3, 0x1

    goto :goto_2

    .line 2608
    :cond_6
    :goto_0
    iget-object v12, v2, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    .line 2609
    new-instance v13, Lo/setError;

    const-string v18, "_npa"

    .line 2610
    iget-object v12, v2, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const-wide/16 v19, 0x1

    goto :goto_1

    :cond_7
    move-wide/from16 v19, v8

    :goto_1
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const-wide/16 v8, 0x1

    move-object v12, v13

    move-object v8, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v3

    move-object v9, v14

    const/4 v3, 0x1

    move-wide v14, v10

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v12 .. v17}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    .line 2611
    iget-object v9, v9, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    iget-object v12, v8, Lo/setError;->onPostMessage:Ljava/lang/Long;

    .line 2612
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2613
    :cond_8
    invoke-virtual {v1, v8, v2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    goto :goto_2

    :cond_9
    move-object/from16 v18, v3

    move-object v9, v14

    const/4 v3, 0x1

    if-eqz v9, :cond_a

    .line 2615
    new-instance v8, Lo/setError;

    const-string v13, "_npa"

    const/16 v16, 0x0

    const-string v17, "auto"

    move-object v12, v8

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v1, v8, v2}, Lo/setHint;->onMessageChannelReady(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 2618
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v8

    iget-object v9, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 2620
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 2621
    iget-object v12, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    .line 2622
    invoke-virtual {v8}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    .line 2623
    invoke-virtual {v8}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v15

    .line 2624
    invoke-static {v12, v13, v14, v15}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2626
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    .line 2627
    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    .line 2628
    invoke-virtual {v8}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 2629
    invoke-virtual {v12, v13, v14}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2630
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v12

    invoke-virtual {v8}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    .line 2631
    invoke-virtual {v12}, Lo/setHintTextColor;->read()V

    .line 2632
    invoke-virtual {v12}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 2633
    invoke-static {v8}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2634
    :try_start_1
    invoke-virtual {v12}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const-string v9, "events"

    .line 2636
    invoke-virtual {v13, v9, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v15

    const-string v15, "user_attributes"

    .line 2637
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "conditional_properties"

    .line 2638
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "apps"

    .line 2639
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "raw_events"

    .line 2640
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "raw_events_metadata"

    .line 2641
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "event_filters"

    .line 2642
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "property_filters"

    .line 2643
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "audience_filter_values"

    .line 2644
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "consent_settings"

    .line 2645
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v9, v0

    if-lez v9, :cond_b

    .line 2647
    invoke-virtual {v12}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v13, "Deleted application data. app, records"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v13, v8, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2650
    :try_start_2
    invoke-virtual {v12}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    .line 2651
    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    .line 2652
    invoke-static {v8}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :cond_c
    if-eqz v8, :cond_10

    .line 2656
    invoke-virtual {v8}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v12

    const-wide/32 v14, -0x80000000

    cmp-long v0, v12, v14

    if-eqz v0, :cond_d

    .line 2657
    invoke-virtual {v8}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v12

    move-object v9, v4

    iget-wide v3, v2, Lo/setCounterTextAppearance;->asInterface:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    move-object v9, v4

    :cond_e
    const/4 v0, 0x0

    .line 2659
    :goto_4
    invoke-virtual {v8}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v3

    cmp-long v12, v3, v14

    if-nez v12, :cond_f

    .line 2660
    invoke-virtual {v8}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2661
    invoke-virtual {v8}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v14, 0x1

    goto :goto_5

    :cond_f
    const/4 v14, 0x0

    :goto_5
    or-int/2addr v0, v14

    if-eqz v0, :cond_11

    .line 2663
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    .line 2664
    invoke-virtual {v8}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    new-instance v3, Lo/zzir;

    const-string v13, "_au"

    new-instance v14, Lo/zzfa$zza;

    invoke-direct {v14, v0}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 2666
    invoke-virtual {v1, v3, v2}, Lo/setHint;->onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_6

    :cond_10
    move-object v9, v4

    .line 2667
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    if-nez v7, :cond_12

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "_f"

    .line 2672
    invoke-virtual {v0, v3, v4}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v0

    goto :goto_7

    :cond_12
    const/4 v3, 0x1

    if-ne v7, v3, :cond_13

    .line 2675
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "_v"

    .line 2676
    invoke-virtual {v0, v3, v4}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_25

    const-wide/32 v3, 0x36ee80

    .line 2678
    div-long v12, v10, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    mul-long v12, v12, v3

    const-string v0, "_dac"

    const-string v3, "_r"

    const-string v4, "_c"

    const-string v8, "_et"

    if-nez v7, :cond_20

    .line 2680
    :try_start_3
    new-instance v7, Lo/setError;

    const-string v14, "_fot"

    .line 2681
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-object v13, v14

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v1, v7, v2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 2684
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v7

    .line 2685
    iget-object v12, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v13, Lo/zziq;->MediaBrowserCompat:Lo/setStatusBarForegroundColor;

    .line 2686
    invoke-virtual {v7, v12, v13}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2688
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2689
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    .line 2690
    invoke-virtual {v7}, Lo/setCheckedIcon;->onMessageChannelReady()Lo/setIconTintResource;

    move-result-object v7

    iget-object v12, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2691
    invoke-virtual {v7, v12}, Lo/setIconTintResource;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2693
    :cond_14
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2695
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 2696
    invoke-virtual {v7, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2697
    invoke-virtual {v7, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v3, 0x0

    .line 2698
    invoke-virtual {v7, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2699
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2700
    invoke-virtual {v7, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v14, v18

    .line 2701
    invoke-virtual {v7, v14, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2703
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 2704
    iget-object v4, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v12, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4, v12}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/16 v3, 0x1

    .line 2705
    invoke-virtual {v7, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_15
    const-wide/16 v3, 0x1

    .line 2706
    :goto_8
    iget-boolean v12, v2, Lo/setCounterTextAppearance;->extraCommand:Z

    if-eqz v12, :cond_16

    .line 2707
    invoke-virtual {v7, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2708
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2709
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2710
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 2711
    invoke-virtual {v0}, Lo/setHintTextColor;->read()V

    const-string v4, "first_open_count"

    .line 2712
    invoke-virtual {v0, v3, v4}, Lo/zzzv;->ICustomTabsCallback$Stub(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 2715
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2716
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_18

    .line 2719
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2720
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v6, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2721
    invoke-static {v9}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2722
    invoke-virtual {v0, v6, v9}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_17
    :goto_9
    const-wide/16 v12, 0x0

    goto/16 :goto_10

    .line 2725
    :cond_18
    :try_start_4
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2726
    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    iget-object v12, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 2730
    :try_start_5
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    .line 2731
    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v12

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    iget-object v15, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2732
    invoke-static {v15}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2733
    invoke-virtual {v12, v13, v15, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1d

    .line 2735
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-eqz v17, :cond_1d

    .line 2737
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v18, v14

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_1b

    .line 2739
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 2740
    sget-object v12, Lo/zziq;->MediaBrowserCompat$CustomActionCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v12}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-nez v0, :cond_1a

    const-wide/16 v12, 0x1

    .line 2742
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :cond_19
    const-wide/16 v12, 0x1

    .line 2743
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1a
    :goto_b
    const/4 v14, 0x0

    goto :goto_c

    :cond_1b
    const/4 v14, 0x1

    .line 2745
    :goto_c
    new-instance v0, Lo/setError;

    const-string v13, "_fi"

    if-eqz v14, :cond_1c

    const-wide/16 v14, 0x1

    goto :goto_d

    :cond_1c
    const-wide/16 v14, 0x0

    .line 2746
    :goto_d
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    move-object/from16 v6, v18

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v1, v0, v2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_e

    :cond_1d
    move-object v6, v14

    .line 2750
    :goto_e
    :try_start_6
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 2751
    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    iget-object v12, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lo/component28;->onPostMessage(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    :catch_2
    move-exception v0

    .line 2755
    :try_start_7
    iget-object v12, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v12}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    .line 2756
    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v12

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    iget-object v14, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2757
    invoke-static {v14}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 2758
    invoke-virtual {v12, v13, v14, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_17

    .line 2760
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_1e

    const-wide/16 v12, 0x1

    .line 2761
    invoke-virtual {v7, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2762
    :cond_1e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_17

    const-wide/16 v12, 0x1

    .line 2763
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :goto_10
    cmp-long v0, v3, v12

    if-ltz v0, :cond_1f

    .line 2765
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2766
    :cond_1f
    new-instance v0, Lo/zzir;

    const-string v13, "_f"

    new-instance v14, Lo/zzfa$zza;

    invoke-direct {v14, v7}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 2767
    invoke-direct {v1, v0, v2}, Lo/setHint;->extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_12

    :cond_20
    const/4 v5, 0x1

    if-ne v7, v5, :cond_23

    .line 2769
    new-instance v5, Lo/setError;

    const-string v6, "_fvt"

    .line 2770
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v1, v5, v2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 2773
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2775
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 2776
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2777
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2779
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 2780
    iget-object v4, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v6, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4, v6}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-wide/16 v3, 0x1

    .line 2781
    invoke-virtual {v5, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :cond_21
    const-wide/16 v3, 0x1

    .line 2782
    :goto_11
    iget-boolean v6, v2, Lo/setCounterTextAppearance;->extraCommand:Z

    if-eqz v6, :cond_22

    .line 2783
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2784
    :cond_22
    new-instance v0, Lo/zzir;

    const-string v13, "_v"

    new-instance v14, Lo/zzfa$zza;

    invoke-direct {v14, v5}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 2785
    invoke-direct {v1, v0, v2}, Lo/setHint;->extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 2787
    :cond_23
    :goto_12
    iget-object v0, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 2788
    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v4, Lo/zziq;->getExtras:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 2791
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2793
    iget-object v3, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v3

    .line 2794
    iget-object v4, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v5, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4, v5}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    .line 2795
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2796
    :cond_24
    new-instance v3, Lo/zzir;

    const-string v13, "_e"

    new-instance v14, Lo/zzfa$zza;

    invoke-direct {v14, v0}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 2797
    invoke-direct {v1, v3, v2}, Lo/setHint;->extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_13

    .line 2798
    :cond_25
    iget-boolean v0, v2, Lo/setCounterTextAppearance;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_26

    .line 2800
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2801
    new-instance v3, Lo/zzir;

    const-string v13, "_cd"

    new-instance v14, Lo/zzfa$zza;

    invoke-direct {v14, v0}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 2802
    invoke-direct {v1, v3, v2}, Lo/setHint;->extraCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 2803
    :cond_26
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->asBinder()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2804
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception v0

    .line 2806
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 2807
    throw v0
.end method

.method final extraCommand()V
    .locals 1

    .line 2566
    iget v0, p0, Lo/setHint;->updateVisuals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/setHint;->updateVisuals:I

    return-void
.end method

.method final getInterfaceDescriptor()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lo/setHint;->warmup:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setHideOnScroll;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/setHint;->onMessageChannelReady:Lo/setHideOnScroll;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 108
    iget-object v0, p0, Lo/setHint;->onMessageChannelReady:Lo/setHideOnScroll;

    return-object v0
.end method

.method final onMessageChannelReady(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8

    .line 1877
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 1878
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    .line 1881
    :cond_0
    iget-object v0, p0, Lo/setHint;->validateRelationship:Ljava/util/List;

    const/4 v1, 0x0

    .line 1882
    iput-object v1, p0, Lo/setHint;->validateRelationship:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 1885
    :try_start_1
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p2

    .line 1886
    iget-object p2, p2, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    .line 1887
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    .line 1888
    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 1890
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p2

    .line 1891
    iget-object p2, p2, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 1892
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    .line 1894
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 1895
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    .line 1896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1897
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->onPostMessage()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1898
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1899
    :try_start_3
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1900
    invoke-virtual {p3}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1901
    invoke-virtual {p3}, Lo/setHintTextColor;->read()V

    .line 1902
    invoke-virtual {p3}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    .line 1903
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 1904
    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1906
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 1909
    :try_start_5
    invoke-virtual {p3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1910
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 1912
    :try_start_6
    iget-object v0, p0, Lo/setHint;->IPostMessageService$Stub:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/setHint;->IPostMessageService$Stub:Ljava/util/List;

    .line 1913
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1914
    :cond_3
    throw p3

    .line 1915
    :cond_4
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asBinder()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1916
    :try_start_7
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V

    .line 1920
    iput-object v1, p0, Lo/setHint;->IPostMessageService$Stub:Ljava/util/List;

    .line 1921
    invoke-virtual {p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object p1

    invoke-virtual {p1}, Lo/setHideOnScroll;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lo/setHint;->IPostMessageService$Stub$Proxy()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1922
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsService()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 1923
    iput-wide p1, p0, Lo/setHint;->ICustomTabsService$Stub:J

    .line 1924
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    .line 1925
    :goto_1
    iput-wide v4, p0, Lo/setHint;->newSession:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 1918
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 1919
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 1929
    :try_start_8
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 1930
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1932
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p1

    .line 1933
    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide p1

    iput-wide p1, p0, Lo/setHint;->newSession:J

    .line 1935
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 1936
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lo/setHint;->newSession:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1939
    :cond_6
    iget-object p3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 1940
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 1941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1943
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p2

    .line 1944
    iget-object p2, p2, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    .line 1945
    iget-object p3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p3

    .line 1946
    invoke-interface {p3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 1950
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    .line 1951
    iget-object p1, p1, Lo/setBackgroundTintList;->onPostMessage:Lo/setIconTint;

    .line 1952
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p2

    .line 1953
    invoke-interface {p2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 1954
    :cond_9
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/zzzv;->ICustomTabsCallback(Ljava/util/List;)V

    .line 1955
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1956
    :goto_3
    iput-boolean p4, p0, Lo/setHint;->mayLaunchUrl:Z

    .line 1957
    invoke-direct {p0}, Lo/setHint;->cancel()V

    return-void

    :catchall_1
    move-exception p1

    .line 1959
    iput-boolean p4, p0, Lo/setHint;->mayLaunchUrl:Z

    .line 1960
    invoke-direct {p0}, Lo/setHint;->cancel()V

    .line 1961
    throw p1
.end method

.method final onMessageChannelReady(Lo/setCounterTextAppearance;)V
    .locals 7

    const-string v0, "app_id=?"

    .line 2399
    iget-object v1, p0, Lo/setHint;->validateRelationship:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/setHint;->IPostMessageService$Stub:Ljava/util/List;

    .line 2401
    iget-object v2, p0, Lo/setHint;->validateRelationship:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2402
    :cond_0
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    iget-object v2, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 2403
    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2404
    invoke-virtual {v1}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 2405
    invoke-virtual {v1}, Lo/setHintTextColor;->read()V

    .line 2406
    :try_start_0
    invoke-virtual {v1}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 2408
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 2409
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 2410
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 2411
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 2412
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 2413
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 2414
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 2415
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 2416
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "default_event_params"

    .line 2417
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 2419
    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2422
    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2423
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 2424
    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2425
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 2426
    invoke-virtual {p0, p1}, Lo/setHint;->extraCallback(Lo/setCounterTextAppearance;)V

    :cond_2
    return-void
.end method

.method final onMessageChannelReady(Lo/setError;Lo/setCounterTextAppearance;)V
    .locals 7

    .line 2527
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2528
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2529
    invoke-direct {p0, p2}, Lo/setHint;->onPostMessage(Lo/setCounterTextAppearance;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2531
    :cond_0
    iget-boolean v0, p2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 2532
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 2534
    :cond_1
    iget-object v0, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2536
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2537
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2538
    new-instance p1, Lo/setError;

    .line 2539
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    .line 2540
    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    .line 2541
    iget-object v0, p2, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2542
    invoke-virtual {p0, p1, p2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    return-void

    .line 2545
    :cond_3
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 2546
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 2547
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    .line 2548
    iget-object v2, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 2549
    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2550
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->onPostMessage()V

    .line 2551
    :try_start_0
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    .line 2552
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object p2, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lo/zzzv;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asBinder()V

    .line 2555
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 2556
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "User property removed"

    .line 2557
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    .line 2558
    iget-object p1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2559
    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception p1

    .line 2562
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 2563
    throw p1
.end method

.method final onMessageChannelReady(Lo/setStartIconVisible;)V
    .locals 1

    .line 2935
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/setHint;->onNavigationEvent(Ljava/lang/String;)Lo/setCounterTextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2937
    invoke-virtual {p0, p1, v0}, Lo/setHint;->onNavigationEvent(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V

    :cond_0
    return-void
.end method

.method final onNavigationEvent(Lo/setCounterTextAppearance;)Ljava/lang/String;
    .locals 4

    .line 3160
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    .line 3161
    new-instance v1, Lo/setErrorEnabled;

    invoke-direct {v1, p0, p1}, Lo/setErrorEnabled;-><init>(Lo/setHint;Lo/setCounterTextAppearance;)V

    .line 3162
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 3163
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3166
    :goto_0
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 3167
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    iget-object p1, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 3168
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 3169
    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent()Lo/setStartIconTintList;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method final onNavigationEvent(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2011
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2012
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2013
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 2017
    :cond_0
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2018
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2019
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzzv;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2020
    :try_start_1
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 2024
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 2025
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 2026
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 2064
    :cond_4
    iget-object p4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p4}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p4

    .line 2065
    invoke-interface {p4}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(J)V

    .line 2066
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p4

    invoke-virtual {p4, v1}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    .line 2068
    iget-object p4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p4

    .line 2069
    invoke-virtual {p4}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2070
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object p3

    invoke-virtual {p3, p1}, Lo/setClickable;->onNavigationEvent(Ljava/lang/String;)V

    .line 2072
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    .line 2073
    iget-object p1, p1, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    .line 2074
    iget-object p3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p3

    .line 2075
    invoke-interface {p3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lo/setIconTint;->ICustomTabsCallback(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 2079
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    .line 2080
    iget-object p1, p1, Lo/setBackgroundTintList;->onPostMessage:Lo/setIconTint;

    .line 2081
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p2

    .line 2082
    invoke-interface {p2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 2083
    :cond_7
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 2028
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 2029
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2030
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 2039
    :cond_b
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lo/setClickable;->onPostMessage(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 2040
    :try_start_2
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2041
    iput-boolean v0, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 2042
    invoke-direct {p0}, Lo/setHint;->cancel()V

    return-void

    .line 2033
    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object p5

    invoke-virtual {p5, p1}, Lo/setClickable;->onPostMessage(Ljava/lang/String;)Lo/cD$onNavigationEvent;

    move-result-object p5

    if-nez p5, :cond_d

    .line 2034
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lo/setClickable;->onPostMessage(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 2035
    :try_start_4
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2036
    iput-boolean v0, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 2037
    invoke-direct {p0}, Lo/setHint;->cancel()V

    return-void

    .line 2045
    :cond_d
    :try_start_5
    iget-object p3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p3}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p3

    .line 2046
    invoke-interface {p3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/setFabAnimationMode;->onRelationshipValidationResult(J)V

    .line 2047
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p3

    invoke-virtual {p3, v1}, Lo/zzzv;->onMessageChannelReady(Lo/setFabAnimationMode;)V

    if-ne p2, v5, :cond_e

    .line 2050
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 2051
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 2052
    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 2054
    :cond_e
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2055
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 2056
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 2057
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 2058
    invoke-virtual {p1, p3, p2, p4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2059
    :goto_6
    invoke-virtual {p0}, Lo/setHint;->onMessageChannelReady()Lo/setHideOnScroll;

    move-result-object p1

    invoke-virtual {p1}, Lo/setHideOnScroll;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lo/setHint;->IPostMessageService$Stub$Proxy()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2060
    invoke-virtual {p0}, Lo/setHint;->ICustomTabsService()V

    goto :goto_7

    .line 2061
    :cond_f
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    .line 2084
    :goto_7
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asBinder()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2085
    :try_start_6
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2089
    iput-boolean v0, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 2090
    invoke-direct {p0}, Lo/setHint;->cancel()V

    return-void

    :catchall_0
    move-exception p1

    .line 2087
    :try_start_7
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 2088
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 2092
    iput-boolean v0, p0, Lo/setHint;->requestPostMessageChannel:Z

    .line 2093
    invoke-direct {p0}, Lo/setHint;->cancel()V

    .line 2094
    throw p1
.end method

.method final onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V
    .locals 12

    .line 2428
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2429
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2430
    invoke-direct {p0, p2}, Lo/setHint;->onPostMessage(Lo/setCounterTextAppearance;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2432
    :cond_0
    iget-boolean v0, p2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 2433
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 2436
    :cond_1
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 2437
    iget-object v1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    .line 2440
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 2441
    iget-object v3, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    .line 2443
    invoke-static {v3, v2, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 2444
    iget-object v1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 2446
    :goto_0
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v2

    .line 2447
    iget-object v3, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "_ev"

    .line 2448
    invoke-virtual/range {v2 .. v7}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2451
    :cond_3
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v3

    .line 2452
    iget-object v4, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 2455
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 2456
    iget-object v3, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    .line 2458
    invoke-static {v3, v2, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 2459
    invoke-virtual {p1}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2461
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 2462
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 2465
    :goto_1
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v6

    .line 2466
    iget-object v7, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v9, "_ev"

    .line 2467
    invoke-virtual/range {v6 .. v11}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2470
    :cond_6
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 2471
    iget-object v1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    .line 2472
    invoke-virtual {p1}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2475
    :cond_7
    iget-object v1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2476
    iget-wide v4, p1, Lo/setError;->extraCallback:J

    iget-object v7, p1, Lo/setError;->ICustomTabsCallback:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 2479
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    iget-object v6, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "_sno"

    .line 2480
    invoke-virtual {v3, v6, v8}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2481
    iget-object v6, v3, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_8

    .line 2482
    iget-object v1, v3, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 2485
    iget-object v6, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 2486
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v3, v3, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    .line 2487
    invoke-virtual {v6, v8, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2489
    :cond_9
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v3

    iget-object v6, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "_s"

    .line 2490
    invoke-virtual {v3, v6, v8}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2492
    iget-wide v1, v3, Lo/dispatchMessageTraced;->onNavigationEvent:J

    .line 2494
    iget-object v3, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 2495
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 2496
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 2498
    new-instance v8, Lo/setError;

    .line 2499
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p0, v8, p2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    .line 2501
    :cond_b
    new-instance v1, Lo/setErrorIconDrawable;

    iget-object v4, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p1, Lo/setError;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v6, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-wide v7, p1, Lo/setError;->extraCallback:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2503
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2504
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 2505
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    .line 2506
    iget-object v3, v1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 2507
    invoke-virtual {p1, v3, v2, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2508
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->onPostMessage()V

    .line 2509
    :try_start_0
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    .line 2510
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    move-result p1

    .line 2511
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->asBinder()V

    if-nez p1, :cond_c

    .line 2514
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 2515
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2516
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    .line 2517
    iget-object v3, v1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 2518
    invoke-virtual {p1, v0, v2, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2520
    iget-object p1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 2521
    iget-object v1, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2522
    invoke-virtual/range {v0 .. v5}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    :cond_c
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception p1

    .line 2525
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 2526
    throw p1
.end method

.method final onNavigationEvent(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V
    .locals 10

    .line 2939
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2941
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v0, v0, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2944
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2945
    invoke-direct {p0, p2}, Lo/setHint;->onPostMessage(Lo/setCounterTextAppearance;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2947
    :cond_0
    iget-boolean v0, p2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 2948
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 2950
    :cond_1
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->onPostMessage()V

    .line 2951
    :try_start_0
    invoke-virtual {p0, p2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    .line 2953
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v1, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v2, v2, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/setStartIconVisible;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2956
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 2957
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2958
    iget-object v4, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    .line 2959
    iget-object v5, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v5, v5, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2960
    invoke-virtual {v1, v2, v3, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2961
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    iget-boolean v1, v0, Lo/setStartIconVisible;->onPostMessage:Z

    if-eqz v1, :cond_2

    .line 2963
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v1

    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lo/zzzv;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    :cond_2
    iget-object v1, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 2966
    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v2, v2, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    if-eqz v2, :cond_3

    .line 2967
    iget-object v1, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v1, v1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v1}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v3, v1

    .line 2969
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    .line 2970
    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v4, v4, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, v0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-wide v6, p1, Lo/zzir;->onPostMessage:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    .line 2971
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2972
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    .line 2973
    sget-object v9, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$1:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 2974
    invoke-virtual/range {v0 .. v9}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;

    move-result-object p1

    .line 2975
    invoke-direct {p0, p1, p2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_1

    .line 2978
    :cond_5
    iget-object p2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 2979
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 2980
    invoke-static {v1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2981
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    .line 2982
    iget-object p1, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object p1, p1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2983
    invoke-virtual {p2, v0, v1, p1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2984
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asBinder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception p1

    .line 2987
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object p2

    invoke-virtual {p2}, Lo/zzzv;->asInterface()V

    .line 2988
    throw p1
.end method

.method final onNavigationEvent(Z)V
    .locals 0

    .line 3171
    invoke-direct {p0}, Lo/setHint;->INotificationSideChannel()V

    return-void
.end method

.method final onPostMessage(Ljava/lang/String;)Lo/zzq;
    .locals 3

    .line 168
    sget-object v0, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    .line 169
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    .line 171
    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 173
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 174
    iget-object v0, p0, Lo/setHint;->notify:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zzq;

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/zzzv;->onTransact(Ljava/lang/String;)Lo/zzq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    .line 179
    :cond_0
    invoke-virtual {p0, p1, v0}, Lo/setHint;->extraCallback(Ljava/lang/String;Lo/zzq;)V

    :cond_1
    return-object v0
.end method

.method public final onPostMessage()Lo/zzzv;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback:Lo/zzzv;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 110
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback:Lo/zzzv;

    return-object v0
.end method

.method final onPostMessage(Ljava/lang/Runnable;)V
    .locals 1

    .line 2229
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2230
    iget-object v0, p0, Lo/setHint;->ICustomTabsService:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setHint;->ICustomTabsService:Ljava/util/List;

    .line 2232
    :cond_0
    iget-object v0, p0, Lo/setHint;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final onPostMessage(Lo/setHintTextColor;)V
    .locals 0

    .line 2564
    iget p1, p0, Lo/setHint;->postMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setHint;->postMessage:I

    return-void
.end method

.method final onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 272
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    invoke-direct/range {p0 .. p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 276
    iget-object v3, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 277
    iget-wide v11, v0, Lo/zzir;->onPostMessage:J

    .line 278
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    invoke-static/range {p1 .. p2}, Lo/setErrorTextColor;->onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 280
    :cond_0
    iget-boolean v4, v2, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    if-nez v4, :cond_1

    .line 281
    invoke-virtual {v1, v2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void

    .line 283
    :cond_1
    iget-object v4, v2, Lo/setCounterTextAppearance;->IPostMessageService:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 284
    iget-object v4, v2, Lo/setCounterTextAppearance;->IPostMessageService:Ljava/util/List;

    iget-object v5, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, v0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-virtual {v4}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 286
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    new-instance v5, Lo/zzir;

    iget-object v14, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    new-instance v15, Lo/zzfa$zza;

    invoke-direct {v15, v4}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-wide v6, v0, Lo/zzir;->onPostMessage:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    iget-object v4, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-object v0, v0, Lo/zzir;->extraCallback:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 292
    invoke-virtual {v2, v5, v3, v4, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 294
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    invoke-virtual {v4}, Lo/zzzv;->onPostMessage()V

    .line 296
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    .line 297
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    invoke-virtual {v4}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 299
    invoke-virtual {v4}, Lo/setHintTextColor;->read()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v5

    if-gez v8, :cond_4

    .line 301
    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Invalid time querying timed out conditional properties"

    .line 303
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 304
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 305
    invoke-virtual {v4, v5, v6, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v5, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v13

    .line 308
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v14

    .line 309
    invoke-virtual {v4, v5, v6}, Lo/zzzv;->extraCallback(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 310
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setStartIconVisible;

    if-eqz v5, :cond_5

    .line 313
    iget-object v6, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 314
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v9, "User property timed out"

    iget-object v10, v5, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 315
    iget-object v15, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v15}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v15

    .line 316
    iget-object v14, v5, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v14, v14, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v5, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 317
    invoke-virtual {v15}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v15

    .line 318
    invoke-virtual {v6, v9, v10, v14, v15}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget-object v6, v5, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    if-eqz v6, :cond_6

    .line 320
    new-instance v6, Lo/zzir;

    iget-object v9, v5, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    invoke-direct {v6, v9, v11, v12}, Lo/zzir;-><init>(Lo/zzir;J)V

    invoke-direct {v1, v6, v2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 321
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v6

    iget-object v5, v5, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v5, v5, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_2

    .line 324
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    .line 325
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-virtual {v4}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 327
    invoke-virtual {v4}, Lo/setHintTextColor;->read()V

    if-gez v8, :cond_8

    .line 329
    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Invalid time querying expired conditional properties"

    .line 331
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 332
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 333
    invoke-virtual {v4, v5, v6, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v5, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v13

    .line 336
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v6, v10

    .line 337
    invoke-virtual {v4, v5, v6}, Lo/zzzv;->extraCallback(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 339
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setStartIconVisible;

    if-eqz v6, :cond_9

    .line 343
    iget-object v9, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v9}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    .line 344
    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v6, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 345
    iget-object v15, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v15}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v15

    .line 346
    iget-object v7, v6, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v7, v7, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v6, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 347
    invoke-virtual {v15}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v15

    .line 348
    invoke-virtual {v9, v10, v14, v7, v15}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v9, v6, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v9, v9, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Lo/zzzv;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v7, v6, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    if-eqz v7, :cond_a

    .line 351
    iget-object v7, v6, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v7

    iget-object v6, v6, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v6, v6, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v7, v3, v6}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_4

    .line 354
    :cond_b
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_c

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lo/zzir;

    .line 355
    new-instance v9, Lo/zzir;

    invoke-direct {v9, v7, v11, v12}, Lo/zzir;-><init>(Lo/zzir;J)V

    invoke-direct {v1, v9, v2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_5

    .line 358
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    iget-object v5, v0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 359
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    invoke-virtual {v4}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 362
    invoke-virtual {v4}, Lo/setHintTextColor;->read()V

    if-gez v8, :cond_d

    .line 364
    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 366
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 367
    invoke-virtual {v4}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 369
    invoke-virtual {v6, v7, v3, v4, v5}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    .line 372
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 373
    invoke-virtual {v4, v6, v7}, Lo/zzzv;->extraCallback(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 375
    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lo/setStartIconVisible;

    if-eqz v15, :cond_e

    .line 378
    iget-object v4, v15, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 379
    new-instance v10, Lo/setErrorIconDrawable;

    iget-object v5, v15, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v6, v15, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iget-object v7, v4, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    .line 380
    invoke-virtual {v4}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v4

    invoke-virtual {v4, v13}, Lo/zzzv;->extraCallback(Lo/setErrorIconDrawable;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 384
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 386
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    .line 387
    iget-object v8, v13, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 388
    invoke-virtual {v4, v5, v6, v7, v8}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 390
    :cond_f
    iget-object v4, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v4}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 391
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 392
    invoke-static {v6}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 393
    iget-object v7, v1, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v7}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    .line 394
    iget-object v8, v13, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    .line 395
    invoke-virtual {v4, v5, v6, v7, v8}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    :goto_8
    iget-object v4, v15, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    if-eqz v4, :cond_10

    .line 397
    iget-object v4, v15, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_10
    new-instance v4, Lo/setError;

    invoke-direct {v4, v13}, Lo/setError;-><init>(Lo/setErrorIconDrawable;)V

    iput-object v4, v15, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    const/4 v4, 0x1

    .line 399
    iput-boolean v4, v15, Lo/setStartIconVisible;->onPostMessage:Z

    .line 400
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v5

    invoke-virtual {v5, v15}, Lo/zzzv;->extraCallback(Lo/setStartIconVisible;)Z

    const/4 v13, 0x0

    goto/16 :goto_7

    .line 402
    :cond_11
    invoke-direct {v1, v0, v2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    .line 403
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v0, :cond_12

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lo/zzir;

    .line 404
    new-instance v4, Lo/zzir;

    invoke-direct {v4, v3, v11, v12}, Lo/zzir;-><init>(Lo/zzir;J)V

    invoke-direct {v1, v4, v2}, Lo/setHint;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_9

    .line 406
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->asBinder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzzv;->asInterface()V

    return-void

    :catchall_0
    move-exception v0

    .line 409
    invoke-virtual/range {p0 .. p0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzzv;->asInterface()V

    .line 410
    throw v0
.end method

.method public final onRelationshipValidationResult()Lo/setErrorIconTintMode;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/setHint;->onRelationshipValidationResult:Lo/setErrorIconTintMode;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Lo/setHintTextColor;)V

    .line 117
    iget-object v0, p0, Lo/setHint;->onRelationshipValidationResult:Lo/setErrorIconTintMode;

    return-object v0
.end method

.method public final onTransact()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->asInterface()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method final requestPostMessageChannel()V
    .locals 4

    .line 2270
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    .line 2271
    invoke-virtual {p0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 2272
    iget-boolean v0, p0, Lo/setHint;->getInterfaceDescriptor:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2273
    iput-boolean v0, p0, Lo/setHint;->getInterfaceDescriptor:Z

    .line 2274
    invoke-direct {p0}, Lo/setHint;->getDefaultImpl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2276
    iget-object v0, p0, Lo/setHint;->ICustomTabsService$Stub$Proxy:Ljava/nio/channels/FileChannel;

    .line 2277
    invoke-direct {p0, v0}, Lo/setHint;->extraCallback(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 2278
    iget-object v1, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v1

    invoke-virtual {v1}, Lo/setExpanded;->INotificationSideChannel()I

    move-result v1

    .line 2280
    invoke-direct {p0}, Lo/setHint;->ICustomTabsService$Stub()V

    if-le v0, v1, :cond_0

    .line 2283
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 2284
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 2285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 2287
    invoke-virtual {v2, v3, v0, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 2291
    iget-object v2, p0, Lo/setHint;->ICustomTabsService$Stub$Proxy:Ljava/nio/channels/FileChannel;

    .line 2292
    invoke-direct {p0, v1, v2}, Lo/setHint;->onPostMessage(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2294
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 2295
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 2296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2298
    :cond_1
    iget-object v2, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 2299
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 2300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 2302
    invoke-virtual {v2, v3, v0, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()Landroid/content/Context;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/setHint;->ICustomTabsCallback$Stub$Proxy:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
