.class public final Lo/isLayoutRTL$IPostMessageService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 11

    .line 1225
    iget-object v0, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1878
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1879
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1880
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_7

    .line 1226
    iget-object v5, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v5}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object v5

    .line 3009
    iget-object v5, v5, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 4000
    iget-object v5, v5, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/checkSpanForGap;

    .line 4151
    iget-object v5, v5, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1226
    check-cast v5, Ljava/lang/Iterable;

    .line 1882
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lo/StaggeredGridLayoutManager;

    .line 1227
    instance-of v9, v8, Lo/ensureLayoutState;

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Lo/ensureLayoutState;

    .line 5016
    iget-object v9, v9, Lo/ensureLayoutState;->extraCallback:Lo/removeItemDecoration;

    .line 1227
    iget-object v10, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v10}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v10

    .line 5079
    iget-object v10, v10, Lo/setSmoothScrollbarEnabled;->newSession:Lo/removeItemDecoration;

    .line 1227
    invoke-static {v9, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1228
    :cond_2
    instance-of v9, v8, Lo/fixLayoutStartGap;

    if-eqz v9, :cond_4

    check-cast v8, Lo/fixLayoutStartGap;

    .line 6050
    iget-object v8, v8, Lo/fixLayoutStartGap;->ICustomTabsCallback:Lo/removeItemDecoration;

    .line 1228
    iget-object v9, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v9}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v9

    .line 6079
    iget-object v9, v9, Lo/setSmoothScrollbarEnabled;->newSession:Lo/removeItemDecoration;

    .line 1228
    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    move-object v4, v7

    .line 1226
    :cond_5
    check-cast v4, Lo/StaggeredGridLayoutManager;

    if-eqz v4, :cond_6

    .line 1231
    iget-object v2, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->lifestyleRecyclerView:I

    invoke-virtual {v2, v5}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/startActivity;

    iget-object v5, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v5}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object v5

    .line 7009
    iget-object v5, v5, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 8000
    iget-object v5, v5, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/checkSpanForGap;

    .line 8151
    iget-object v5, v5, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1231
    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1232
    iget-object v2, p0, Lo/isLayoutRTL$IPostMessageService;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v2}, Lo/isLayoutRTL;->requestPostMessageChannel(Lo/isLayoutRTL;)V

    .line 1884
    :cond_6
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 1885
    :cond_7
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_8

    .line 1886
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isLayoutRTL$IPostMessageService;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1887
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1889
    :cond_8
    :goto_2
    new-instance v1, Lo/isLayoutRTL$IPostMessageService$onMessageChannelReady;

    invoke-direct {v1, v3, v0}, Lo/isLayoutRTL$IPostMessageService$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 75
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
