.class public final Lo/isAnimating$postMessage;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$onViewCreated$3",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "lastScrollDirection",
        "",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field public final synthetic ICustomTabsCallback:Lo/isAnimating;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const-string p1, "down"

    .line 343
    iput-object p1, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/isAnimating$postMessage;Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/isAnimating$postMessage;)Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p0, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 355
    iget-object v0, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 591
    new-instance v7, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v7}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 592
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v2, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-array p2, v4, [Lo/addWrite;

    .line 2342
    iget-object v2, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "direction"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p2, v1

    const-string v2, "pairs"

    .line 357
    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "win_farm_scroll"

    .line 357
    invoke-static {p2, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 360
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3342
    iget-object p1, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    const-string p2, "down"

    .line 360
    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v4, [Lo/addWrite;

    .line 362
    iget-object p2, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {p2}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    move-result-object p2

    .line 4026
    iget p2, p2, Lo/requestLayout;->onMessageChannelReady:I

    .line 362
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string v6, "count_of_cards"

    invoke-direct {v5, v6, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p1, v1

    .line 361
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "win_farm_scroll_to_bottom"

    .line 361
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 594
    :cond_1
    iput-boolean v4, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 595
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_3

    .line 596
    new-instance v8, Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    move-object v1, v8

    move-object v2, v0

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isAnimating$postMessage;ILandroidx/recyclerview/widget/RecyclerView;)V

    check-cast v8, Lo/createCallback;

    iput-object v8, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 597
    iget-object p1, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 599
    :cond_3
    :goto_1
    new-instance p1, Lo/isAnimating$postMessage$extraCallback;

    invoke-direct {p1, v7, v0}, Lo/isAnimating$postMessage$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 347
    iget-object p1, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 581
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 582
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    move-result-object v0

    iget-object v2, p0, Lo/isAnimating$postMessage;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v2}, Lo/isAnimating;->onRelationshipValidationResult(Lo/isAnimating;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v4

    invoke-static {v2, v4}, Lo/isAnimating;->ICustomTabsCallback(Lo/isAnimating;Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Lo/requestLayout;->extraCallback(I)V

    if-gez p3, :cond_1

    const-string/jumbo p3, "up"

    goto :goto_0

    :cond_1
    const-string p3, "down"

    .line 1342
    :goto_0
    iput-object p3, p0, Lo/isAnimating$postMessage;->onPostMessage:Ljava/lang/String;

    .line 584
    iput-boolean v3, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 585
    :cond_2
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v2, :cond_3

    .line 586
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isAnimating$postMessage;I)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 587
    iget-object p2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 589
    :cond_3
    :goto_1
    new-instance p2, Lo/isAnimating$postMessage$onMessageChannelReady;

    invoke-direct {p2, v1, p1}, Lo/isAnimating$postMessage$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
