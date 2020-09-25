.class public final Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/registerOnLoadCanceledListener;->warmup()V
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
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/registerOnLoadCanceledListener;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/registerOnLoadCanceledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    .line 1042
    iget-object p1, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 53
    invoke-interface {p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-ne p1, v0, :cond_2

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    .line 2042
    iget-object p1, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v3, p1, Lo/createScroller;

    if-nez v3, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lo/createScroller;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-virtual {p1}, Lo/registerOnLoadCanceledListener;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 2571
    new-instance v3, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v4, -0x1

    invoke-direct {v3, p1, v1, v4, v2}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {p1, v3, v2}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    goto :goto_2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-static {p1}, Lo/registerOnLoadCanceledListener;->extraCallback(Lo/registerOnLoadCanceledListener;)V

    .line 27
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
