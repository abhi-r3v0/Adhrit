.class public final Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

.field private synthetic onNavigationEvent:Lo/computeHorizontalScrollRange;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isSubmitAreaEnabled$extraCallback;Lo/computeHorizontalScrollRange;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent:Lo/computeHorizontalScrollRange;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 1015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 1035
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->onMessageChannelReady:Lo/setActive;

    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent:Lo/computeHorizontalScrollRange;

    .line 55
    instance-of v0, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    const-string v1, "extra"

    if-eqz v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 2015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v0, "StashProcessingScreen"

    .line 56
    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Lo/supportsPredictiveItemAnimations;

    invoke-direct {p1}, Lo/supportsPredictiveItemAnimations;-><init>()V

    .line 60
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent:Lo/computeHorizontalScrollRange;

    check-cast v3, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    .line 2032
    iget-object v3, v3, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/onDetach$read;

    .line 60
    check-cast v3, Landroid/os/Parcelable;

    .line 3016
    invoke-static {v2, v3, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 4015
    iget-object v1, v1, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 59
    invoke-virtual {p1, v1, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_0
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string p1, "LOAN"

    const-string v0, "StashWithdrawalRouteManager already added StashProcessingScreen"

    invoke-static {p1, v0}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_1
    instance-of v0, p1, Lo/computeHorizontalScrollRange$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 67
    new-instance p1, Lo/getSpaceForSpanRange;

    invoke-direct {p1}, Lo/getSpaceForSpanRange;-><init>()V

    .line 70
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 5015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 5072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 70
    check-cast v2, Landroid/os/Parcelable;

    .line 6016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 7015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "CkycScreen"

    .line 69
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_2
    instance-of v0, p1, Lo/computeHorizontalScrollRange$onTransact;

    if-eqz v0, :cond_3

    .line 74
    new-instance p1, Lo/ItemTouchUIUtil;

    invoke-direct {p1}, Lo/ItemTouchUIUtil;-><init>()V

    .line 77
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 8015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 8072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 77
    check-cast v2, Landroid/os/Parcelable;

    .line 9016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 10015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "OkycAadhaarSetup"

    .line 76
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_3
    instance-of v0, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_4

    .line 81
    sget-object p1, Lo/getSwipeDirs;->onMessageChannelReady:Lo/getSwipeDirs$onPostMessage;

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 11015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 11072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    const-string v0, "NO_SIM"

    .line 81
    invoke-static {p1, v0}, Lo/getSwipeDirs$onPostMessage;->onMessageChannelReady(Lo/onDetach$write;Ljava/lang/String;)Lo/getSwipeDirs;

    move-result-object p1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 12015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "OkycAadhaarManualSetup"

    .line 81
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_4
    instance-of v0, p1, Lo/computeHorizontalScrollRange$asBinder;

    const-string/jumbo v2, "setup"

    if-eqz v0, :cond_5

    .line 84
    sget-object p1, Lo/ItemTouchHelper$SimpleCallback;->ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback$onMessageChannelReady;

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 13015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 13072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 13222
    new-instance v0, Lo/ItemTouchHelper$SimpleCallback;

    invoke-direct {v0}, Lo/ItemTouchHelper$SimpleCallback;-><init>()V

    .line 13223
    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 14016
    invoke-static {v3, p1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 15015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 15464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    :cond_5
    instance-of v0, p1, Lo/computeHorizontalScrollRange$onRelationshipValidationResult;

    if-eqz v0, :cond_6

    .line 87
    sget-object p1, Lo/setDefaultDragDirs;->onNavigationEvent:Lo/setDefaultDragDirs$onMessageChannelReady;

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 16015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 16072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 16253
    new-instance v0, Lo/setDefaultDragDirs;

    invoke-direct {v0}, Lo/setDefaultDragDirs;-><init>()V

    .line 16254
    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 17016
    invoke-static {v3, p1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 18015
    iget-object p1, p1, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 18464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 87
    invoke-virtual {v0, v1, v2}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :cond_6
    instance-of v0, p1, Lo/computeHorizontalScrollRange$onPostMessage;

    if-eqz v0, :cond_7

    .line 90
    new-instance p1, Lo/getSpanSizeLookup;

    invoke-direct {p1}, Lo/getSpanSizeLookup;-><init>()V

    .line 93
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 19015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 19072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 93
    check-cast v2, Landroid/os/Parcelable;

    .line 20016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 21015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "AutoDebitSetup"

    .line 92
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_7
    instance-of v0, p1, Lo/computeHorizontalScrollRange$warmup;

    if-eqz v0, :cond_8

    .line 98
    new-instance p1, Lo/ensureViewSet;

    invoke-direct {p1}, Lo/ensureViewSet;-><init>()V

    .line 101
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 22015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 22072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 101
    check-cast v2, Landroid/os/Parcelable;

    .line 23016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 24015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "StashSummary"

    .line 100
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_8
    instance-of v0, p1, Lo/computeHorizontalScrollRange$newSession;

    const-string v2, "StashAuthScreen"

    if-eqz v0, :cond_9

    .line 107
    new-instance p1, Lo/findAnimation;

    invoke-direct {p1}, Lo/findAnimation;-><init>()V

    .line 110
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 25015
    iget-object v3, v3, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 25072
    iget-object v3, v3, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 110
    check-cast v3, Landroid/os/Parcelable;

    .line 26016
    invoke-static {v0, v3, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 27015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 109
    invoke-virtual {p1, v0, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    instance-of v0, p1, Lo/computeHorizontalScrollRange$asInterface;

    if-eqz v0, :cond_a

    .line 115
    new-instance p1, Lo/findAnimation;

    invoke-direct {p1}, Lo/findAnimation;-><init>()V

    .line 118
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 28015
    iget-object v3, v3, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 28072
    iget-object v3, v3, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 118
    check-cast v3, Landroid/os/Parcelable;

    .line 29016
    invoke-static {v0, v3, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 30015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 117
    invoke-virtual {p1, v0, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_a
    instance-of v0, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback;

    if-eqz v0, :cond_b

    .line 123
    new-instance p1, Lo/onItemsRemoved;

    invoke-direct {p1}, Lo/onItemsRemoved;-><init>()V

    .line 126
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 31015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 31072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 126
    check-cast v2, Landroid/os/Parcelable;

    .line 32016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 33015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "DisbursalScreen"

    .line 125
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_b
    instance-of v0, p1, Lo/computeHorizontalScrollRange$extraCallback;

    if-eqz v0, :cond_c

    .line 132
    new-instance p1, Lo/addChildDrawingOrderCallback;

    invoke-direct {p1}, Lo/addChildDrawingOrderCallback;-><init>()V

    .line 135
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent:Lo/computeHorizontalScrollRange;

    check-cast v2, Lo/computeHorizontalScrollRange$extraCallback;

    .line 33044
    iget-object v2, v2, Lo/computeHorizontalScrollRange$extraCallback;->onMessageChannelReady:Lo/onDetach$INotificationSideChannel$Stub;

    .line 135
    check-cast v2, Landroid/os/Parcelable;

    .line 34016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 35015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "DisbursalStatus"

    .line 134
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_c
    instance-of v0, p1, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;

    if-eqz v0, :cond_d

    .line 140
    new-instance p1, Lo/ItemTouchHelper$Callback;

    invoke-direct {p1}, Lo/ItemTouchHelper$Callback;-><init>()V

    .line 143
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent:Lo/computeHorizontalScrollRange;

    check-cast v2, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;

    .line 35041
    iget-object v2, v2, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;->onPostMessage:Lo/onDetach$INotificationSideChannel$Default;

    .line 143
    check-cast v2, Landroid/os/Parcelable;

    .line 36016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 37015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "StashName"

    .line 142
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_d
    instance-of p1, p1, Lo/computeHorizontalScrollRange$onNavigationEvent;

    if-eqz p1, :cond_e

    .line 148
    new-instance p1, Lo/findSwapTargets;

    invoke-direct {p1}, Lo/findSwapTargets;-><init>()V

    .line 151
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 38015
    iget-object v2, v2, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 38072
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 151
    check-cast v2, Landroid/os/Parcelable;

    .line 39016
    invoke-static {v0, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    .line 40015
    iget-object v0, v0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v1, "AutoDebitNetBanking"

    .line 150
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 27
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
