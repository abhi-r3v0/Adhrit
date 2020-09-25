.class public final Lo/setSwitchMinWidth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/detect;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "installState",
        "Lcom/google/android/play/core/install/InstallState;",
        "onStateUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:Lo/onSessionEvent;

.field public final extraCallback:Ljava/lang/String;

.field onMessageChannelReady:Lo/getIdToken;

.field public onNavigationEvent:Lo/updateAllRemainingSpans;

.field final onPostMessage:Lo/isSameListener;

.field public final onRelationshipValidationResult:Lo/detect;

.field public final onTransact:Lo/reauthenticate;


# direct methods
.method public synthetic constructor <init>(Lo/onSessionEvent;)V
    .locals 2

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 25000
    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/content/Context;)Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;

    move-result-object v0

    .line 26000
    iget-object v0, v0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/reauthenticate;

    const-string v1, "AppUpdateManagerFactory.create(activity)"

    .line 30
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lo/setSwitchMinWidth;-><init>(Lo/onSessionEvent;Lo/reauthenticate;)V

    return-void
.end method

.method private constructor <init>(Lo/onSessionEvent;Lo/reauthenticate;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    iput-object p2, p0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    if-eqz p1, :cond_2

    .line 32
    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 294
    new-instance p2, Lo/setSwitchMinWidth$ICustomTabsCallback;

    invoke-direct {p2, p1}, Lo/setSwitchMinWidth$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast p2, Lo/getServerTime;

    const-string p1, "initializer"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22021
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 294
    iput-object p1, p0, Lo/setSwitchMinWidth;->onPostMessage:Lo/isSameListener;

    const-string/jumbo p1, "update_dialog_fragment"

    .line 34
    iput-object p1, p0, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    .line 37
    new-instance p1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 23000
    iget-object p2, p0, Lo/setSwitchMinWidth;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/isViewInvalid;

    .line 23012
    iget-object p2, p2, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 38
    iget-object v0, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    if-eqz v0, :cond_1

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/setSwitchMinWidth$4;

    invoke-direct {v1, p0, p1}, Lo/setSwitchMinWidth$4;-><init>(Lo/setSwitchMinWidth;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 57
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->requestPostMessageChannel()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 24000
    sget-object p1, Lo/isInLayout;->getInterfaceDescriptor:Lo/isAdded;

    sget-object p2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v0, 0x13

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    iput-boolean p1, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    .line 118
    move-object p1, p0

    check-cast p1, Lo/detect;

    iput-object p1, p0, Lo/setSwitchMinWidth;->onRelationshipValidationResult:Lo/detect;

    return-void

    .line 38
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onNavigationEvent()Z
    .locals 9

    .line 84
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->newSession:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const-wide/16 v0, 0x3

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->newSession:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 88
    :goto_0
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->requestPostMessageChannel()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v2, Lo/isInLayout;->getInterfaceDescriptor:Lo/isAdded;

    sget-object v5, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    sget-object v2, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asInterface()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v2, Lo/setTrackTintMode;->unsubscribe:Lo/getNavigationContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x36

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 88
    rem-long/2addr v5, v0

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1

    .line 26118
    check-cast p1, Lo/lambda$processSetComponents$1;

    const-string v0, "installState"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26119
    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->ICustomTabsCallback()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 27029
    :cond_0
    invoke-virtual {p0}, Lo/setSwitchMinWidth;->extraCallback()V

    :goto_0
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    iget-object v1, p0, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method final extraCallback()V
    .locals 8

    .line 132
    iget-boolean v0, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 5242
    iget-object v0, p0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    invoke-interface {v0}, Lo/reauthenticate;->extraCallback()Lo/getMinidumpFile;

    return-void

    :cond_0
    const-string v0, "install"

    .line 137
    invoke-virtual {p0}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Lo/updateAllRemainingSpans;

    invoke-direct {v1}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v1, p0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    .line 139
    :cond_1
    iget-object v1, p0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v1, :cond_2

    new-instance v2, Lo/setSwitchMinWidth$onTransact;

    invoke-direct {v2, p0, v0}, Lo/setSwitchMinWidth$onTransact;-><init>(Lo/setSwitchMinWidth;Ljava/lang/String;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-virtual {v1, v2}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 152
    :cond_2
    iget-object v1, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "activity.lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 265
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 266
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 6212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_7

    .line 7059
    iget-object v3, p0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v3, :cond_4

    .line 8029
    iget-boolean v5, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    xor-int/2addr v5, v6

    .line 153
    invoke-virtual {v3, v5}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 9029
    :cond_4
    invoke-virtual {p0}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_6

    .line 9059
    iget-object v3, p0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v3, :cond_5

    .line 10029
    iget-object v5, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    .line 155
    invoke-virtual {v5}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v5

    .line 11029
    iget-object v7, p0, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    .line 155
    invoke-virtual {v3, v5, v7}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 156
    :cond_5
    invoke-virtual {p0, v0}, Lo/setSwitchMinWidth;->onPostMessage(Ljava/lang/String;)V

    .line 268
    :cond_6
    iput-boolean v6, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 269
    :cond_7
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_8

    .line 270
    new-instance v3, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setSwitchMinWidth;Ljava/lang/String;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 271
    iget-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 273
    :cond_8
    :goto_0
    new-instance v0, Lo/setSwitchMinWidth$onMessageChannelReady;

    invoke-direct {v0, v4, v1}, Lo/setSwitchMinWidth$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 4246
    iget-object v0, p0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    iget-object v1, p0, Lo/setSwitchMinWidth;->onRelationshipValidationResult:Lo/detect;

    invoke-interface {v0, v1}, Lo/reauthenticate;->onNavigationEvent(Lo/detect;)V

    .line 4128
    iget-object v0, p0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    iget-object v1, p0, Lo/setSwitchMinWidth;->onRelationshipValidationResult:Lo/detect;

    invoke-interface {v0, v1}, Lo/reauthenticate;->extraCallback(Lo/detect;)V

    .line 93
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->warmup()Z

    .line 94
    iget-object v0, p0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    invoke-interface {v0}, Lo/reauthenticate;->ICustomTabsCallback()Lo/getMinidumpFile;

    move-result-object v0

    .line 95
    new-instance v1, Lo/setSwitchMinWidth$asInterface;

    invoke-direct {v1, p0}, Lo/setSwitchMinWidth$asInterface;-><init>(Lo/setSwitchMinWidth;)V

    check-cast v1, Lo/getAppFile;

    invoke-virtual {v0, v1}, Lo/getMinidumpFile;->ICustomTabsCallback(Lo/getAppFile;)Lo/getMinidumpFile;

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 7

    const/4 v0, -0x1

    const-string v1, "pairs"

    const-string/jumbo v2, "update_frequency"

    const/4 v3, 0x0

    const/16 v4, 0x2b

    const/4 v5, 0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v5, [Lo/addWrite;

    .line 231
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 17000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat:Lo/getCollapseContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v6, v4

    invoke-virtual {v0, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v3

    .line 231
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "in_app_update_failure"

    .line 231
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 17238
    iget-object p1, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "activity.packageName"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-array p1, v5, [Lo/addWrite;

    .line 227
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 14000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat:Lo/getCollapseContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 14043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v3

    .line 227
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "in_app_update_decline"

    .line 227
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 228
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 15000
    sget-object p1, Lo/setTrackTintMode;->MediaBrowserCompat:Lo/getCollapseContentDescription;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v5

    .line 16000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat:Lo/getCollapseContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_2
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 12000
    sget-object p1, Lo/setTrackTintMode;->AudioAttributesImplBaseParcelizer:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x2c

    aget-object v0, v0, v6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v6}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    new-array p1, v5, [Lo/addWrite;

    .line 223
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 13000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat:Lo/getCollapseContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v6, v4

    invoke-virtual {v0, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 13043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v3

    .line 223
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "in_app_update_confirm"

    .line 223
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 224
    invoke-virtual {p0}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Lo/addWrite;

    .line 258
    iget-boolean v3, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 20043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_force"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 21043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v0, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v3, v2, p1

    const-string p1, "pairs"

    .line 257
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "inapp_update_dialog_cta"

    .line 257
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Lo/addWrite;

    .line 251
    iget-boolean v3, p0, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 18043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_force"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 19043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v0, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v3, v2, p1

    const-string p1, "pairs"

    .line 250
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "inapp_update_dialog_show"

    .line 250
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
