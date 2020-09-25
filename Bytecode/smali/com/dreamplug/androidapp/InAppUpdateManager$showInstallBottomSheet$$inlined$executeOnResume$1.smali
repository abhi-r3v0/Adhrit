.class public final Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSwitchMinWidth;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/setSwitchMinWidth;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setSwitchMinWidth;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    iput-object p4, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 1059
    iget-object p1, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 2029
    iget-boolean v1, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    xor-int/2addr v1, v0

    .line 53
    invoke-virtual {p1, v1}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 3029
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result p1

    if-nez p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 3059
    iget-object p1, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz p1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 4029
    iget-object v1, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    .line 55
    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    .line 5029
    iget-object v2, v2, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v1, v2}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/setSwitchMinWidth;

    iget-object v1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/setSwitchMinWidth;->onPostMessage(Ljava/lang/String;)V

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
