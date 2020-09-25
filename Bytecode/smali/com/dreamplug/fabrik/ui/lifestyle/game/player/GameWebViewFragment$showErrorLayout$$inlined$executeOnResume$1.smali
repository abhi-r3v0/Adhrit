.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady()V
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {v1, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Z)V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p1, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "errorLayout"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
