.class public final Lo/allocateRequestIndex$ICustomTabsCallback$Stub;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/allocateRequestIndex;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/unbilled/UnBilledFragment$onViewCreated$1$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field public final synthetic ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic onNavigationEvent:Lo/allocateRequestIndex;

.field public final synthetic onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lo/allocateRequestIndex;)V
    .locals 0

    iput-object p1, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p3, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/allocateRequestIndex;

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 11

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 339
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 340
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    if-nez p2, :cond_4

    .line 95
    iget-object p2, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 96
    iget-object v4, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/allocateRequestIndex;

    const/4 v6, 0x2

    new-array v7, v6, [Lo/addWrite;

    add-int/lit8 v8, p2, 0x1

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2043
    new-instance v9, Lo/addWrite;

    const-string v10, "card_position"

    invoke-direct {v9, v10, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v1

    .line 99
    iget-object v1, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {v1}, Lo/allocateRequestIndex;->extraCallback(Lo/allocateRequestIndex;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 4151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v8, "$this$getOrNull"

    .line 99
    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_1

    const-string v8, "$this$lastIndex"

    .line 4266
    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-gt p2, v8, :cond_1

    .line 4266
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v3

    .line 99
    :goto_1
    instance-of v1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-nez v1, :cond_2

    move-object p2, v3

    :cond_2
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p2, :cond_3

    .line 6023
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    .line 6043
    :cond_3
    new-instance p2, Lo/addWrite;

    const-string/jumbo v1, "template_name"

    invoke-direct {p2, v1, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v7, v5

    const-string p2, "pairs"

    .line 97
    invoke-static {v7, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v7}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cm_card_unbilled_farm_scrolled_template"

    .line 96
    invoke-virtual {v4, v1, p2}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    iget-object p2, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 103
    iget-object p2, p0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/allocateRequestIndex;

    const-string v1, "cm_unbilled_farm_scrolled_to_last"

    invoke-static {p2, v1}, Lo/allocateRequestIndex;->onNavigationEvent(Lo/allocateRequestIndex;Ljava/lang/String;)V

    .line 342
    :cond_4
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 343
    :cond_5
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_6

    .line 344
    new-instance v1, Lcom/dreamplug/fabrik/ui/cm/unbilled/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/cm/unbilled/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/allocateRequestIndex$ICustomTabsCallback$Stub;I)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 345
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 347
    :cond_6
    :goto_2
    new-instance p2, Lo/allocateRequestIndex$ICustomTabsCallback$Stub$3;

    invoke-direct {p2, v2, p1}, Lo/allocateRequestIndex$ICustomTabsCallback$Stub$3;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
