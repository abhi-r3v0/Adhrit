.class final Lo/onTargetFound$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onTargetFound;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/addWrite<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;+",
        "Lo/onTargetFound$onNavigationEvent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006 \u0007*\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/RewardWishlistFragment$Scroll;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onTargetFound;


# direct methods
.method constructor <init>(Lo/onTargetFound;)V
    .locals 0

    iput-object p1, p0, Lo/onTargetFound$onTransact;->onNavigationEvent:Lo/onTargetFound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 44
    check-cast p1, Lo/addWrite;

    .line 1112
    iget-object v0, p0, Lo/onTargetFound$onTransact;->onNavigationEvent:Lo/onTargetFound;

    invoke-static {v0}, Lo/onTargetFound;->onMessageChannelReady(Lo/onTargetFound;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 2027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1112
    check-cast v1, Ljava/util/List;

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 3028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1113
    check-cast v0, Lo/onTargetFound$onNavigationEvent;

    .line 3230
    iget-boolean v0, v0, Lo/onTargetFound$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1114
    check-cast p1, Lo/onTargetFound$onNavigationEvent;

    const/4 v0, 0x0

    .line 4230
    iput-boolean v0, p1, Lo/onTargetFound$onNavigationEvent;->onNavigationEvent:Z

    .line 1115
    iget-object p1, p0, Lo/onTargetFound$onTransact;->onNavigationEvent:Lo/onTargetFound;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v1}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
