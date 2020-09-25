.class final Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrollStateChanged$onNavigationEvent;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$animateStackView$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1232
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v0, v0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    iget-object v1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v1, v1, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {v1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object v1

    .line 2049
    iget-object v1, v1, Lo/findNestedRecyclerView;->getInterfaceDescriptor:Ljava/util/List;

    const-string/jumbo v2, "value"

    .line 1232
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1233
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v0, v0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->horizontalTicketList:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v1, v1, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    .line 5000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 5151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v2, "$this$lastIndex"

    .line 1233
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1233
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v0, v0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->horizontalTicketList:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1235
    :cond_1
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged$onNavigationEvent;

    iget-object v0, v0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->onTransact(Lo/dispatchOnScrollStateChanged;)V

    .line 68
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
