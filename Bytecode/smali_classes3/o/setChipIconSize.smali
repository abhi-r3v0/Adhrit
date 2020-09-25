.class public final Lo/setChipIconSize;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/setChipIconTint;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicLong;

.field private ICustomTabsCallback$Stub$Proxy:J

.field private asBinder:I

.field private asInterface:Lo/zzq;

.field private extraCallback:Z

.field private newSession:Z

.field public onMessageChannelReady:Lo/setIconEndPaddingResource;

.field final onNavigationEvent:Lo/setCounterOverflowTextAppearance;

.field private onPostMessage:Lo/setChipIconTintResource;

.field private final onRelationshipValidationResult:Ljava/lang/Object;

.field private final onTransact:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:I


# direct methods
.method protected constructor <init>(Lo/setCheckedIcon;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lo/setChipIconSize;->ICustomTabsCallback:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setChipIconSize;->onRelationshipValidationResult:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lo/setChipIconSize;->newSession:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/setChipIconSize;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Lo/zzq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lo/setChipIconSize;->asInterface:Lo/zzq;

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lo/setChipIconSize;->asBinder:I

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lo/setChipIconSize;->ICustomTabsCallback$Stub$Proxy:J

    .line 9
    iput v0, p0, Lo/setChipIconSize;->warmup:I

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lo/setChipIconSize;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    new-instance v0, Lo/setCounterOverflowTextAppearance;

    invoke-direct {v0, p1}, Lo/setCounterOverflowTextAppearance;-><init>(Lo/setCheckedIcon;)V

    iput-object v0, p0, Lo/setChipIconSize;->onNavigationEvent:Lo/setCounterOverflowTextAppearance;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setShapeAppearanceModel;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Cannot get user properties from analytics worker thread"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 774
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 775
    :cond_0
    invoke-static {}, Lo/setStartIconContentDescription;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Cannot get user properties from main thread"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 777
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 778
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v8, p0

    .line 779
    iget-object v1, v8, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 780
    invoke-virtual {v1}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v9

    const-wide/16 v10, 0x1388

    new-instance v12, Lo/setShowMotionSpec;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lo/setShowMotionSpec;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "get user properties"

    move-object v1, v9

    move-object v2, v0

    move-wide v3, v10

    move-object v6, v12

    .line 781
    invoke-virtual/range {v1 .. v6}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 782
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 784
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 786
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Timed out waiting for handle get user properties, includeInternal"

    .line 787
    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 789
    :cond_2
    new-instance v1, Lo/postOrRun;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lo/postOrRun;-><init>(I)V

    .line 790
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setError;

    .line 791
    iget-object v3, v2, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private final ICustomTabsCallback(Landroid/os/Bundle;J)V
    .locals 9

    .line 575
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app_id"

    invoke-static {p1, v2, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-class v0, Ljava/lang/String;

    const-string v2, "origin"

    invoke-static {p1, v2, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-class v0, Ljava/lang/String;

    const-string v3, "name"

    invoke-static {p1, v3, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-class v0, Ljava/lang/Object;

    const-string v4, "value"

    invoke-static {p1, v4, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-class v0, Ljava/lang/String;

    const-string v5, "trigger_event_name"

    invoke-static {p1, v5, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-class v0, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    .line 583
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "trigger_timeout"

    .line 584
    invoke-static {p1, v7, v0, v6}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-class v0, Ljava/lang/String;

    const-string v8, "timed_out_event_name"

    invoke-static {p1, v8, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-class v0, Landroid/os/Bundle;

    const-string v8, "timed_out_event_params"

    invoke-static {p1, v8, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-class v0, Ljava/lang/String;

    const-string v8, "triggered_event_name"

    invoke-static {p1, v8, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-class v0, Landroid/os/Bundle;

    const-string v8, "triggered_event_params"

    invoke-static {p1, v8, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-class v0, Ljava/lang/Long;

    const-string v8, "time_to_live"

    .line 591
    invoke-static {p1, v8, v0, v6}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-class v0, Ljava/lang/String;

    const-string v6, "expired_event_name"

    invoke-static {p1, v6, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-class v0, Landroid/os/Bundle;

    const-string v6, "expired_event_params"

    invoke-static {p1, v6, v0, v1}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 596
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "creation_timestamp"

    .line 597
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 598
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 599
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 600
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 604
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid conditional user property name"

    .line 605
    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 607
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 611
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid conditional user property value"

    .line 612
    invoke-virtual {p1, v0, p2, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 616
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 617
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 618
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to normalize conditional user property value"

    .line 619
    invoke-virtual {p1, v0, p2, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 621
    :cond_2
    invoke-static {p1, v0}, Lo/setChipIconVisible;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 623
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 624
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-wide/16 v2, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez p3, :cond_4

    cmp-long p3, v0, v4

    if-gtz p3, :cond_3

    cmp-long p3, v0, v2

    if-gez p3, :cond_4

    .line 626
    :cond_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 628
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 629
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property timeout"

    .line 630
    invoke-virtual {p1, v0, p2, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 632
    :cond_4
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p3, v0, v4

    if-gtz p3, :cond_6

    cmp-long p3, v0, v2

    if-gez p3, :cond_5

    goto :goto_0

    .line 640
    :cond_5
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p2

    new-instance p3, Lo/setCloseIconTint;

    invoke-direct {p3, p0, p1}, Lo/setCloseIconTint;-><init>(Lo/setChipIconSize;Landroid/os/Bundle;)V

    .line 641
    invoke-virtual {p2, p3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 634
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 635
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 636
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 637
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property time to live"

    .line 638
    invoke-virtual {p1, v0, p2, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 451
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v8, Lo/setCloseIconSizeResource;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lo/setCloseIconSizeResource;-><init>(Lo/setChipIconSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 452
    invoke-virtual {v0, v8}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final RemoteActionCompatParcelizer()V
    .locals 11

    .line 116
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 117
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->newSession:Lo/setStrokeWidthResource;

    invoke-virtual {v0}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    const-string v3, "unset"

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x0

    .line 121
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v8

    const-string v5, "app"

    const-string v6, "_npa"

    move-object v4, p0

    .line 122
    invoke-virtual/range {v4 .. v9}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v3, "true"

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 125
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v9

    const-string v6, "app"

    const-string v7, "_npa"

    move-object v5, p0

    .line 126
    invoke-virtual/range {v5 .. v10}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 127
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lo/setChipIconSize;->newSession:Z

    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Recording app launch after enabling measurement for the first time (FE)"

    .line 130
    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lo/setChipIconSize;->setDefaultImpl()V

    .line 132
    invoke-static {}, Lo/CustomEventInterstitial;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v3, Lo/zziq;->onError:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    iget-object v0, v0, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    invoke-virtual {v0}, Lo/setBoxBackgroundColor;->extraCallback()V

    .line 135
    :cond_3
    invoke-static {}, Lo/requestNativeAd;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v3, Lo/zziq;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onMessageChannelReady()Lo/setIconTintResource;

    move-result-object v0

    .line 138
    iget-object v0, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->onRelationshipValidationResult:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 140
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onMessageChannelReady()Lo/setIconTintResource;

    move-result-object v0

    .line 142
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setIconTintResource;->onMessageChannelReady(Ljava/lang/String;)V

    .line 143
    :cond_5
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setCloseIconEnabledResource;

    invoke-direct {v1, p0}, Lo/setCloseIconEnabledResource;-><init>(Lo/setChipIconSize;)V

    .line 145
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    .line 147
    :cond_7
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipSpacingResource;->validateRelationship()V

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setShapeAppearanceModel;->onTransact()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 752
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 753
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 754
    :cond_0
    invoke-static {}, Lo/setStartIconContentDescription;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 756
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 757
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 758
    iget-object v1, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 759
    invoke-virtual {v1}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    const-wide/16 v8, 0x1388

    new-instance v10, Lo/setCheckedIconEnabledResource;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/setCheckedIconEnabledResource;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "get conditional user properties"

    move-object v2, v1

    move-object v3, v0

    move-wide v4, v8

    move-object v7, v10

    .line 760
    invoke-virtual/range {v2 .. v7}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 761
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 763
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 764
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    .line 765
    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 766
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 767
    :cond_2
    invoke-static {p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private final extraCallback(Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v0, p1

    const-string v1, "app_id"

    .line 662
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 664
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    .line 665
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "origin"

    .line 666
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "value"

    .line 667
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, p0

    .line 668
    iget-object v6, v5, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->cancel()Z

    move-result v6

    if-nez v6, :cond_0

    .line 669
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 671
    :cond_0
    new-instance v12, Lo/setError;

    .line 672
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "triggered_timestamp"

    .line 673
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 674
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 675
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 677
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v13

    .line 678
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "triggered_event_name"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "triggered_event_params"

    .line 680
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 681
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 682
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v22, 0x1

    goto :goto_0

    :cond_1
    const/16 v22, 0x0

    .line 683
    :goto_0
    invoke-virtual/range {v13 .. v22}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;

    move-result-object v17

    .line 685
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v18

    .line 686
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "timed_out_event_name"

    .line 687
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "timed_out_event_params"

    .line 688
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 689
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-wide/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    .line 690
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v27, 0x1

    goto :goto_1

    :cond_2
    const/16 v27, 0x0

    .line 691
    :goto_1
    invoke-virtual/range {v18 .. v27}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;

    move-result-object v14

    .line 693
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v18

    .line 694
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "expired_event_name"

    .line 695
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "expired_event_params"

    .line 696
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 697
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-wide/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    .line 698
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v27, 0x1

    goto :goto_2

    :cond_3
    const/16 v27, 0x0

    .line 699
    :goto_2
    invoke-virtual/range {v18 .. v27}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    new-instance v2, Lo/setStartIconVisible;

    .line 704
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 705
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "creation_timestamp"

    .line 706
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v1, 0x0

    const-string v3, "trigger_event_name"

    .line 707
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "trigger_timeout"

    .line 708
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v3, "time_to_live"

    .line 709
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v6, v2

    move-object v9, v12

    move v12, v1

    invoke-direct/range {v6 .. v20}, Lo/setStartIconVisible;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/setError;JZLjava/lang/String;Lo/zzir;JLo/zzir;JLo/zzir;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/setStartIconVisible;)V

    :catch_0
    return-void
.end method

.method static synthetic extraCallback(Lo/setChipIconSize;Ljava/lang/Boolean;Z)V
    .locals 0

    const/4 p2, 0x1

    .line 830
    invoke-direct {p0, p1, p2}, Lo/setChipIconSize;->onPostMessage(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 649
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    .line 650
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v3, "app_id"

    .line 653
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "name"

    .line 654
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 655
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_1

    const-string p1, "expired_event_name"

    .line 657
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 658
    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 659
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance p2, Lo/setCheckedIconEnabled;

    invoke-direct {p2, p0, v2}, Lo/setCheckedIconEnabled;-><init>(Lo/setChipIconSize;Landroid/os/Bundle;)V

    .line 660
    invoke-virtual {p1, p2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/zzq;IJZZ)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 103
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 104
    iget-wide v0, p0, Lo/setChipIconSize;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    iget v0, p0, Lo/setChipIconSize;->warmup:I

    .line 105
    invoke-static {v0, p2}, Lo/zzq;->ICustomTabsCallback(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setBackgroundTintList;->extraCallback(Lo/zzq;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iput-wide p3, p0, Lo/setChipIconSize;->ICustomTabsCallback$Stub$Proxy:J

    .line 109
    iput p2, p0, Lo/setChipIconSize;->warmup:I

    .line 110
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    invoke-virtual {p1, p5}, Lo/setChipSpacingResource;->onPostMessage(Z)V

    if-eqz p6, :cond_2

    .line 112
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, p2}, Lo/setChipSpacingResource;->extraCallback(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "creation_timestamp"

    const-string v2, "origin"

    const-string v3, "app_id"

    .line 712
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 714
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    .line 715
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v5, p0

    .line 716
    iget-object v6, v5, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->cancel()Z

    move-result v6

    if-nez v6, :cond_0

    .line 717
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Conditional property not cleared since app measurement is disabled"

    .line 719
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 721
    :cond_0
    new-instance v12, Lo/setError;

    .line 722
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 724
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v13

    .line 725
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "expired_event_name"

    .line 726
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "expired_event_params"

    .line 727
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 728
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 729
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 730
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v4

    sget-object v6, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v4, v6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    const/16 v22, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v22, 0x0

    .line 731
    :goto_0
    invoke-virtual/range {v13 .. v22}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    new-instance v4, Lo/setStartIconVisible;

    .line 736
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 737
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 738
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "active"

    .line 739
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "trigger_event_name"

    .line 740
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-string v2, "trigger_timeout"

    .line 741
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const/16 v17, 0x0

    const-string v2, "time_to_live"

    .line 742
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v6, v4

    move-object v9, v12

    move v12, v1

    invoke-direct/range {v6 .. v20}, Lo/setStartIconVisible;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/setError;JZLjava/lang/String;Lo/zzir;JLo/zzir;JLo/zzir;)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/setStartIconVisible;)V

    :catch_0
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setChipIconSize;)V
    .locals 0

    .line 832
    invoke-direct {p0}, Lo/setChipIconSize;->RemoteActionCompatParcelizer()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setChipIconSize;Landroid/os/Bundle;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lo/setChipIconSize;->extraCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setChipIconSize;Lo/zzq;IJZZ)V
    .locals 0

    .line 831
    invoke-direct/range {p0 .. p6}, Lo/setChipIconSize;->onMessageChannelReady(Lo/zzq;IJZZ)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Boolean;Z)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 90
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 91
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setBackgroundTintList;->onPostMessage(Ljava/lang/Boolean;)V

    .line 93
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/setBackgroundTintList;->ICustomTabsCallback(Ljava/lang/Boolean;)V

    .line 96
    :cond_0
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object v0, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 98
    invoke-virtual {p2}, Lo/setCheckedIcon;->INotificationSideChannel()Z

    move-result p2

    if-nez p2, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    :cond_1
    invoke-direct {p0}, Lo/setChipIconSize;->RemoteActionCompatParcelizer()V

    :cond_2
    return-void
.end method

.method static synthetic onPostMessage(Lo/setChipIconSize;Landroid/os/Bundle;)V
    .locals 0

    .line 834
    invoke-direct {p0, p1}, Lo/setChipIconSize;->onNavigationEvent(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 768
    invoke-direct {p0, v0, p1, p2, p3}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 812
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method protected final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    move-wide/from16 v13, p3

    move-object/from16 v12, p5

    .line 159
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-static/range {p5 .. p5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 163
    iget-object v0, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    invoke-virtual {v0}, Lo/setExpanded;->cancelAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v15, v8}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_1
    iget-boolean v0, v7, Lo/setChipIconSize;->extraCallback:Z

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_3

    .line 172
    iput-boolean v9, v7, Lo/setChipIconSize;->extraCallback:Z

    .line 174
    :try_start_0
    iget-object v0, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->requestPostMessageChannel()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    .line 176
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v1, "initialize"

    new-array v2, v9, [Ljava/lang/Class;

    .line 180
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v10

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 185
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 189
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->getNotifyChildrenChangedOptions:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_cmp"

    .line 190
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 191
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    .line 195
    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 196
    :cond_4
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p6, :cond_5

    .line 199
    invoke-static/range {p2 .. p2}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    invoke-virtual {v1}, Lo/setIconPadding;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-eqz p8, :cond_c

    const-string v1, "_iap"

    .line 202
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 203
    iget-object v1, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 204
    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    .line 205
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    const-string v3, "event"

    .line 207
    invoke-virtual {v1, v3, v15}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0xd

    const/4 v6, 0x2

    if-nez v4, :cond_7

    :goto_3
    const/4 v5, 0x2

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    .line 210
    sget-object v2, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    sget-object v4, Lo/setChipIconResource;->onNavigationEvent:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4, v15}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 212
    :cond_8
    sget-object v2, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v15}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 214
    :cond_9
    invoke-virtual {v1, v3, v0, v15}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_c

    .line 219
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    invoke-virtual {v2, v15}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 222
    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v1, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 224
    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 225
    invoke-static {v15, v0, v9}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_b

    .line 226
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 227
    :cond_b
    iget-object v1, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 228
    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    const-string v2, "_ev"

    .line 229
    invoke-virtual {v1, v5, v2, v0, v10}, Lo/setHelperTextEnabled;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 231
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v10}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v1

    const-string v2, "_sc"

    if-eqz v1, :cond_d

    .line 234
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 235
    iput-boolean v9, v1, Lo/setCloseIconEndPadding;->onPostMessage:Z

    :cond_d
    if-eqz p6, :cond_e

    if-eqz p8, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 237
    :goto_5
    invoke-static {v1, v12, v3}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    const-string v3, "am"

    .line 238
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 239
    invoke-static/range {p2 .. p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz p6, :cond_f

    .line 240
    iget-object v4, v7, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    if-eqz v4, :cond_f

    if-nez v3, :cond_f

    if-nez v16, :cond_f

    .line 241
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 243
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v1, v15}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    invoke-virtual {v2, v12}, Lo/setLiftOnScrollTargetViewId;->extraCallback(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 245
    invoke-virtual {v0, v3, v1, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    iget-object v1, v7, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lo/setChipIconTintResource;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 247
    :cond_f
    iget-object v3, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v3}, Lo/setCheckedIcon;->INotificationSideChannel$Stub()Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    .line 250
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    .line 251
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v4

    sget-object v5, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v4, v5}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    .line 252
    :goto_6
    invoke-virtual {v3, v15, v4}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Z)I

    move-result v3

    if-eqz v3, :cond_13

    .line 254
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 256
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    invoke-virtual {v2, v15}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 257
    invoke-virtual {v1, v4, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {v15, v0, v9}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_12

    .line 260
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 261
    :cond_12
    iget-object v1, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 262
    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    const-string v2, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, p9

    move/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v0

    move/from16 p6, v10

    .line 263
    invoke-virtual/range {p1 .. p6}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_13
    const-string v0, "_sn"

    const-string v5, "_o"

    const-string v3, "_si"

    .line 265
    filled-new-array {v5, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-static {v4}, Lo/extraCallback;->onMessageChannelReady([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 268
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v4

    const/4 v6, 0x1

    move-object v9, v4

    const/4 v4, 0x0

    move-object/from16 v10, p9

    move-object/from16 v19, v11

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-object/from16 v13, v17

    move/from16 v14, p8

    move v15, v6

    .line 269
    invoke-virtual/range {v9 .. v15}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_15

    .line 272
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 273
    invoke-virtual {v15, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_7

    .line 275
    :cond_14
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 278
    new-instance v11, Lo/setCloseIconEndPadding;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v11, v0, v2, v9, v10}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_8

    :cond_15
    :goto_7
    move-object/from16 v11, v19

    :goto_8
    if-nez v11, :cond_16

    move-object v0, v1

    goto :goto_9

    :cond_16
    move-object v0, v11

    .line 282
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    const-string v14, "_ae"

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_17

    .line 284
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v4}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object/from16 v13, p2

    .line 287
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 288
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v1

    .line 289
    iget-object v1, v1, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v1}, Lo/setBoxStrokeColor;->onNavigationEvent()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-lez v3, :cond_18

    .line 292
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    invoke-virtual {v3, v15, v1, v2}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Bundle;J)V

    goto :goto_a

    :cond_17
    move-object/from16 v13, p2

    .line 293
    :cond_18
    :goto_a
    invoke-static {}, Lo/showInterstitial;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 294
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->onResult:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "auto"

    .line 295
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_1b

    const-string v1, "_ssr"

    .line 296
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 297
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    .line 298
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v2}, Lo/extraCallback$extraCallback;->extraCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v11, v19

    goto :goto_b

    .line 301
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 302
    :goto_b
    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    iget-object v2, v2, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {v2}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 303
    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_c

    .line 305
    :cond_1a
    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {v1, v11}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_c
    if-nez v1, :cond_1c

    return-void

    .line 309
    :cond_1b
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 310
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {v1}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 313
    invoke-virtual {v15, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1}, Lo/setHelperTextEnabled;->asInterface()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 317
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    invoke-virtual {v1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v19

    cmp-long v1, v19, v9

    if-lez v1, :cond_1d

    .line 318
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    move-wide/from16 v9, p3

    invoke-virtual {v1, v9, v10}, Lo/setBackgroundTintList;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 319
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    invoke-virtual {v1}, Lo/setIconSize;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 320
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v6, "Current session is expired, remove the session number, ID, and engagement time"

    .line 322
    invoke-virtual {v1, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 324
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v19

    const-string v11, "auto"

    const-string v21, "_sid"

    move-object/from16 v1, p0

    move-wide/from16 v22, v2

    move-object v2, v11

    move-object/from16 v3, v21

    const/4 v11, 0x0

    move-object v4, v6

    move-object v8, v5

    move-wide/from16 v5, v19

    .line 325
    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const/4 v4, 0x0

    .line 327
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 328
    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 331
    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_d

    :cond_1d
    move-wide/from16 v9, p3

    :cond_1e
    move-wide/from16 v22, v2

    move-object v8, v5

    const/4 v11, 0x0

    :goto_d
    const-string v1, "extend_session"

    const-wide/16 v2, 0x0

    .line 332
    invoke-virtual {v15, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1f

    .line 334
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 336
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 337
    iget-object v1, v7, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->extraCallback()Lo/setForegroundGravity;

    move-result-object v1

    .line 338
    iget-object v1, v1, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    const/4 v5, 0x1

    invoke-virtual {v1, v9, v10, v5}, Lo/setBoxBackgroundColor;->ICustomTabsCallback(JZ)V

    goto :goto_e

    :cond_1f
    const/4 v5, 0x1

    .line 339
    :goto_e
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v15}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 340
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 341
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 342
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 343
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 344
    array-length v0, v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_21

    aget-object v3, v1, v2

    .line 345
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 347
    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    move-object/from16 p6, v8

    move-object v2, v13

    move-object v0, v14

    const/16 v20, 0x1

    goto/16 :goto_13

    .line 350
    :cond_22
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    const-string v6, "_eid"

    if-ge v3, v2, :cond_25

    aget-object v5, v1, v3

    .line 351
    invoke-virtual {v15, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 352
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-object/from16 p5, v1

    invoke-static/range {v19 .. v19}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 354
    array-length v11, v1

    invoke-virtual {v15, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v19, v2

    const/4 v11, 0x0

    .line 355
    :goto_11
    array-length v2, v1

    if-ge v11, v2, :cond_23

    .line 356
    aget-object v2, v1, v11

    move-object/from16 v20, v15

    const/4 v15, 0x1

    .line 357
    invoke-static {v0, v2, v15}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v18

    const/16 v21, 0x0

    const-string v24, "_ep"

    move-object/from16 v9, v18

    move-object/from16 v10, p9

    move/from16 v25, v11

    move-object/from16 v11, v24

    move-object/from16 v26, v12

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, v17

    move-object/from16 v18, v0

    move-object v0, v14

    move/from16 v14, p8

    move-object/from16 p6, v8

    move-object/from16 v8, v20

    const/16 v20, 0x1

    move/from16 v15, v21

    .line 360
    invoke-virtual/range {v9 .. v15}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "_en"

    .line 361
    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v10, v22

    .line 362
    invoke-virtual {v9, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v12, "_gn"

    .line 363
    invoke-virtual {v9, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    array-length v12, v1

    const-string v13, "_ll"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "_i"

    move/from16 v13, v25

    .line 365
    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v12, v26

    .line 366
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v13, 0x1

    move-object v14, v0

    move-object v13, v2

    move-object v15, v8

    move-object/from16 v0, v18

    move-object/from16 v8, p6

    move v11, v9

    move-wide/from16 v9, p3

    goto :goto_11

    :cond_23
    move-object/from16 v18, v0

    move-object/from16 p6, v8

    move-object v2, v13

    move-object v0, v14

    move-object v8, v15

    move-wide/from16 v10, v22

    const/16 v20, 0x1

    .line 368
    array-length v1, v1

    add-int/2addr v4, v1

    goto :goto_12

    :cond_24
    move-object/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 p6, v8

    move-object v2, v13

    move-object v0, v14

    move-object v8, v15

    move-wide/from16 v10, v22

    const/16 v20, 0x1

    :goto_12
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p5

    move-object v14, v0

    move-object v13, v2

    move-object v15, v8

    move-wide/from16 v22, v10

    move-object/from16 v0, v18

    move/from16 v2, v19

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-wide/from16 v9, p3

    move-object/from16 v8, p6

    goto/16 :goto_10

    :cond_25
    move-object/from16 p6, v8

    move-object v2, v13

    move-object v0, v14

    move-object v8, v15

    move-wide/from16 v10, v22

    const/16 v20, 0x1

    if-eqz v4, :cond_26

    .line 371
    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "_epc"

    .line 372
    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    :goto_13
    const/4 v10, 0x0

    .line 373
    :goto_14
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2b

    .line 374
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v10, :cond_27

    const/4 v3, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x0

    :goto_15
    if-eqz v3, :cond_28

    const-string v3, "_ep"

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    goto :goto_16

    :cond_28
    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move-object v3, v2

    .line 377
    :goto_16
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_29

    .line 379
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v4

    invoke-virtual {v4, v1}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_29
    move-object v11, v1

    .line 381
    new-instance v13, Lo/zzir;

    new-instance v4, Lo/zzfa$zza;

    invoke-direct {v4, v11}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    move-object v1, v13

    move-object v14, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p1

    const/4 v15, 0x1

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v1

    move-object/from16 v5, p9

    invoke-virtual {v1, v13, v5}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/zzir;Ljava/lang/String;)V

    if-nez v16, :cond_2a

    .line 384
    iget-object v1, v7, Lo/setChipIconSize;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_17
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setChipIconTint;

    .line 385
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 386
    invoke-interface/range {v1 .. v6}, Lo/setChipIconTint;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_17

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 p6, v9

    move-object v2, v14

    const/16 v20, 0x1

    goto :goto_14

    :cond_2b
    move-object v14, v2

    const/4 v15, 0x1

    .line 390
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v1, v2}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 393
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 394
    invoke-virtual/range {p0 .. p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, v15, v15, v1, v2}, Lo/setForegroundGravity;->onMessageChannelReady(ZZJ)Z

    :cond_2c
    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 152
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 153
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "app"

    :cond_0
    move-object v1, p1

    const/4 p1, 0x6

    const/4 v0, 0x0

    const/16 v2, 0x18

    if-eqz p4, :cond_1

    .line 416
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p4

    const-string v3, "user property"

    .line 418
    invoke-virtual {p4, v3, p2}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 420
    :cond_2
    sget-object v4, Lo/setChipIcon;->extraCallback:[Ljava/lang/String;

    invoke-virtual {p4, v3, v4, p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 p1, 0xf

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p4, v3, v2, p2}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    const-string p4, "_ev"

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    .line 428
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {p2, v2, v3}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_5

    .line 429
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 430
    :cond_5
    iget-object p2, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p2

    invoke-virtual {p2, p1, p4, p3, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz p3, :cond_b

    .line 433
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_9

    .line 436
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {p2, v2, v3}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 438
    instance-of p5, p3, Ljava/lang/String;

    if-nez p5, :cond_7

    instance-of p5, p3, Ljava/lang/CharSequence;

    if-eqz p5, :cond_8

    .line 439
    :cond_7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 440
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 441
    :cond_8
    iget-object p3, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 442
    invoke-virtual {p3}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p3

    .line 443
    invoke-virtual {p3, p1, p4, p2, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 445
    :cond_9
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 447
    invoke-direct/range {v0 .. v5}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 449
    invoke-direct/range {v0 .. v5}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setChipIconTint;)V
    .locals 1

    .line 554
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 555
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lo/setChipIconSize;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 816
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 821
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 823
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub$Proxy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 16
    iget-object v1, p0, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final INotificationSideChannel()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lo/setChipIconSize;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService$Stub()Ljava/lang/String;
    .locals 6

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 24
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v5, Lo/setCheckedIconVisible;

    invoke-direct {v5, p0, v1}, Lo/setCheckedIconVisible;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    .line 25
    invoke-virtual/range {v0 .. v5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final IPostMessageService$Stub$Proxy()Ljava/lang/Integer;
    .locals 6

    .line 31
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 32
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v5, Lo/setHideMotionSpec;

    invoke-direct {v5, p0, v1}, Lo/setHideMotionSpec;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    .line 33
    invoke-virtual/range {v0 .. v5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final IconCompatParcelizer()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipEndPadding;->IPostMessageService$Stub()Lo/setCloseIconEndPadding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, v0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 818
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 819
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public final cancel()Ljava/lang/Long;
    .locals 6

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v5, Lo/setChipStartPaddingResource;

    invoke-direct {v5, p0, v1}, Lo/setChipStartPaddingResource;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    .line 29
    invoke-virtual/range {v0 .. v5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final cancelAll()Ljava/lang/Double;
    .locals 6

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v5, Lo/setHideMotionSpecResource;

    invoke-direct {v5, p0, v1}, Lo/setHideMotionSpecResource;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    .line 37
    invoke-virtual/range {v0 .. v5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 811
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lo/setChipIconSize;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 155
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    move-object v10, p0

    .line 156
    iget-object v0, v10, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 157
    invoke-virtual/range {v0 .. v9}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 150
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 14

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-nez p3, :cond_1

    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    .line 400
    :goto_1
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "screen_view"

    move-object/from16 v4, p2

    .line 401
    invoke-static {v4, v1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {p0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    move-wide/from16 v5, p6

    invoke-virtual {v1, v0, v5, v6}, Lo/setChipEndPadding;->onNavigationEvent(Landroid/os/Bundle;J)V

    return-void

    :cond_2
    move-object/from16 v4, p2

    :cond_3
    move-wide/from16 v5, p6

    const/4 v1, 0x1

    move-object v12, p0

    if-eqz p5, :cond_5

    .line 404
    iget-object v2, v12, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    if-eqz v2, :cond_5

    .line 405
    invoke-static/range {p2 .. p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x1

    :goto_3
    xor-int/lit8 v10, p4, 0x1

    .line 407
    invoke-static {v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 408
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v13, Lo/setCheckableResource;

    const/4 v11, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p6

    move/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lo/setCheckableResource;-><init>(Lo/setChipIconSize;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 409
    invoke-virtual {v0, v13}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Lo/setChipIconTintResource;)V
    .locals 2

    .line 543
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 544
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    if-eqz p1, :cond_1

    .line 545
    iget-object v0, p0, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 546
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 547
    :cond_1
    iput-object p1, p0, Lo/setChipIconSize;->onPostMessage:Lo/setChipIconTintResource;

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 827
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 820
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 826
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 824
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 746
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    invoke-virtual {p0}, Lo/setChipTextResource;->onMessageChannelReady()V

    .line 748
    invoke-direct {p0, p1, p2, p3}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 769
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    invoke-virtual {p0}, Lo/setChipTextResource;->onMessageChannelReady()V

    .line 771
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 810
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 3

    .line 570
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_id"

    .line 571
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    invoke-virtual {p0}, Lo/setChipTextResource;->onMessageChannelReady()V

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p1

    invoke-interface {p1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lo/setChipIconSize;->ICustomTabsCallback(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, v0, p1, p2, p3}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 411
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p4

    invoke-interface {p4}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setChipIconTint;)V
    .locals 1

    .line 549
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 550
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lo/setChipIconSize;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/zzq;IJ)V
    .locals 13

    move-object v10, p0

    move-object v0, p1

    .line 43
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 45
    invoke-virtual {p1}, Lo/zzq;->onNavigationEvent()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lo/zzq;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iget-object v1, v10, Lo/setChipIconSize;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget v2, v10, Lo/setChipIconSize;->asBinder:I

    move v6, p2

    invoke-static {p2, v2}, Lo/zzq;->ICustomTabsCallback(II)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, v10, Lo/setChipIconSize;->asInterface:Lo/zzq;

    invoke-virtual {p1, v2}, Lo/zzq;->ICustomTabsCallback(Lo/zzq;)Z

    move-result v2

    .line 56
    invoke-virtual {p1}, Lo/zzq;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v10, Lo/setChipIconSize;->asInterface:Lo/zzq;

    .line 57
    invoke-virtual {v5}, Lo/zzq;->extraCallback()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 58
    :cond_1
    iget-object v5, v10, Lo/setChipIconSize;->asInterface:Lo/zzq;

    invoke-virtual {p1, v5}, Lo/zzq;->extraCallback(Lo/zzq;)Lo/zzq;

    move-result-object v0

    .line 59
    iput-object v0, v10, Lo/setChipIconSize;->asInterface:Lo/zzq;

    move v9, v4

    move v4, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 61
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 63
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Ignoring lower-priority consent settings, proposed settings"

    .line 65
    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_3
    iget-object v1, v10, Lo/setChipIconSize;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v11

    new-instance v12, Lo/setTextStartPadding;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v9}, Lo/setTextStartPadding;-><init>(Lo/setChipIconSize;Lo/zzq;JIJZ)V

    .line 73
    invoke-virtual {v11, v12}, Lo/setShapeAppearanceModel;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void

    .line 74
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v11

    new-instance v12, Lo/setTextStartPaddingResource;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-wide v5, v7

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lo/setTextStartPaddingResource;-><init>(Lo/setChipIconSize;Lo/zzq;IJZ)V

    .line 75
    invoke-virtual {v11, v12}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 745
    invoke-direct {p0, v0, p1, p2}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 813
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method final onNavigationEvent(JZ)V
    .locals 5

    .line 496
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 497
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 498
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 501
    iget-object v0, v0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0}, Lo/setBoxStrokeColor;->onMessageChannelReady()V

    .line 502
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    .line 503
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    .line 504
    iget-object v2, v1, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    invoke-virtual {v2, p1, p2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 505
    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {p1}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 506
    iget-object p1, v1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {p1, p2}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-static {}, Lo/CustomEventInterstitial;->onPostMessage()Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object v4, Lo/zziq;->onError:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, v1, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    invoke-virtual {p1, v2, v3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 509
    :cond_1
    invoke-virtual {v1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    invoke-virtual {p1}, Lo/setStartIconTintList;->asBinder()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 510
    invoke-virtual {v1, p1}, Lo/setBackgroundTintList;->onPostMessage(Z)V

    .line 511
    :cond_2
    iget-object p1, v1, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    invoke-virtual {p1, p2}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 512
    iget-object p1, v1, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    invoke-virtual {p1, v2, v3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 513
    iget-object p1, v1, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    invoke-virtual {p1, p2}, Lo/setIconPadding;->extraCallback(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    .line 515
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    invoke-virtual {p1}, Lo/setChipSpacingResource;->ICustomTabsService$Stub$Proxy()V

    .line 516
    :cond_3
    invoke-static {}, Lo/CustomEventInterstitial;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object p2, Lo/zziq;->onError:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, p2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 517
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object p1

    iget-object p1, p1, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    invoke-virtual {p1}, Lo/setBoxBackgroundColor;->extraCallback()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    .line 518
    iput-boolean p1, p0, Lo/setChipIconSize;->newSession:Z

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Boolean;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 40
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipStartPadding;

    invoke-direct {v1, p0, p1}, Lo/setChipStartPadding;-><init>(Lo/setChipIconSize;Ljava/lang/Boolean;)V

    .line 41
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    .line 454
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 457
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const-string v0, "allow_personalized_ads"

    .line 458
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_npa"

    if-eqz v0, :cond_3

    .line 459
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 460
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 462
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->newSession:Lo/setStrokeWidthResource;

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    move-object v6, p2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 465
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p2

    iget-object p2, p2, Lo/setBackgroundTintList;->newSession:Lo/setStrokeWidthResource;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    move-object v6, p3

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, p2

    move-object v6, p3

    .line 466
    :goto_2
    iget-object p2, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->cancel()Z

    move-result p2

    if-nez p2, :cond_4

    .line 467
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 469
    :cond_4
    iget-object p2, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->INotificationSideChannel$Stub()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 471
    :cond_5
    new-instance p2, Lo/setError;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/setChipSpacingResource;->onPostMessage(Lo/setError;)V

    return-void
.end method

.method final onNavigationEvent(Lo/zzq;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 79
    invoke-virtual {p1}, Lo/zzq;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/zzq;->ICustomTabsCallback()Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    invoke-virtual {p1}, Lo/setChipSpacingResource;->IconCompatParcelizer()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_0
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->INotificationSideChannel()Z

    move-result v0

    if-eq p1, v0, :cond_4

    .line 82
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0, p1}, Lo/setCheckedIcon;->onNavigationEvent(Z)V

    .line 83
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->IPostMessageService$Stub()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1, v1}, Lo/setChipIconSize;->onPostMessage(Ljava/lang/Boolean;Z)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 814
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 559
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lo/setChipIconSize;->onPostMessage(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;J)V
    .locals 3

    .line 561
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 565
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 566
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 567
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, v0, p2, p3}, Lo/setChipIconSize;->ICustomTabsCallback(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 645
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Lo/setChipTextResource;->onMessageChannelReady()V

    .line 647
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 815
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 817
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 825
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final read()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipEndPadding;->IPostMessageService$Stub()Lo/setCloseIconEndPadding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, v0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 828
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultImpl()V
    .locals 3

    .line 520
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 521
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 522
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->INotificationSideChannel$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->handleMessage:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 526
    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 529
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v2, Lo/setCloseIcon;

    invoke-direct {v2, p0}, Lo/setCloseIcon;-><init>(Lo/setChipIconSize;)V

    invoke-virtual {v0, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    .line 531
    :cond_2
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipSpacingResource;->INotificationSideChannel()V

    .line 532
    iput-boolean v1, p0, Lo/setChipIconSize;->newSession:Z

    .line 533
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 535
    invoke-virtual {p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 537
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 539
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 540
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    .line 541
    invoke-virtual {p0, v0, v2, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 829
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final validateRelationship()Ljava/lang/Boolean;
    .locals 6

    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 20
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v5, Lo/setCloseIconEnabled;

    invoke-direct {v5, p0, v1}, Lo/setCloseIconEnabled;-><init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    .line 21
    invoke-virtual/range {v0 .. v5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 822
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final write()Ljava/lang/String;
    .locals 3

    .line 802
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_id"

    .line 805
    invoke-static {v0, v1}, Lo/setDividerDrawableHorizontal;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 808
    iget-object v1, p0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
