.class public final Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;
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
        "com/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$$special$$inlined$executeOnResume$1",
        "com/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$$special$$inlined$let$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onMessageChannelReady:Lo/dispatchAttachedToWindow$onPostMessage;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lo/dispatchAttachedToWindow$onPostMessage;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/dispatchAttachedToWindow$onPostMessage;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->extraCallback:Lo/StaggeredGridLayoutManager;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    sget-object p1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/dispatchAttachedToWindow$onPostMessage;

    iget-object p1, p1, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    .line 56
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 53
    invoke-static {p1, v0, v1}, Lo/setItemPrefetchEnabled;->onPostMessage(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
