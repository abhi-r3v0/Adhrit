.class public final Lo/isSubmitAreaEnabled$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSubmitAreaEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager;",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "sharedViewModel",
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;Landroidx/fragment/app/FragmentManager;)V",
        "getFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "launchScreen",
        "",
        "screen",
        "Lcom/dreamplug/fabrik/ui/lending/StashRouteScreen;",
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
.field private final onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field public final onNavigationEvent:Lo/setRecycleChildrenOnDetach;

.field public final onPostMessage:Lo/requestExtraBinder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lo/setRecycleChildrenOnDetach;Lo/requestExtraBinder;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedViewModel"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    iput-object p3, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/computeHorizontalScrollRange;)V
    .locals 8

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lo/isSubmitAreaEnabled$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1105
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1106
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_10

    .line 2015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 2035
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->onMessageChannelReady:Lo/setActive;

    .line 1019
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1021
    instance-of v2, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    const-string v4, "extra"

    if-eqz v2, :cond_2

    .line 3015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v6, "StashProcessingScreen"

    .line 1022
    invoke-virtual {v2, v6}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1023
    new-instance v2, Lo/supportsPredictiveItemAnimations;

    invoke-direct {v2}, Lo/supportsPredictiveItemAnimations;-><init>()V

    .line 1024
    move-object v7, v2

    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    .line 3032
    iget-object p1, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/onDetach$read;

    .line 1024
    check-cast p1, Landroid/os/Parcelable;

    .line 4016
    invoke-static {v7, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 5015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 1025
    invoke-virtual {v2, p1, v6}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    :cond_1
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string p1, "LOAN"

    const-string v2, "StashWithdrawalRouteManager already added StashProcessingScreen"

    invoke-static {p1, v2}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1030
    :cond_2
    instance-of v2, p1, Lo/computeHorizontalScrollRange$onMessageChannelReady;

    if-eqz v2, :cond_3

    .line 1031
    new-instance p1, Lo/getSpaceForSpanRange;

    invoke-direct {p1}, Lo/getSpaceForSpanRange;-><init>()V

    .line 1032
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 6015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 6072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1032
    check-cast v6, Landroid/os/Parcelable;

    .line 7016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 8015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "CkycScreen"

    .line 1033
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :cond_3
    instance-of v2, p1, Lo/computeHorizontalScrollRange$onTransact;

    if-eqz v2, :cond_4

    .line 1036
    new-instance p1, Lo/ItemTouchUIUtil;

    invoke-direct {p1}, Lo/ItemTouchUIUtil;-><init>()V

    .line 1037
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 9015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 9072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1037
    check-cast v6, Landroid/os/Parcelable;

    .line 10016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 11015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "OkycAadhaarSetup"

    .line 1038
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :cond_4
    instance-of v2, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub;

    if-eqz v2, :cond_5

    .line 1041
    sget-object p1, Lo/getSwipeDirs;->onMessageChannelReady:Lo/getSwipeDirs$onPostMessage;

    .line 12015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 12072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    const-string v2, "NO_SIM"

    .line 1041
    invoke-static {p1, v2}, Lo/getSwipeDirs$onPostMessage;->onMessageChannelReady(Lo/onDetach$write;Ljava/lang/String;)Lo/getSwipeDirs;

    move-result-object p1

    .line 13015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "OkycAadhaarManualSetup"

    .line 1041
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    :cond_5
    instance-of v2, p1, Lo/computeHorizontalScrollRange$asBinder;

    const-string/jumbo v6, "setup"

    if-eqz v2, :cond_6

    .line 1044
    sget-object p1, Lo/ItemTouchHelper$SimpleCallback;->ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback$onMessageChannelReady;

    .line 14015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 14072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 14222
    new-instance v2, Lo/ItemTouchHelper$SimpleCallback;

    invoke-direct {v2}, Lo/ItemTouchHelper$SimpleCallback;-><init>()V

    .line 14223
    move-object v7, v2

    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 15016
    invoke-static {v7, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 16015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 16464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1044
    invoke-virtual {v2, v4, v6}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    :cond_6
    instance-of v2, p1, Lo/computeHorizontalScrollRange$onRelationshipValidationResult;

    if-eqz v2, :cond_7

    .line 1047
    sget-object p1, Lo/setDefaultDragDirs;->onNavigationEvent:Lo/setDefaultDragDirs$onMessageChannelReady;

    .line 17015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 17072
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 17253
    new-instance v2, Lo/setDefaultDragDirs;

    invoke-direct {v2}, Lo/setDefaultDragDirs;-><init>()V

    .line 17254
    move-object v7, v2

    check-cast v7, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 18016
    invoke-static {v7, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 19015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 19464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1047
    invoke-virtual {v2, v4, v6}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1049
    :cond_7
    instance-of v2, p1, Lo/computeHorizontalScrollRange$onPostMessage;

    if-eqz v2, :cond_8

    .line 1050
    new-instance p1, Lo/getSpanSizeLookup;

    invoke-direct {p1}, Lo/getSpanSizeLookup;-><init>()V

    .line 1051
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 20015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 20072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1051
    check-cast v6, Landroid/os/Parcelable;

    .line 21016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 22015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "AutoDebitSetup"

    .line 1052
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1055
    :cond_8
    instance-of v2, p1, Lo/computeHorizontalScrollRange$warmup;

    if-eqz v2, :cond_9

    .line 1056
    new-instance p1, Lo/ensureViewSet;

    invoke-direct {p1}, Lo/ensureViewSet;-><init>()V

    .line 1057
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 23015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 23072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1057
    check-cast v6, Landroid/os/Parcelable;

    .line 24016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 25015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "StashSummary"

    .line 1058
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1062
    :cond_9
    instance-of v2, p1, Lo/computeHorizontalScrollRange$newSession;

    const-string v6, "StashAuthScreen"

    if-eqz v2, :cond_a

    .line 1063
    new-instance p1, Lo/findAnimation;

    invoke-direct {p1}, Lo/findAnimation;-><init>()V

    .line 1064
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 26015
    iget-object v7, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 26072
    iget-object v7, v7, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1064
    check-cast v7, Landroid/os/Parcelable;

    .line 27016
    invoke-static {v2, v7, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 28015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 1065
    invoke-virtual {p1, v2, v6}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    :cond_a
    instance-of v2, p1, Lo/computeHorizontalScrollRange$asInterface;

    if-eqz v2, :cond_b

    .line 1069
    new-instance p1, Lo/findAnimation;

    invoke-direct {p1}, Lo/findAnimation;-><init>()V

    .line 1070
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 29015
    iget-object v7, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 29072
    iget-object v7, v7, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1070
    check-cast v7, Landroid/os/Parcelable;

    .line 30016
    invoke-static {v2, v7, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 31015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    .line 1071
    invoke-virtual {p1, v2, v6}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    :cond_b
    instance-of v2, p1, Lo/computeHorizontalScrollRange$ICustomTabsCallback;

    if-eqz v2, :cond_c

    .line 1075
    new-instance p1, Lo/onItemsRemoved;

    invoke-direct {p1}, Lo/onItemsRemoved;-><init>()V

    .line 1076
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 32015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 32072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1076
    check-cast v6, Landroid/os/Parcelable;

    .line 33016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 34015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "DisbursalScreen"

    .line 1077
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_c
    instance-of v2, p1, Lo/computeHorizontalScrollRange$extraCallback;

    if-eqz v2, :cond_d

    .line 1082
    new-instance v2, Lo/addChildDrawingOrderCallback;

    invoke-direct {v2}, Lo/addChildDrawingOrderCallback;-><init>()V

    .line 1083
    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/Fragment;

    check-cast p1, Lo/computeHorizontalScrollRange$extraCallback;

    .line 34044
    iget-object p1, p1, Lo/computeHorizontalScrollRange$extraCallback;->onMessageChannelReady:Lo/onDetach$INotificationSideChannel$Stub;

    .line 1083
    check-cast p1, Landroid/os/Parcelable;

    .line 35016
    invoke-static {v6, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 36015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "DisbursalStatus"

    .line 1084
    invoke-virtual {v2, p1, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_d
    instance-of v2, p1, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;

    if-eqz v2, :cond_e

    .line 1088
    new-instance v2, Lo/ItemTouchHelper$Callback;

    invoke-direct {v2}, Lo/ItemTouchHelper$Callback;-><init>()V

    .line 1089
    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/Fragment;

    check-cast p1, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;

    .line 36041
    iget-object p1, p1, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;->onPostMessage:Lo/onDetach$INotificationSideChannel$Default;

    .line 1089
    check-cast p1, Landroid/os/Parcelable;

    .line 37016
    invoke-static {v6, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 38015
    iget-object p1, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "StashName"

    .line 1090
    invoke-virtual {v2, p1, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_e
    instance-of p1, p1, Lo/computeHorizontalScrollRange$onNavigationEvent;

    if-eqz p1, :cond_f

    .line 1094
    new-instance p1, Lo/findSwapTargets;

    invoke-direct {p1}, Lo/findSwapTargets;-><init>()V

    .line 1095
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 39015
    iget-object v6, p0, Lo/isSubmitAreaEnabled$extraCallback;->onNavigationEvent:Lo/setRecycleChildrenOnDetach;

    .line 39072
    iget-object v6, v6, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    .line 1095
    check-cast v6, Landroid/os/Parcelable;

    .line 40016
    invoke-static {v2, v6, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 41015
    iget-object v2, p0, Lo/isSubmitAreaEnabled$extraCallback;->onPostMessage:Lo/requestExtraBinder;

    const-string v4, "AutoDebitNetBanking"

    .line 1096
    invoke-virtual {p1, v2, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 1108
    :cond_f
    :goto_0
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 1109
    :cond_10
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_11

    .line 1110
    new-instance v2, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/dreamplug/fabrik/ui/lending/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isSubmitAreaEnabled$extraCallback;Lo/computeHorizontalScrollRange;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1111
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1113
    :cond_11
    :goto_1
    new-instance p1, Lo/computeVerticalScrollOffset;

    invoke-direct {p1, v3, v0}, Lo/computeVerticalScrollOffset;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
