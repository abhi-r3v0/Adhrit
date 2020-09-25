.class public final Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V
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
.field private synthetic ICustomTabsCallback:Lo/onAddFocusables;

.field private synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onAddFocusables;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 1052
    iget-object p1, p1, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x4b8cc42

    if-eq v0, v1, :cond_4

    const v1, 0x535c1c1

    if-eq v0, v1, :cond_2

    const v1, 0x122f5e9f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RESULT_FAILED"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 75
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 7034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 8034
    invoke-virtual {p1, v0}, Lo/onAddFocusables;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_2
    const-string v0, "RESULT_SUCCESS"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 71
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 5034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 6034
    invoke-virtual {p1, v0}, Lo/onAddFocusables;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_4
    const-string v0, "START"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    new-instance v0, Lo/createFullSpanItemFromStart;

    invoke-direct {v0}, Lo/createFullSpanItemFromStart;-><init>()V

    .line 2034
    iput-object v0, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    .line 67
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 3034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 68
    :cond_5
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 4034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_6

    .line 68
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 27
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
