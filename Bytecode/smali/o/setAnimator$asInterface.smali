.class public final Lo/setAnimator$asInterface;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAnimator;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$1$1",
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
.field public final synthetic extraCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic onPostMessage:Lo/setAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lo/setAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/setAnimator$asInterface;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/setAnimator$asInterface;->extraCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p3, p0, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    .line 79
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 224
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 225
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
    if-eqz v4, :cond_8

    if-nez p2, :cond_7

    .line 83
    iget-object p2, p0, Lo/setAnimator$asInterface;->extraCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 85
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 88
    :goto_3
    iget-object v4, p0, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    new-array v6, v5, [Lo/addWrite;

    .line 90
    invoke-static {v4}, Lo/setAnimator;->ICustomTabsCallback(Lo/setAnimator;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v7

    .line 3000
    iget-object v7, v7, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/checkSpanForGap;

    .line 3151
    iget-object v7, v7, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v8, "$this$getOrNull"

    .line 90
    invoke-static {v7, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_4

    const-string v8, "$this$lastIndex"

    .line 3266
    invoke-static {v7, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-gt p2, v8, :cond_4

    .line 3266
    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4

    :cond_4
    move-object p2, v3

    .line 90
    :goto_4
    instance-of v7, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-nez v7, :cond_5

    move-object p2, v3

    :cond_5
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p2, :cond_6

    .line 5023
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    .line 5043
    :cond_6
    new-instance p2, Lo/addWrite;

    const-string/jumbo v7, "template_name"

    invoke-direct {p2, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v6, v1

    const-string p2, "pairs"

    .line 90
    invoke-static {v6, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cm_card_benefit_farm_scrolled_template"

    .line 88
    invoke-virtual {v4, v1, p2}, Lo/setAnimator;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object p2, p0, Lo/setAnimator$asInterface;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 93
    iget-object p2, p0, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    const-string v1, "cm_benefit_farm_scrolled_to_last"

    invoke-static {p2, v1}, Lo/setAnimator;->onMessageChannelReady(Lo/setAnimator;Ljava/lang/String;)V

    .line 227
    :cond_7
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_5

    .line 228
    :cond_8
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_9

    .line 229
    new-instance v1, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setAnimator$asInterface;I)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 230
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 232
    :cond_9
    :goto_5
    new-instance p2, Lo/setAnimator$asInterface$3;

    invoke-direct {p2, v2, p1}, Lo/setAnimator$asInterface$3;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
