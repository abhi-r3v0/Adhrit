.class public final Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow$onPostMessage;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\t"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$$special$$inlined$executeOnResume$3",
        "com/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$$special$$inlined$let$lambda$2"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

.field private synthetic onNavigationEvent:Lo/dispatchAttachedToWindow$onPostMessage;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/dispatchAttachedToWindow$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/dispatchAttachedToWindow$onPostMessage;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    sget-object p1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/dispatchAttachedToWindow$onPostMessage;

    iget-object v0, v0, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 55
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/dispatchAttachedToWindow$onPostMessage;

    iget-object v1, v1, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lo/detachViewInternal;

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;->getData()Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/detachViewInternal;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;)V

    const-string v3, "nba_screen"

    .line 53
    invoke-static {p1, v0, v1, v2, v3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
