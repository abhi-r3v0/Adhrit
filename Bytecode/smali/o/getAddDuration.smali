.class public final Lo/getAddDuration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J3\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u001c\u0010&\u001a\u00020\u001b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u0018H\u0002J\u0006\u0010)\u001a\u00020\u001bJ\u0010\u0010*\u001a\u00020#2\u0006\u0010 \u001a\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationManager;",
        "",
        "fragment",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabHolderFragment;",
        "containerId",
        "",
        "(Lcom/dreamplug/fabrik/ui/tabholder/TabHolderFragment;I)V",
        "navigationTransactionHelper",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationTransactionHelper;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "tabNavigator",
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigator;",
        "createSwitchFragmentCommand",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$SwitchFragment;",
        "tag",
        "",
        "Landroidx/fragment/app/Fragment;",
        "replace",
        "",
        "resultRequestCode",
        "(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$SwitchFragment;",
        "getFragmentData",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand;",
        "appScreens",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens;",
        "handleNavData",
        "",
        "navigationData",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationData;",
        "isTabSwitchRequired",
        "currentTab",
        "subMenu",
        "onBackPressed",
        "toSubMenuPages",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setMoveDuration;

.field final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/dispatchAnimationStarted;

.field final onPostMessage:Lo/getViewPosition;


