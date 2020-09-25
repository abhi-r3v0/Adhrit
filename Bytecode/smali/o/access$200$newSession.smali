.class final Lo/access$200$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$200;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/access$200;


# direct methods
.method constructor <init>(Lo/access$200;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    iput-object p2, p0, Lo/access$200$newSession;->ICustomTabsCallback:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1224
    iget-object v0, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    invoke-static {v0}, Lo/access$200;->onNavigationEvent(Lo/access$200;)Lo/getScrollingChildHelper;

    move-result-object v0

    iget-object v1, p0, Lo/access$200$newSession;->ICustomTabsCallback:Ljava/lang/String;

    .line 1337
    iget-object v0, v0, Lo/getScrollingChildHelper;->asInterface:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1338
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v2, v0

    :cond_0
    if-ltz v2, :cond_2

    .line 1226
    iget-object v0, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    invoke-static {v0}, Lo/access$200;->extraCallback(Lo/access$200;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1227
    iget-object v0, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->trophyRoomList:I

    invoke-virtual {v0, v1}, Lo/access$200;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    const-string/jumbo v1, "trophyRoomList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1228
    iget-object v1, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    invoke-static {v1}, Lo/access$200;->extraCallback(Lo/access$200;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    .line 1227
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/access$200$newSession;->onMessageChannelReady:Lo/access$200;

    invoke-static {v0}, Lo/access$200;->onMessageChannelReady(Lo/access$200;)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
