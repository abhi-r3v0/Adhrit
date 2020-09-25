.class public final Lo/onItemRangeMoved;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0012\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u0015H\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler;",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;)V",
        "fabMenuViewModel",
        "Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "getFabMenuViewModel",
        "()Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "fabMenuViewModel$delegate",
        "Lkotlin/Lazy;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "scrollObserver",
        "com/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$scrollObserver$1",
        "Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$scrollObserver$1;",
        "addScrollListener",
        "",
        "removeScrollListener",
        "updateExpandedState",
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
.field final ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field public final onMessageChannelReady:Lo/onItemRangeMoved$onNavigationEvent;

.field public final onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onItemRangeMoved;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lo/onItemRangeMoved;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance p1, Lo/onItemRangeMoved$extraCallback;

    invoke-direct {p1, p0}, Lo/onItemRangeMoved$extraCallback;-><init>(Lo/onItemRangeMoved;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 12
    iput-object p2, p0, Lo/onItemRangeMoved;->onPostMessage:Lo/isSameListener;

    .line 17
    iget-object p1, p0, Lo/onItemRangeMoved;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    new-instance p2, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;-><init>(Lo/onItemRangeMoved;)V

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 36
    new-instance p1, Lo/onItemRangeMoved$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/onItemRangeMoved$onNavigationEvent;-><init>(Lo/onItemRangeMoved;)V

    iput-object p1, p0, Lo/onItemRangeMoved;->onMessageChannelReady:Lo/onItemRangeMoved$onNavigationEvent;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/onItemRangeMoved;)V
    .locals 5

    .line 2000
    iget-object v0, p0, Lo/onItemRangeMoved;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/notifyItemInserted;

    .line 1033
    iget-object p0, p0, Lo/onItemRangeMoved;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 2033
    iget-object v1, v0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    .line 2047
    iget-boolean v1, v1, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    if-eq v1, p0, :cond_0

    .line 2034
    iget-object v1, v0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, p0, v2, v3, v4}, Lo/notifyItemRangeChanged;->ICustomTabsCallback(Lo/notifyItemRangeChanged;ZLo/throwIfInMutationOperation;ZI)Lo/notifyItemRangeChanged;

    move-result-object p0

    const-string/jumbo v1, "value"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3016
    iput-object p0, v0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    .line 3017
    iget-object v0, v0, Lo/notifyItemInserted;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