# direct methods
.method public constructor <init>(Lo/getViewPosition;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    .line 92
    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 669
    new-instance v0, Lo/getAddDuration$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/getAddDuration$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string p1, "initializer"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50506
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 669
    iput-object p1, p0, Lo/getAddDuration;->extraCallback:Lo/isSameListener;

    .line 93
    iget-object p1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 670
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/dispatchAnimationStarted;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/dispatchAnimationStarted;

    iput-object p1, p0, Lo/getAddDuration;->onMessageChannelReady:Lo/dispatchAnimationStarted;

    .line 94
    new-instance p1, Lo/setMoveDuration;

    iget-object v0, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0b0862

    invoke-direct {p1, v0, v1}, Lo/setMoveDuration;-><init>(Landroidx/fragment/app/Fragment;I)V

    iput-object p1, p0, Lo/getAddDuration;->ICustomTabsCallback:Lo/setMoveDuration;

    .line 50507
    iget-object p1, p0, Lo/getAddDuration;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 50508
    iget-object p1, p1, Lo/getMoveDuration;->ICustomTabsCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 101
    iget-object v0, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/getAddDuration$3;

    invoke-direct {v1, p0}, Lo/getAddDuration$3;-><init>(Lo/getAddDuration;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method private static synthetic onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;
    .locals 1

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 50474
    :cond_0
    new-instance p3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    return-object p3
.end method

.method private final onNavigationEvent(Lo/onGetChildDrawingOrder;)V
    .locals 10

    .line 574
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback$Stub;

    const-string v1, "line_management"

    const-string/jumbo v2, "track_bb_details"

    const-string v3, "home"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 575
    :cond_0
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onMessageChannelReady;

    if-eqz v0, :cond_1

    const-string v0, "control_farm"

    goto :goto_0

    .line 576
    :cond_1
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$extraCallback;

    if-eqz v0, :cond_2

    const-string v0, "benefits_farm"

    goto :goto_0

    .line 577
    :cond_2
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onNavigationEvent;

    if-eqz v0, :cond_3

    const-string v0, "max_farm"

    goto :goto_0

    .line 578
    :cond_3
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onPostMessage;

    if-eqz v0, :cond_4

    const-string v0, "control_manage"

    goto :goto_0

    .line 579
    :cond_4
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "unbilled_farm"

    goto :goto_0

    .line 580
    :cond_5
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asInterface;

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_0

    .line 581
    :cond_6
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onTransact;

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_0

    .line 582
    :cond_7
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asBinder;

    if-eqz v0, :cond_8

    const-string v0, "mutual_fund"

    goto :goto_0

    .line 583
    :cond_8
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$getInterfaceDescriptor;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "win_farm"

    goto :goto_0

    .line 584
    :cond_9
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onRelationshipValidationResult;

    if-eqz v0, :cond_a

    const-string v0, "discover_farm"

    goto :goto_0

    .line 585
    :cond_a
    instance-of v0, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "web_farm"

    goto :goto_0

    :cond_b
    move-object v0, v4

    .line 588
    :goto_0
    iget-object v5, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    .line 50438
    iget-object v5, v5, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v5, :cond_c

    .line 50439
    iget-object v5, v5, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_c
    move-object v5, v4

    .line 50440
    :goto_1
    sget-object v6, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {v0}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_11

    .line 50443
    sget-object v9, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v5, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_d
    const-string v3, "cards"

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v5, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_e
    const-string v3, "lifestyle"

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v5, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    const-string v3, "money"

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v5, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    const/4 v3, 0x1

    goto :goto_2

    :cond_11
    const/4 v3, 0x0

    :goto_2
    const/4 v5, -0x1

    const-string v6, "fragment.childFragmentManager"

    if-eqz v3, :cond_15

    .line 50451
    iget-object v1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50454
    iget-boolean v1, v1, Lo/requestExtraBinder;->postMessage:Z

    if-nez v1, :cond_12

    .line 50452
    iget-object v1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    :cond_12
    if-eqz v4, :cond_13

    .line 589
    iget-object v1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 50455
    new-instance v2, Lo/requestExtraBinder$onMessageChannelReady;

    invoke-direct {v2, v4, v1, v5, v8}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v4, v2, v8}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 590
    :cond_13
    sget-object v1, Lo/buildAdapterChangeFlagsForAnimations;->asBinder:Lo/buildAdapterChangeFlagsForAnimations;

    new-instance v2, Lo/getThumbTintList;

    new-instance v3, Lo/setListener;

    if-nez v0, :cond_14

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_14
    invoke-direct {v3, v0, p1}, Lo/setListener;-><init>(Ljava/lang/String;Lo/onGetChildDrawingOrder;)V

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 591
    :cond_15
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_16

    goto :goto_3

    :cond_16
    const/4 v3, 0x0

    goto :goto_4

    :cond_17
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_23

    .line 592
    sget-object v3, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {v0}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 50457
    iget-object v1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50460
    iget-boolean v1, v1, Lo/requestExtraBinder;->postMessage:Z

    if-nez v1, :cond_18

    .line 50458
    iget-object v1, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_5

    :cond_18
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_1a

    .line 594
    iget-object v2, p0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    .line 50462
    iget-object v2, v2, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v2, :cond_19

    .line 50463
    iget-object v4, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 50464
    :cond_19
    new-instance v2, Lo/requestExtraBinder$onMessageChannelReady;

    invoke-direct {v2, v1, v4, v5, v8}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v1, v2, v8}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 595
    :cond_1a
    sget-object v1, Lo/recordPreLayoutInformation;->onTransact:Lo/recordPreLayoutInformation;

    new-instance v2, Lo/getThumbTintList;

    new-instance v3, Lo/setListener;

    invoke-direct {v3, v0, p1}, Lo/setListener;-><init>(Ljava/lang/String;Lo/onGetChildDrawingOrder;)V

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 598
    :cond_1b
    invoke-static {}, Lo/setTrackResource$onPostMessage;->values()[Lo/setTrackResource$onPostMessage;

    move-result-object v3

    .line 667
    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_1d

    aget-object v6, v3, v5

    .line 50466
    iget-object v6, v6, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 598
    invoke-static {v6, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v8, 0x1

    goto :goto_7

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_1d
    :goto_7
    if-eqz v8, :cond_23

    if-nez v0, :cond_1e

    return-void

    .line 601
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x4ca66349

    if-eq v3, v4, :cond_21

    const v2, -0x187fa292

    if-eq v3, v2, :cond_1f

    goto :goto_8

    .line 602
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 50467
    iget-object v0, p0, Lo/getAddDuration;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    if-eqz p1, :cond_20

    .line 603
    check-cast p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onTransact;

    .line 50468
    iget-object p1, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onTransact;->extraCallback:Lo/onDetach$getDefaultImpl;

    .line 50469
    iget-object p1, p1, Lo/onDetach$getDefaultImpl;->onMessageChannelReady:Ljava/lang/String;

    .line 603
    invoke-virtual {v0, p1, v7}, Lo/getMoveDuration;->extraCallback(Ljava/lang/String;Z)V

    return-void

    :cond_20
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.main.navigation.AppScreens.TabSubMenuScreens.LineManagement"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 605
    :cond_21
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 50470
    iget-object v0, p0, Lo/getAddDuration;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    if-eqz p1, :cond_22

    .line 606
    check-cast p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asInterface;

    .line 50471
    iget-object p1, p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asInterface;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v1, "source"

    .line 606
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50472
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImpl;

    invoke-direct {v1, p1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImpl;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_8

    .line 606
    :cond_22
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.main.navigation.AppScreens.TabSubMenuScreens.Track"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_8
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 8

    .line 636
    iget-object v0, p0, Lo/getAddDuration;->ICustomTabsCallback:Lo/setMoveDuration;

    .line 50491
    iget-object v1, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "fragment.childFragmentManager"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50494
    iget-boolean v1, v1, Lo/requestExtraBinder;->postMessage:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 50492
    iget-object v1, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 50490
    iget v4, v0, Lo/setMoveDuration;->extraCallback:I

    invoke-virtual {v1, v4}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 50477
    :goto_1
    instance-of v4, v1, Lo/createScroller;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 50478
    check-cast v1, Lo/createScroller;

    invoke-interface {v1}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x1

    if-nez v1, :cond_7

    .line 50495
    iget-object v6, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v6

    invoke-static {v6, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50498
    iget-boolean v6, v6, Lo/requestExtraBinder;->postMessage:Z

    if-nez v6, :cond_3

    .line 50496
    iget-object v6, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_4

    .line 50499
    iget-object v7, v6, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v6, v6, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-le v6, v4, :cond_7

    .line 50500
    iget-object v1, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50503
    iget-boolean v1, v1, Lo/requestExtraBinder;->postMessage:Z

    if-nez v1, :cond_5

    .line 50501
    iget-object v0, v0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_6

    .line 50504
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v3, v2, v5}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v5}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method final extraCallback(Lo/getRemoveDuration;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 114
    instance-of v2, v1, Lo/onGetChildDrawingOrder;

    if-eqz v2, :cond_69

    iget-object v2, v0, Lo/getAddDuration;->ICustomTabsCallback:Lo/setMoveDuration;

    check-cast v1, Lo/onGetChildDrawingOrder;

    .line 1128
    instance-of v3, v1, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;

    const/4 v4, 0x1

    const-string v5, "extra"

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 1129
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/fixLayoutEndGap;

    invoke-direct {v7}, Lo/fixLayoutEndGap;-><init>()V

    .line 1130
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;

    .line 2220
    iget-object v1, v1, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Lo/onDetach$warmup;

    .line 1130
    check-cast v1, Landroid/os/Parcelable;

    .line 3016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1131
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 3633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1129
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1133
    :cond_0
    instance-of v3, v1, Lo/onGetChildDrawingOrder$validateRelationship;

    if-eqz v3, :cond_1

    .line 1134
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/animateMove;

    invoke-direct {v7}, Lo/animateMove;-><init>()V

    .line 1135
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$validateRelationship;

    .line 4224
    iget-object v1, v1, Lo/onGetChildDrawingOrder$validateRelationship;->ICustomTabsCallback:Lo/onDetach$updateVisuals;

    .line 1135
    check-cast v1, Landroid/os/Parcelable;

    .line 5016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1136
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 5633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1134
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1138
    :cond_1
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;

    if-eqz v3, :cond_2

    .line 1139
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/onActivityResumed;

    invoke-direct {v7}, Lo/onActivityResumed;-><init>()V

    .line 1140
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;

    .line 6228
    iget-object v1, v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;->onMessageChannelReady:Lo/onActivityResumed$onNavigationEvent;

    .line 1140
    check-cast v1, Landroid/os/Parcelable;

    .line 7016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1141
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 7633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1139
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1143
    :cond_2
    instance-of v3, v1, Lo/onGetChildDrawingOrder$AudioAttributesImplApi21Parcelizer;

    if-eqz v3, :cond_3

    .line 1144
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/isLayoutRTL;

    invoke-direct {v7}, Lo/isLayoutRTL;-><init>()V

    .line 1145
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$AudioAttributesImplApi21Parcelizer;

    .line 8175
    iget-object v1, v1, Lo/onGetChildDrawingOrder$AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/updateLayoutStateToFillEnd;

    .line 1145
    check-cast v1, Landroid/os/Parcelable;

    .line 9016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1146
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 9633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1144
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1148
    :cond_3
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onMessageChannelReady;

    if-eqz v3, :cond_4

    .line 1149
    new-instance v3, Lo/onActivityPostResumed;

    invoke-direct {v3}, Lo/onActivityPostResumed;-><init>()V

    .line 1150
    check-cast v3, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onMessageChannelReady;

    .line 10249
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onMessageChannelReady;->onMessageChannelReady:Lo/onDetach$onMessageChannelReady;

    .line 1150
    check-cast v1, Landroid/os/Parcelable;

    .line 11016
    invoke-static {v3, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1151
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 11633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    const-string v5, "ACTIVATE_CRED_PROTECT"

    invoke-direct {v1, v5, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1149
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1153
    :cond_4
    instance-of v3, v1, Lo/onGetChildDrawingOrder$IPostMessageService$Stub;

    if-eqz v3, :cond_5

    .line 1154
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/getPositionDescription;

    invoke-direct {v7}, Lo/getPositionDescription;-><init>()V

    .line 1155
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$IPostMessageService$Stub;

    .line 12257
    iget-object v1, v1, Lo/onGetChildDrawingOrder$IPostMessageService$Stub;->onNavigationEvent:Lo/getValue;

    .line 1155
    check-cast v1, Landroid/os/Parcelable;

    .line 13016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1156
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 13633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1154
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1158
    :cond_5
    sget-object v3, Lo/onGetChildDrawingOrder$getExtras;->onPostMessage:Lo/onGetChildDrawingOrder$getExtras;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1159
    sget-object v1, Lo/onGetChildDrawingOrder$getExtras;->onPostMessage:Lo/onGetChildDrawingOrder$getExtras;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/getVerticalMargins;

    invoke-direct {v3}, Lo/getVerticalMargins;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 14633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1159
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1161
    :cond_6
    instance-of v3, v1, Lo/onGetChildDrawingOrder$IPostMessageService;

    if-eqz v3, :cond_7

    .line 1162
    move-object v3, v1

    check-cast v3, Lo/onGetChildDrawingOrder$IPostMessageService;

    .line 15167
    iget-object v3, v3, Lo/onGetChildDrawingOrder$IPostMessageService;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;

    .line 1163
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-direct {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;-><init>()V

    .line 1164
    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    .line 16016
    invoke-static {v4, v3, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1165
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1163
    move-object v8, v1

    check-cast v8, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1167
    :cond_7
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub;

    if-eqz v3, :cond_8

    .line 1168
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lo/DropDownPreference;

    invoke-direct {v3}, Lo/DropDownPreference;-><init>()V

    .line 1169
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub;

    .line 16171
    iget-object v1, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onDetach$asBinder;

    .line 1169
    check-cast v1, Landroid/os/Parcelable;

    .line 17016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1170
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1168
    move-object v9, v3

    check-cast v9, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1173
    :cond_8
    instance-of v3, v1, Lo/onGetChildDrawingOrder$updateVisuals;

    if-eqz v3, :cond_9

    .line 1174
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lo/getItemCount;

    invoke-direct {v3}, Lo/getItemCount;-><init>()V

    .line 1175
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$updateVisuals;

    .line 17366
    iget-object v1, v1, Lo/onGetChildDrawingOrder$updateVisuals;->onNavigationEvent:Lo/onDetach$getInterfaceDescriptor;

    .line 1175
    check-cast v1, Landroid/os/Parcelable;

    .line 18016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1176
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1174
    move-object v9, v3

    check-cast v9, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1179
    :cond_9
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onLoadChildren;

    if-eqz v3, :cond_e

    .line 1180
    move-object v3, v1

    check-cast v3, Lo/onGetChildDrawingOrder$onLoadChildren;

    .line 18270
    iget-object v5, v3, Lo/onGetChildDrawingOrder$onLoadChildren;->extraCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    .line 19000
    iget-object v7, v5, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 20000
    iget-object v7, v5, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 1181
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    :cond_a
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_d

    .line 1182
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v9, ".dreamplug.in"

    const-string v10, "$this$endsWith"

    .line 20354
    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "suffix"

    invoke-static {v9, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20356
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v4, :cond_d

    .line 1183
    :cond_b
    iget-object v1, v0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1, v7}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1184
    :cond_c
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1186
    :cond_d
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    invoke-static {v5}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 21270
    iget-boolean v3, v3, Lo/onGetChildDrawingOrder$onLoadChildren;->onMessageChannelReady:Z

    .line 21633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v4, v3, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1186
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1190
    :cond_e
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onNavigationEvent;

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/getTitleTextView;

    invoke-direct {v3}, Lo/getTitleTextView;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 22633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1190
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1192
    :cond_f
    instance-of v3, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    if-eqz v3, :cond_10

    .line 1193
    move-object v3, v1

    check-cast v3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    .line 23278
    iget-object v3, v3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    .line 1194
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;

    invoke-static {v3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 23633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1194
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1197
    :cond_10
    instance-of v3, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;

    if-eqz v3, :cond_11

    .line 1198
    move-object v3, v1

    check-cast v3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;

    .line 24282
    iget-object v3, v3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    .line 1199
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lo/clearOnChildAttachStateChangeListeners;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;

    const-string v5, "leaderboardData"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24390
    new-instance v7, Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {v7}, Lo/clearOnChildAttachStateChangeListeners;-><init>()V

    .line 24391
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 24392
    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v8, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24391
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1199
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 24633
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v3, v1, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1199
    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1202
    :cond_11
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub$Proxy;

    const/4 v7, 0x0

    if-eqz v3, :cond_12

    new-array v3, v4, [Lo/addWrite;

    .line 25043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v8, "sdk_name"

    const-string v9, "genie"

    invoke-direct {v5, v8, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v7

    const-string v5, "pairs"

    .line 1203
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "payment_process_load"

    .line 1203
    invoke-static {v3, v5}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 1204
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getChildTop;->extraCallback:Lo/getChildTop$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub$Proxy;

    .line 25286
    iget-object v1, v1, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub$Proxy;->onPostMessage:Landroid/os/Bundle;

    .line 26176
    new-instance v4, Lo/getChildTop;

    invoke-direct {v4}, Lo/getChildTop;-><init>()V

    .line 26177
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1204
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 26633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v4, v7, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1204
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1206
    :cond_12
    instance-of v3, v1, Lo/onGetChildDrawingOrder$IconCompatParcelizer;

    if-eqz v3, :cond_13

    .line 1207
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/findReferenceChild;

    invoke-direct {v4}, Lo/findReferenceChild;-><init>()V

    .line 1208
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$IconCompatParcelizer;

    .line 27474
    iget-object v1, v1, Lo/onGetChildDrawingOrder$IconCompatParcelizer;->onPostMessage:Lo/onDetach$AudioAttributesCompatParcelizer;

    .line 1208
    check-cast v1, Landroid/os/Parcelable;

    .line 28016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1209
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 28633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v4, v7, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1207
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1213
    :cond_13
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ItemCallbackApi23;

    if-eqz v3, :cond_14

    .line 1214
    new-instance v1, Lo/addChildDrawingOrderCallback;

    invoke-direct {v1}, Lo/addChildDrawingOrderCallback;-><init>()V

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30016
    invoke-static {v3, v6, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1214
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v1

    check-cast v6, Lo/onAudioInfoChanged;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-string v5, "StashOrderStatusScreen"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1217
    :cond_14
    instance-of v3, v1, Lo/onGetChildDrawingOrder$search;

    if-eqz v3, :cond_15

    .line 1218
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lo/getMaxCachedTiles;->extraCallback:Lo/getMaxCachedTiles$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$search;

    .line 30298
    iget-object v1, v1, Lo/onGetChildDrawingOrder$search;->ICustomTabsCallback:Lo/getMaxCachedTiles$onMessageChannelReady;

    .line 31078
    new-instance v4, Lo/getMaxCachedTiles;

    invoke-direct {v4}, Lo/getMaxCachedTiles;-><init>()V

    .line 31079
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    .line 32016
    invoke-static {v6, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1218
    move-object v10, v4

    check-cast v10, Lo/onAudioInfoChanged;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1221
    :cond_15
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getItem;

    if-eqz v3, :cond_16

    .line 1222
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/isRefreshPending;->onMessageChannelReady:Lo/isRefreshPending$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$getItem;

    .line 32290
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getItem;->onMessageChannelReady:Landroid/os/Bundle;

    .line 32555
    new-instance v4, Lo/isRefreshPending;

    invoke-direct {v4}, Lo/isRefreshPending;-><init>()V

    .line 32556
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1222
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 32633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v4, v7, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1222
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1224
    :cond_16
    sget-object v3, Lo/onGetChildDrawingOrder$connect;->onPostMessage:Lo/onGetChildDrawingOrder$connect;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1225
    sget-object v1, Lo/onGetChildDrawingOrder$connect;->onPostMessage:Lo/onGetChildDrawingOrder$connect;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/layoutForPredictiveAnimations;

    invoke-direct {v3}, Lo/layoutForPredictiveAnimations;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 33633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1225
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1228
    :cond_17
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onServiceConnected;

    if-eqz v3, :cond_18

    .line 1229
    new-instance v3, Lo/setContentInsetEndWithActions;

    invoke-direct {v3}, Lo/setContentInsetEndWithActions;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onServiceConnected;

    .line 34240
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onServiceConnected;->onMessageChannelReady:Lo/onDetach$getDefaultImpl;

    .line 1229
    check-cast v1, Landroid/os/Parcelable;

    .line 35016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1229
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "CredUpiFragment"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1232
    :cond_18
    sget-object v3, Lo/onGetChildDrawingOrder$disconnect;->extraCallback:Lo/onGetChildDrawingOrder$disconnect;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1233
    sget-object v1, Lo/onGetChildDrawingOrder$disconnect;->extraCallback:Lo/onGetChildDrawingOrder$disconnect;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/findViewByPosition;

    invoke-direct {v3}, Lo/findViewByPosition;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 35633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v1, v3, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1233
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1235
    :cond_19
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    if-eqz v3, :cond_1e

    .line 1237
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;

    if-eqz v3, :cond_1a

    iget-object v1, v0, Lo/getAddDuration;->onMessageChannelReady:Lo/dispatchAnimationStarted;

    invoke-static {v1}, Lo/dispatchAnimationStarted;->extraCallback(Lo/dispatchAnimationStarted;)V

    goto :goto_1

    .line 1238
    :cond_1a
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lo/getAddDuration;->onMessageChannelReady:Lo/dispatchAnimationStarted;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;

    .line 36061
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;->ICustomTabsCallback:Lo/onDetach$ICustomTabsService;

    .line 1238
    invoke-virtual {v3, v1}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V

    goto :goto_1

    .line 1239
    :cond_1b
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    if-eqz v3, :cond_1c

    iget-object v1, v0, Lo/getAddDuration;->onMessageChannelReady:Lo/dispatchAnimationStarted;

    .line 37033
    sget-object v3, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    check-cast v3, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 38018
    iget-object v1, v1, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v4, Lo/getThumbTintList;

    invoke-direct {v4, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 1240
    :cond_1c
    instance-of v1, v1, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lo/getAddDuration;->onMessageChannelReady:Lo/dispatchAnimationStarted;

    .line 38037
    sget-object v3, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;->onPostMessage:Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    check-cast v3, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 39018
    iget-object v1, v1, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v4, Lo/getThumbTintList;

    invoke-direct {v4, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1242
    :cond_1d
    :goto_1
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1244
    :cond_1e
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;

    if-eqz v3, :cond_1f

    .line 1245
    invoke-direct {v0, v1}, Lo/getAddDuration;->onNavigationEvent(Lo/onGetChildDrawingOrder;)V

    .line 1246
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1248
    :cond_1f
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getServiceComponent;

    if-eqz v3, :cond_20

    .line 1249
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/computeScrollRange;

    invoke-direct {v7}, Lo/computeScrollRange;-><init>()V

    .line 1250
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$getServiceComponent;

    .line 39310
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getServiceComponent;->onPostMessage:Lo/updateLayoutStateToFillEnd;

    .line 1250
    check-cast v1, Landroid/os/Parcelable;

    .line 40016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1251
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 40633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1249
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1254
    :cond_20
    instance-of v3, v1, Lo/onGetChildDrawingOrder$unsubscribe;

    if-eqz v3, :cond_21

    .line 1255
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lo/getDecoratedBottom;

    invoke-direct {v7}, Lo/getDecoratedBottom;-><init>()V

    .line 1256
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$unsubscribe;

    .line 41314
    iget-object v1, v1, Lo/onGetChildDrawingOrder$unsubscribe;->onPostMessage:Lo/updateLayoutStateToFillEnd;

    .line 1256
    check-cast v1, Landroid/os/Parcelable;

    .line 42016
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1257
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 42633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1255
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1260
    :cond_21
    instance-of v3, v1, Lo/onGetChildDrawingOrder$cancel;

    if-eqz v3, :cond_23

    .line 1261
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1262
    new-instance v3, Lo/absorbGlows;

    invoke-direct {v3}, Lo/absorbGlows;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$cancel;

    .line 43318
    iget-object v1, v1, Lo/onGetChildDrawingOrder$cancel;->ICustomTabsCallback:Lo/absorbGlows$onNavigationEvent;

    .line 1262
    check-cast v1, Landroid/os/Parcelable;

    .line 44016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1262
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "FabrikShareReferralFragment"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1264
    :cond_22
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1268
    :cond_23
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getNotifyChildrenChangedOptions;

    if-eqz v3, :cond_25

    .line 1269
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1270
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/ensureLeftGlow;

    invoke-direct {v4}, Lo/ensureLeftGlow;-><init>()V

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$getNotifyChildrenChangedOptions;

    .line 44322
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getNotifyChildrenChangedOptions;->onMessageChannelReady:Lo/ensureLeftGlow$extraCallback;

    .line 1270
    check-cast v1, Landroid/os/Parcelable;

    .line 45016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1270
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 45633
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v4, v7, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1270
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1272
    :cond_24
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1276
    :cond_25
    instance-of v3, v1, Lo/onGetChildDrawingOrder$setCallbacksMessenger;

    if-eqz v3, :cond_27

    .line 1277
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1278
    new-instance v3, Lo/ensureTopGlow;

    invoke-direct {v3}, Lo/ensureTopGlow;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$setCallbacksMessenger;

    .line 46326
    iget-object v1, v1, Lo/onGetChildDrawingOrder$setCallbacksMessenger;->onNavigationEvent:Lo/onDetach$getDefaultImpl;

    .line 1278
    check-cast v1, Landroid/os/Parcelable;

    .line 47016
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1278
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "FabrikShareReferralFragment"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1280
    :cond_26
    sget-object v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;->ICustomTabsCallback:Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$extraCallback;

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1283
    :cond_27
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v3, :cond_28

    .line 1284
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    .line 1285
    sget-object v7, Lo/convertFocusDirectionToLayoutDirection;->ICustomTabsCallback:Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;

    .line 1286
    new-instance v7, Lo/convertFocusDirectionToLayoutDirection$onMessageChannelReady;

    .line 1287
    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    .line 47330
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback:Ljava/lang/String;

    .line 1286
    invoke-direct {v7, v1}, Lo/convertFocusDirectionToLayoutDirection$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-static {v7, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48097
    new-instance v1, Lo/convertFocusDirectionToLayoutDirection;

    invoke-direct {v1}, Lo/convertFocusDirectionToLayoutDirection;-><init>()V

    .line 48098
    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast v7, Landroid/os/Parcelable;

    .line 49016
    invoke-static {v1, v7, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 49633
    new-instance v5, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v5, v3, v1, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1284
    move-object v1, v5

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1292
    :cond_28
    instance-of v3, v1, Lo/onGetChildDrawingOrder$isConnected;

    if-eqz v3, :cond_29

    .line 1293
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    .line 1294
    new-instance v7, Lo/recycleViewsFromEnd;

    invoke-direct {v7}, Lo/recycleViewsFromEnd;-><init>()V

    .line 1295
    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$isConnected;

    .line 50302
    iget-object v1, v1, Lo/onGetChildDrawingOrder$isConnected;->extraCallback:Lo/recycleViewsFromEnd$onNavigationEvent;

    .line 1295
    check-cast v1, Landroid/os/Parcelable;

    .line 50303
    invoke-static {v7, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1296
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 50306
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v7, v4, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1293
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1299
    :cond_29
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onTransact;

    if-eqz v3, :cond_2a

    .line 1300
    new-instance v3, Lo/setReturnTransition;

    invoke-direct {v3}, Lo/setReturnTransition;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onTransact;

    .line 50307
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onTransact;->onPostMessage:Lo/onDetach$getDefaultImpl;

    .line 1300
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "AutoDebitPitchDialog"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1303
    :cond_2a
    instance-of v3, v1, Lo/onGetChildDrawingOrder$AudioAttributesCompatParcelizer;

    if-eqz v3, :cond_2b

    .line 1304
    new-instance v3, Lo/releaseVelocityTracker;

    invoke-direct {v3}, Lo/releaseVelocityTracker;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$AudioAttributesCompatParcelizer;

    .line 50308
    iget-object v1, v1, Lo/onGetChildDrawingOrder$AudioAttributesCompatParcelizer;->extraCallback:Lo/onDetach$INotificationSideChannel$Default;

    .line 1304
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "LendingRepayment"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1307
    :cond_2b
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onConnected;

    const/16 v8, 0x8

    if-eqz v3, :cond_2c

    .line 1308
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/onSmoothScrollerStopped;

    invoke-direct {v4}, Lo/onSmoothScrollerStopped;-><init>()V

    .line 1309
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onConnected;

    .line 50309
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onConnected;->onMessageChannelReady:Lo/onDetach$cancel;

    .line 1309
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1310
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1308
    invoke-static {v3, v4, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1313
    :cond_2c
    instance-of v3, v1, Lo/onGetChildDrawingOrder$write;

    if-eqz v3, :cond_2d

    .line 1314
    new-instance v3, Lo/findSwipedView;

    invoke-direct {v3}, Lo/findSwipedView;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$write;

    .line 50310
    iget-object v1, v1, Lo/onGetChildDrawingOrder$write;->ICustomTabsCallback:Lo/onDetach$AudioAttributesCompatParcelizer;

    .line 1314
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "LendingRepaymentConfirmation"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1317
    :cond_2d
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onError;

    if-eqz v3, :cond_2e

    .line 1318
    new-instance v3, Lo/swipeIfNecessary;

    invoke-direct {v3}, Lo/swipeIfNecessary;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onError;

    .line 50311
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onError;->onNavigationEvent:Lo/onDetach$INotificationSideChannel$Stub$Proxy;

    .line 1318
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "LendingRepaymentConfirmation"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1322
    :cond_2e
    instance-of v3, v1, Lo/onGetChildDrawingOrder$asInterface;

    if-eqz v3, :cond_2f

    .line 1323
    new-instance v3, Lo/scrollIfNecessary;

    invoke-direct {v3}, Lo/scrollIfNecessary;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$asInterface;

    .line 50312
    iget-object v1, v1, Lo/onGetChildDrawingOrder$asInterface;->ICustomTabsCallback:Lo/onDetach$ICustomTabsCallback$Stub;

    .line 1323
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "BankGeneralCharges"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1326
    :cond_2f
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onProgressUpdate;

    if-eqz v3, :cond_30

    .line 1327
    new-instance v3, Lo/ItemTouchHelper$Callback;

    invoke-direct {v3}, Lo/ItemTouchHelper$Callback;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onProgressUpdate;

    .line 50313
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onProgressUpdate;->ICustomTabsCallback:Lo/onDetach$INotificationSideChannel$Default;

    .line 1327
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    const/16 v1, 0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-string v5, "StashName"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1329
    :cond_30
    instance-of v3, v1, Lo/onGetChildDrawingOrder$setInternalConnectionCallback;

    if-eqz v3, :cond_31

    .line 1330
    new-instance v3, Lo/checkSelectForSwipe;

    invoke-direct {v3}, Lo/checkSelectForSwipe;-><init>()V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$setInternalConnectionCallback;

    .line 50314
    iget-object v1, v1, Lo/onGetChildDrawingOrder$setInternalConnectionCallback;->onNavigationEvent:Lo/onDetach$IPostMessageService$Stub$Proxy;

    .line 1330
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "RepaymentScheduleDialog"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1333
    :cond_31
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getSessionToken;

    const/16 v9, 0xc

    if-eqz v3, :cond_32

    .line 1334
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/onItemsRemoved;

    invoke-direct {v3}, Lo/onItemsRemoved;-><init>()V

    .line 1335
    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1336
    sget-object v4, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1334
    invoke-static {v1, v3, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1339
    :cond_32
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback;

    if-eqz v3, :cond_33

    .line 1340
    new-instance v3, Lo/registerForContextMenu;

    invoke-direct {v3}, Lo/registerForContextMenu;-><init>()V

    .line 1341
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback;

    .line 50316
    iget-object v1, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback;->onPostMessage:Lo/onDetach$extraCallback;

    .line 1341
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1342
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1340
    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "AutoDebitBankDialog"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1344
    :cond_33
    instance-of v3, v1, Lo/onGetChildDrawingOrder$extraCallback;

    if-eqz v3, :cond_35

    .line 1345
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/setExitSharedElementCallback;

    invoke-direct {v4}, Lo/setExitSharedElementCallback;-><init>()V

    .line 1346
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$extraCallback;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder$extraCallback;->ICustomTabsCallback()Lo/onDetach$ICustomTabsCallback;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-static {v4, v5}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1347
    sget-object v5, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder$extraCallback;->ICustomTabsCallback()Lo/onDetach$ICustomTabsCallback;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 50317
    iget-object v6, v1, Lo/onDetach$ICustomTabsCallback;->extraCallback:Ljava/lang/Integer;

    .line 50318
    :cond_34
    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    invoke-direct {v1, v3, v4, v7, v6}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V

    .line 1345
    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1350
    :cond_35
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onPostMessage;

    if-eqz v3, :cond_36

    .line 1351
    new-instance v3, Lo/setEnterSharedElementCallback;

    invoke-direct {v3}, Lo/setEnterSharedElementCallback;-><init>()V

    .line 1352
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onPostMessage;

    .line 50319
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onPostMessage;->ICustomTabsCallback:Lo/onDetach$onNavigationEvent;

    .line 1352
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1353
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1351
    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "AutoDebitConfirmDialog"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1356
    :cond_36
    instance-of v3, v1, Lo/onGetChildDrawingOrder$asBinder;

    if-eqz v3, :cond_37

    .line 1357
    new-instance v3, Lo/unregisterForContextMenu;

    invoke-direct {v3}, Lo/unregisterForContextMenu;-><init>()V

    .line 1358
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$asBinder;

    .line 50320
    iget-object v1, v1, Lo/onGetChildDrawingOrder$asBinder;->onMessageChannelReady:Lo/onDetach$onNavigationEvent;

    .line 1358
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1359
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1357
    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "AutoDebitConfirmResultDialog"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1362
    :cond_37
    instance-of v3, v1, Lo/onGetChildDrawingOrder$warmup;

    if-eqz v3, :cond_38

    .line 1363
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    .line 1364
    new-instance v4, Lo/PreferenceCategory;

    invoke-direct {v4}, Lo/PreferenceCategory;-><init>()V

    .line 1365
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$warmup;

    .line 50321
    iget-object v1, v1, Lo/onGetChildDrawingOrder$warmup;->extraCallback:Lo/onDetach$newSession;

    .line 1365
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1366
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1363
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1369
    :cond_38
    instance-of v3, v1, Lo/onGetChildDrawingOrder$mayLaunchUrl;

    if-eqz v3, :cond_39

    .line 1370
    new-instance v3, Lo/fill;

    invoke-direct {v3}, Lo/fill;-><init>()V

    .line 1371
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$mayLaunchUrl;

    .line 50322
    iget-object v1, v1, Lo/onGetChildDrawingOrder$mayLaunchUrl;->ICustomTabsCallback:Lo/fill$onMessageChannelReady;

    .line 1371
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1372
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1370
    move-object v6, v3

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "CitySelection"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1374
    :cond_39
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsService;

    if-eqz v3, :cond_3a

    .line 1375
    new-instance v1, Lo/setUpdateThrottle;

    invoke-direct {v1}, Lo/setUpdateThrottle;-><init>()V

    .line 1376
    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1377
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1375
    move-object v6, v1

    check-cast v6, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const-string v5, "BankRewardPoint"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1380
    :cond_3a
    instance-of v3, v1, Lo/onGetChildDrawingOrder$requestPostMessageChannel;

    const-string/jumbo v10, "show_email_linking"

    const-string/jumbo v11, "source"

    if-eqz v3, :cond_3c

    .line 1381
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$requestPostMessageChannel;

    .line 50324
    iget-object v1, v1, Lo/onGetChildDrawingOrder$requestPostMessageChannel;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$onNavigationEvent;

    .line 50325
    new-instance v4, Lo/AsyncDifferConfig$Builder;

    invoke-direct {v4}, Lo/AsyncDifferConfig$Builder;-><init>()V

    .line 50326
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_3b

    .line 50336
    iget-object v6, v1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const-string v8, "instrument_id"

    .line 50328
    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50337
    iget-object v6, v1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    .line 50329
    invoke-static {v6}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v6

    const-string v8, "link_data"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50338
    iget-object v6, v1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 50330
    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50339
    iget-boolean v6, v1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    const-string/jumbo v8, "show_success_dialog"

    .line 50331
    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50340
    iget-boolean v1, v1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    .line 50332
    invoke-virtual {v5, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50334
    :cond_3b
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1381
    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1384
    :cond_3c
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    if-eqz v3, :cond_3d

    .line 1385
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getSpanGroupIndex;->onPostMessage:Lo/getSpanGroupIndex$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    .line 50341
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat;->onMessageChannelReady:Lo/onDetach$IPostMessageService$Stub;

    .line 1385
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50342
    new-instance v4, Lo/getSpanGroupIndex;

    invoke-direct {v4}, Lo/getSpanGroupIndex;-><init>()V

    .line 50343
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1385
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1388
    :cond_3d
    instance-of v3, v1, Lo/onGetChildDrawingOrder$read;

    if-eqz v3, :cond_3e

    .line 1389
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/onFocusSearchFailed;

    invoke-direct {v4}, Lo/onFocusSearchFailed;-><init>()V

    .line 1390
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$read;

    .line 50345
    iget-object v1, v1, Lo/onGetChildDrawingOrder$read;->onNavigationEvent:Lo/onDetach$setDefaultImpl;

    .line 1390
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1391
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1389
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1394
    :cond_3e
    instance-of v3, v1, Lo/onGetChildDrawingOrder$RemoteActionCompatParcelizer;

    if-eqz v3, :cond_3f

    .line 1395
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/scrollVerticallyBy;

    invoke-direct {v4}, Lo/scrollVerticallyBy;-><init>()V

    .line 1396
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$RemoteActionCompatParcelizer;

    .line 50346
    iget-object v1, v1, Lo/onGetChildDrawingOrder$RemoteActionCompatParcelizer;->onNavigationEvent:Lo/onDetach$validateRelationship;

    .line 1396
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1397
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1395
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1400
    :cond_3f
    instance-of v3, v1, Lo/onGetChildDrawingOrder$extraCommand;

    if-eqz v3, :cond_41

    .line 1401
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lo/getDiffCallback;->ICustomTabsCallback:Lo/getDiffCallback$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$extraCommand;

    .line 50347
    iget-object v1, v1, Lo/onGetChildDrawingOrder$extraCommand;->extraCallback:Lo/getDiffCallback$onPostMessage;

    .line 50348
    new-instance v4, Lo/getDiffCallback;

    invoke-direct {v4}, Lo/getDiffCallback;-><init>()V

    .line 50349
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_40

    .line 50357
    iget-object v6, v1, Lo/getDiffCallback$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v7, "SOURCE"

    .line 50351
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50358
    iget-boolean v6, v1, Lo/getDiffCallback$onPostMessage;->onMessageChannelReady:Z

    .line 50352
    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50359
    iget-object v1, v1, Lo/getDiffCallback$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    .line 50353
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v6, "card_link_data"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50355
    :cond_40
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1401
    move-object v14, v4

    check-cast v14, Lo/onAudioInfoChanged;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1404
    :cond_41
    instance-of v3, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel;

    if-eqz v3, :cond_42

    .line 1405
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lo/registerOnLoadCanceledListener;->extraCallback:Lo/registerOnLoadCanceledListener$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$INotificationSideChannel;

    .line 50360
    iget-object v1, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel;->ICustomTabsCallback:Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    .line 50361
    new-instance v4, Lo/registerOnLoadCanceledListener;

    invoke-direct {v4}, Lo/registerOnLoadCanceledListener;-><init>()V

    .line 50362
    move-object v5, v4

    check-cast v5, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v5, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1405
    move-object v14, v4

    check-cast v14, Lo/onAudioInfoChanged;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1408
    :cond_42
    instance-of v3, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;

    if-eqz v3, :cond_44

    .line 1409
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lo/cancelLoad;->onNavigationEvent:Lo/cancelLoad$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;

    .line 50364
    iget-object v1, v1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/cancelLoad$onMessageChannelReady;

    .line 50365
    new-instance v4, Lo/cancelLoad;

    invoke-direct {v4}, Lo/cancelLoad;-><init>()V

    .line 50366
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_43

    .line 50375
    iget-object v6, v1, Lo/cancelLoad$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 50368
    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50376
    iget-object v6, v1, Lo/cancelLoad$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const-string v7, "instrumentId"

    .line 50369
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50377
    iget-boolean v6, v1, Lo/cancelLoad$onMessageChannelReady;->extraCallback:Z

    const-string v7, "needToShowStatement"

    .line 50370
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50378
    iget-object v1, v1, Lo/cancelLoad$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    const-string v6, "issuer"

    .line 50371
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50373
    :cond_43
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1409
    move-object v14, v4

    check-cast v14, Lo/onAudioInfoChanged;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1411
    :cond_44
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback;

    if-eqz v3, :cond_45

    .line 1412
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lo/notifyItemRangeRemoved;

    invoke-direct {v1}, Lo/notifyItemRangeRemoved;-><init>()V

    move-object v14, v1

    check-cast v14, Lo/onAudioInfoChanged;

    sget-object v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    .line 50379
    invoke-static {}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub()I

    move-result v1

    .line 1412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x8

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1415
    :cond_45
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onRelationshipValidationResult;

    if-eqz v3, :cond_46

    .line 1416
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/getReturnTransition;

    invoke-direct {v3}, Lo/getReturnTransition;-><init>()V

    .line 1417
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onRelationshipValidationResult;

    .line 50380
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onRelationshipValidationResult;->onMessageChannelReady:Lo/onDetach$onPostMessage;

    .line 1417
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1418
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1416
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1421
    :cond_46
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onResult;

    if-eqz v3, :cond_47

    .line 1422
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/getRecycledView;

    invoke-direct {v3}, Lo/getRecycledView;-><init>()V

    .line 1423
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onResult;

    .line 50381
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onResult;->onMessageChannelReady:Lo/getRecycledView$onPostMessage;

    .line 1423
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1424
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1422
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1427
    :cond_47
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onConnectionFailed;

    if-eqz v3, :cond_48

    .line 1428
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/getRecycledViewCount;

    invoke-direct {v3}, Lo/getRecycledViewCount;-><init>()V

    .line 1429
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onConnectionFailed;

    .line 50382
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onConnectionFailed;->onMessageChannelReady:Lo/getRecycledViewCount$onMessageChannelReady;

    .line 1429
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1430
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1428
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1433
    :cond_48
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v3, :cond_49

    .line 1434
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/factorInCreateTime;

    invoke-direct {v3}, Lo/factorInCreateTime;-><init>()V

    .line 1435
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    .line 50383
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onMessageChannelReady:Lo/factorInCreateTime$extraCallback;

    .line 1435
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1436
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1434
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1439
    :cond_49
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getDefaultImpl;

    if-eqz v3, :cond_4a

    .line 1440
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/FullLifecycleObserverAdapter;

    invoke-direct {v4}, Lo/FullLifecycleObserverAdapter;-><init>()V

    .line 1441
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$getDefaultImpl;

    .line 50384
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getDefaultImpl;->ICustomTabsCallback:Lo/onActivityDestroyed;

    .line 1441
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1442
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1440
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1445
    :cond_4a
    instance-of v3, v1, Lo/onGetChildDrawingOrder$setDefaultImpl;

    if-eqz v3, :cond_4b

    .line 1446
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/LifecycleController$observer$1;

    invoke-direct {v4}, Lo/LifecycleController$observer$1;-><init>()V

    .line 1447
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$setDefaultImpl;

    .line 50385
    iget-object v1, v1, Lo/onGetChildDrawingOrder$setDefaultImpl;->onPostMessage:Lo/LifecycleController$observer$1$ICustomTabsCallback;

    .line 1447
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1448
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1446
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1451
    :cond_4b
    instance-of v3, v1, Lo/onGetChildDrawingOrder$cancelAll;

    if-eqz v3, :cond_4c

    .line 1452
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/onActivityStarted;

    invoke-direct {v4}, Lo/onActivityStarted;-><init>()V

    .line 1453
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$cancelAll;

    .line 50386
    iget-object v1, v1, Lo/onGetChildDrawingOrder$cancelAll;->ICustomTabsCallback:Lo/onActivityStarted$extraCallback;

    .line 1453
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1454
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1452
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1457
    :cond_4c
    instance-of v3, v1, Lo/onGetChildDrawingOrder$IPostMessageService$Stub$Proxy;

    if-eqz v3, :cond_4d

    .line 1458
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/animateAdd;

    invoke-direct {v3}, Lo/animateAdd;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1461
    :cond_4d
    instance-of v3, v1, Lo/onGetChildDrawingOrder$handleMessage;

    if-eqz v3, :cond_4e

    .line 1462
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/getEdgeEffectFactory;

    invoke-direct {v3}, Lo/getEdgeEffectFactory;-><init>()V

    .line 1463
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$handleMessage;

    .line 50387
    iget-object v1, v1, Lo/onGetChildDrawingOrder$handleMessage;->onNavigationEvent:Lo/getEdgeEffectFactory$extraCallback;

    .line 1463
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1464
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1462
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1467
    :cond_4e
    instance-of v3, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub;

    if-eqz v3, :cond_4f

    .line 1468
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/dispatchAdditions;

    invoke-direct {v3}, Lo/dispatchAdditions;-><init>()V

    .line 1469
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub;

    .line 50388
    iget-object v1, v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub;->extraCallback:Lo/dispatchAdditions$onNavigationEvent;

    .line 1469
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1470
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1468
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1474
    :cond_4f
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemReceiver;

    if-eqz v3, :cond_50

    .line 1475
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lo/DiffUtil$ItemCallback;

    invoke-direct {v3}, Lo/DiffUtil$ItemCallback;-><init>()V

    .line 1476
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemReceiver;

    .line 50389
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemReceiver;->onNavigationEvent:Lo/DiffUtil$ItemCallback$extraCallback;

    .line 1476
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1477
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1475
    move-object v14, v3

    check-cast v14, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1480
    :cond_50
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionResultReceiver;

    if-eqz v3, :cond_51

    .line 1481
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/requestChildOnScreen;

    invoke-direct {v4}, Lo/requestChildOnScreen;-><init>()V

    .line 1482
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionResultReceiver;

    .line 50390
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionResultReceiver;->onPostMessage:Lo/requestChildOnScreen$extraCallback;

    .line 1482
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1483
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1481
    invoke-static {v3, v4, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1486
    :cond_51
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onConnectionSuspended;

    if-eqz v3, :cond_52

    .line 1487
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/releaseGlows;

    invoke-direct {v4}, Lo/releaseGlows;-><init>()V

    .line 1488
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$onConnectionSuspended;

    .line 50391
    iget-object v1, v1, Lo/onGetChildDrawingOrder$onConnectionSuspended;->onPostMessage:Lo/releaseGlows$onNavigationEvent;

    .line 1488
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1489
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1487
    invoke-static {v3, v4, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1491
    :cond_52
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v3, :cond_53

    .line 1492
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getChildViewHolderInt;->extraCallback:Lo/getChildViewHolderInt$onNavigationEvent;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 50392
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/getChildViewHolderInt$onMessageChannelReady;

    .line 1492
    invoke-static {v1}, Lo/getChildViewHolderInt$onNavigationEvent;->onMessageChannelReady(Lo/getChildViewHolderInt$onMessageChannelReady;)Lo/getChildViewHolderInt;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1495
    :cond_53
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v3, :cond_54

    .line 1496
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getChildPosition;->ICustomTabsCallback:Lo/getChildPosition$onNavigationEvent;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 50393
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/getChildPosition$onPostMessage;

    .line 1496
    invoke-static {v1}, Lo/getChildPosition$onNavigationEvent;->onMessageChannelReady(Lo/getChildPosition$onPostMessage;)Lo/getChildPosition;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1499
    :cond_54
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$1;

    if-eqz v3, :cond_55

    .line 1500
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$1;

    .line 50394
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$1;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$ICustomTabsCallback;

    .line 1500
    invoke-static {v1}, Lo/offsetPositionRecordsForRemove$extraCallback;->onNavigationEvent(Lo/offsetPositionRecordsForRemove$ICustomTabsCallback;)Lo/offsetPositionRecordsForRemove;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1503
    :cond_55
    instance-of v3, v1, Lo/onGetChildDrawingOrder$onReceiveResult;

    if-eqz v3, :cond_56

    .line 1504
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/addOnItemTouchListener;

    invoke-direct {v3}, Lo/addOnItemTouchListener;-><init>()V

    .line 1505
    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1506
    sget-object v4, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1504
    invoke-static {v1, v3, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1509
    :cond_56
    instance-of v3, v1, Lo/onGetChildDrawingOrder$run;

    if-eqz v3, :cond_57

    .line 1510
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lo/isAnimating;->onMessageChannelReady:Lo/isAnimating$ICustomTabsCallback;

    invoke-static {v6}, Lo/isAnimating$ICustomTabsCallback;->extraCallback(Lo/isAnimating$extraCallback;)Lo/isAnimating;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1513
    :cond_57
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$7;

    if-eqz v3, :cond_58

    .line 1514
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/dispatchOnScrollStateChanged;->onPostMessage:Lo/dispatchOnScrollStateChanged$onMessageChannelReady;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 50397
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$7;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged$ICustomTabsCallback;

    .line 1514
    invoke-static {v1}, Lo/dispatchOnScrollStateChanged$onMessageChannelReady;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged$ICustomTabsCallback;)Lo/dispatchOnScrollStateChanged;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1517
    :cond_58
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$5;

    if-eqz v3, :cond_59

    .line 1518
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/offsetChildrenHorizontal;->ICustomTabsCallback:Lo/offsetChildrenHorizontal$onPostMessage;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 50398
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$5;->onNavigationEvent:Lo/offsetChildrenHorizontal$onNavigationEvent;

    .line 1518
    invoke-static {v1}, Lo/offsetChildrenHorizontal$onPostMessage;->onMessageChannelReady(Lo/offsetChildrenHorizontal$onNavigationEvent;)Lo/offsetChildrenHorizontal;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1521
    :cond_59
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v3, :cond_5a

    .line 1522
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/shouldDeferAccessibilityEvent;

    invoke-direct {v4}, Lo/shouldDeferAccessibilityEvent;-><init>()V

    .line 1523
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 50399
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage:Lo/onDetach$IconCompatParcelizer;

    .line 1523
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1524
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1522
    invoke-static {v3, v4, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1526
    :cond_5a
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21;

    if-eqz v3, :cond_5b

    .line 1527
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/access$200;->ICustomTabsCallback:Lo/access$200$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21;

    .line 50400
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/access$200$extraCallback;

    const-string/jumbo v4, "trophyRoomData"

    .line 1527
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50401
    new-instance v4, Lo/access$200;

    invoke-direct {v4}, Lo/access$200;-><init>()V

    .line 50402
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1527
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1529
    :cond_5b
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getInterfaceDescriptor;

    if-eqz v3, :cond_5c

    .line 1530
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback:Lo/getSelectionModeForAccessibility$onPostMessage;

    check-cast v1, Lo/onGetChildDrawingOrder$getInterfaceDescriptor;

    .line 50404
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getInterfaceDescriptor;->extraCallback:Lo/getSelectionModeForAccessibility$onMessageChannelReady;

    const-string v4, "bankSmsData"

    .line 1530
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50405
    new-instance v4, Lo/getSelectionModeForAccessibility;

    invoke-direct {v4}, Lo/getSelectionModeForAccessibility;-><init>()V

    .line 50406
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1530
    invoke-static {v3, v4, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1532
    :cond_5c
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImpl;

    if-eqz v3, :cond_5d

    .line 1533
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lo/isItemChanged;->onTransact:Lo/isItemChanged$onNavigationEvent;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImpl;

    .line 50408
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/lang/String;

    .line 1533
    invoke-static {v1, v4}, Lo/isItemChanged$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Z)Lo/isItemChanged;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1535
    :cond_5d
    instance-of v3, v1, Lo/onGetChildDrawingOrder$sendCustomAction;

    if-eqz v3, :cond_60

    .line 1536
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/ensureNavButtonView;->ICustomTabsCallback:Lo/ensureNavButtonView$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$sendCustomAction;

    .line 50409
    iget-object v4, v1, Lo/onGetChildDrawingOrder$sendCustomAction;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_5e

    .line 1536
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 50410
    :cond_5e
    iget-object v5, v1, Lo/onGetChildDrawingOrder$sendCustomAction;->extraCallback:Ljava/lang/String;

    .line 50411
    iget-object v1, v1, Lo/onGetChildDrawingOrder$sendCustomAction;->onNavigationEvent:Ljava/lang/String;

    const-string v6, "refId"

    .line 1536
    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50412
    new-instance v9, Lo/ensureNavButtonView;

    invoke-direct {v9}, Lo/ensureNavButtonView;-><init>()V

    .line 50413
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_5f

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 50414
    :cond_5f
    invoke-virtual {v10, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callingActivity"

    .line 50415
    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50416
    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50413
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1536
    check-cast v9, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v9, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1538
    :cond_60
    instance-of v3, v1, Lo/onGetChildDrawingOrder$newSession;

    if-eqz v3, :cond_61

    .line 1539
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lo/onReset;->onPostMessage:Lo/onReset$onRelationshipValidationResult;

    check-cast v1, Lo/onGetChildDrawingOrder$newSession;

    .line 50419
    iget-object v1, v1, Lo/onGetChildDrawingOrder$newSession;->extraCallback:Lo/onReset$extraCallback;

    .line 1539
    invoke-static {v1}, Lo/onReset$onRelationshipValidationResult;->extraCallback(Lo/onReset$extraCallback;)Lo/onReset;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lo/onAudioInfoChanged;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1542
    :cond_61
    instance-of v3, v1, Lo/onGetChildDrawingOrder$subscribe;

    if-eqz v3, :cond_62

    .line 1543
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lo/getPaddingTop;

    invoke-direct {v3}, Lo/getPaddingTop;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v4, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1545
    :cond_62
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;

    if-eqz v3, :cond_63

    .line 1546
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getSupportFragmentManager;->extraCallback:Lo/getSupportFragmentManager$ICustomTabsCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;

    .line 50420
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;->extraCallback:Lo/getSupportFragmentManager$onPostMessage;

    .line 1546
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50421
    new-instance v4, Lo/getSupportFragmentManager;

    invoke-direct {v4}, Lo/getSupportFragmentManager;-><init>()V

    .line 50422
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1546
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1548
    :cond_63
    instance-of v3, v1, Lo/onGetChildDrawingOrder$postMessage;

    if-eqz v3, :cond_64

    .line 1549
    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lo/markFragmentsCreated;->extraCallback:Lo/markFragmentsCreated$onNavigationEvent;

    check-cast v1, Lo/onGetChildDrawingOrder$postMessage;

    .line 50424
    iget-object v1, v1, Lo/onGetChildDrawingOrder$postMessage;->onPostMessage:Lo/markFragmentsCreated$onMessageChannelReady;

    .line 1549
    invoke-static {v1}, Lo/markFragmentsCreated$onNavigationEvent;->extraCallback(Lo/markFragmentsCreated$onMessageChannelReady;)Lo/markFragmentsCreated;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lo/onAudioInfoChanged;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1552
    :cond_64
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v3, :cond_65

    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    .line 1553
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v11

    .line 1554
    sget-object v1, Lo/removeDetachedView;->onPostMessage:Lo/removeDetachedView$extraCallback;

    .line 50425
    new-instance v1, Lo/removeDetachedView;

    invoke-direct {v1}, Lo/removeDetachedView;-><init>()V

    .line 1554
    move-object v12, v1

    check-cast v12, Lo/onAudioInfoChanged;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    .line 1552
    invoke-direct/range {v10 .. v15}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    move-object v1, v3

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto/16 :goto_2

    .line 1556
    :cond_65
    instance-of v3, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CallbackHandler;

    if-eqz v3, :cond_66

    .line 1557
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v11

    new-instance v3, Lo/obtainHolderInfo;

    invoke-direct {v3}, Lo/obtainHolderInfo;-><init>()V

    .line 1558
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CallbackHandler;

    .line 50426
    iget-object v1, v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CallbackHandler;->onNavigationEvent:Lo/onDetach$ICustomTabsService$Stub$Proxy;

    .line 1558
    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;)V

    .line 1559
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1557
    move-object v12, v3

    check-cast v12, Lo/onAudioInfoChanged;

    new-instance v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto :goto_2

    .line 1562
    :cond_66
    instance-of v3, v1, Lo/onGetChildDrawingOrder$getRoot;

    if-eqz v3, :cond_67

    .line 1563
    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/clearPreLayoutSpanMappingCache;->extraCallback:Lo/clearPreLayoutSpanMappingCache$onMessageChannelReady;

    check-cast v1, Lo/onGetChildDrawingOrder$getRoot;

    .line 50427
    iget-object v1, v1, Lo/onGetChildDrawingOrder$getRoot;->ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    const-string v4, "data"

    .line 1563
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50428
    new-instance v4, Lo/clearPreLayoutSpanMappingCache;

    invoke-direct {v4}, Lo/clearPreLayoutSpanMappingCache;-><init>()V

    check-cast v4, Landroidx/fragment/app/Fragment;

    new-instance v5, Lo/clearPreLayoutSpanMappingCache$onMessageChannelReady$onPostMessage;

    invoke-direct {v5, v1}, Lo/clearPreLayoutSpanMappingCache$onMessageChannelReady$onPostMessage;-><init>(Lo/getRowCountForAccessibility$ICustomTabsCallback;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v4, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/clearPreLayoutSpanMappingCache;

    .line 1563
    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v3, v1, v7, v8}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    goto :goto_2

    .line 1566
    :cond_67
    instance-of v3, v1, Lo/onGetChildDrawingOrder$notify;

    if-eqz v3, :cond_68

    invoke-virtual {v1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getStateAfterAnimating;->onPostMessage:Lo/getStateAfterAnimating$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$notify;

    .line 50429
    iget-object v1, v1, Lo/onGetChildDrawingOrder$notify;->onMessageChannelReady:Lo/getStateAfterAnimating$onNavigationEvent;

    .line 1566
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50430
    new-instance v4, Lo/getStateAfterAnimating;

    invoke-direct {v4}, Lo/getStateAfterAnimating;-><init>()V

    .line 50431
    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    .line 50433
    invoke-static {v4, v1, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1566
    invoke-static {v3, v4, v7, v9}, Lo/getAddDuration;->onNavigationEvent(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZI)Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    .line 114
    :goto_2
    invoke-virtual {v2, v1}, Lo/setMoveDuration;->onPostMessage(Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;)V

    return-void

    .line 1566
    :cond_68
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 115
    :cond_69
    instance-of v2, v1, Lo/getRemoveDuration$onPostMessage;

    if-eqz v2, :cond_6a

    .line 116
    iget-object v2, v0, Lo/getAddDuration;->ICustomTabsCallback:Lo/setMoveDuration;

    new-instance v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;

    check-cast v1, Lo/getRemoveDuration$onPostMessage;

    .line 50434
    iget-object v4, v1, Lo/getRemoveDuration$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 50435
    iget-boolean v1, v1, Lo/getRemoveDuration$onPostMessage;->extraCallback:Z

    .line 116
    invoke-direct {v3, v4, v1}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;

    invoke-virtual {v2, v3}, Lo/setMoveDuration;->onPostMessage(Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;)V

    return-void

    .line 118
    :cond_6a
    instance-of v2, v1, Lo/getRemoveDuration$onMessageChannelReady;

    if-eqz v2, :cond_6b

    .line 119
    check-cast v1, Lo/getRemoveDuration$onMessageChannelReady;

    .line 50436
    iget-object v1, v1, Lo/getRemoveDuration$onMessageChannelReady;->extraCallback:Ljava/util/List;

    .line 119
    check-cast v1, Ljava/lang/Iterable;

    .line 665
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRemoveDuration;

    .line 120
    invoke-virtual {v0, v2}, Lo/getAddDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_3

    :cond_6b
    return-void
.end method
