.class public final Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrollStateChanged;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$scrollListener$1",
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
.field private synthetic extraCallback:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 199
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady(Lo/dispatchOnScrollStateChanged;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    :cond_1
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$IPostMessageService$Stub;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget-object p2, Lo/findNestedRecyclerView$extraCallback$asInterface;->onPostMessage:Lo/findNestedRecyclerView$extraCallback$asInterface;

    check-cast p2, Lo/findNestedRecyclerView$extraCallback;

    invoke-static {p1, p2}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;Lo/findNestedRecyclerView$extraCallback;)V

    :cond_2
    return-void
.end method
