.class public final Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutRTL$IPostMessageService;
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
.field private synthetic ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isLayoutRTL$IPostMessageService;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object p1, p1, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object p1

    .line 1009
    iget-object p1, p1, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 2000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2151
    iget-object p1, p1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 53
    check-cast p1, Ljava/lang/Iterable;

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 55
    instance-of v3, v2, Lo/ensureLayoutState;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lo/ensureLayoutState;

    .line 3016
    iget-object v3, v3, Lo/ensureLayoutState;->extraCallback:Lo/removeItemDecoration;

    .line 55
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object v4, v4, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v4}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v4

    .line 3079
    iget-object v4, v4, Lo/setSmoothScrollbarEnabled;->newSession:Lo/removeItemDecoration;

    .line 55
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    :cond_1
    instance-of v3, v2, Lo/fixLayoutStartGap;

    if-eqz v3, :cond_3

    check-cast v2, Lo/fixLayoutStartGap;

    .line 4050
    iget-object v2, v2, Lo/fixLayoutStartGap;->ICustomTabsCallback:Lo/removeItemDecoration;

    .line 56
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object v3, v3, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v3}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v3

    .line 4079
    iget-object v3, v3, Lo/setSmoothScrollbarEnabled;->newSession:Lo/removeItemDecoration;

    .line 56
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 53
    :goto_1
    check-cast v0, Lo/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object p1, p1, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lifestyleRecyclerView:I

    invoke-virtual {p1, v2}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/startActivity;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object v2, v2, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v2}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object v2

    .line 5009
    iget-object v2, v2, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 6000
    iget-object v2, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 6151
    iget-object v2, v2, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 59
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/isLayoutRTL$IPostMessageService;

    iget-object p1, p1, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->requestPostMessageChannel(Lo/isLayoutRTL;)V

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
