.class final Lo/dispatchOnScrollStateChanged$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroidx/recyclerview/widget/RecyclerView;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/recyclerview/widget/RecyclerView;",
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
.field final synthetic onNavigationEvent:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 68
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1229
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ticketList:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 1230
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ticketList:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v0, "ticketList"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->horizontalTicketList:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onNavigationEvent;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;

    invoke-direct {v1, p0}, Lo/dispatchOnScrollStateChanged$onNavigationEvent$extraCallback;-><init>(Lo/dispatchOnScrollStateChanged$onNavigationEvent;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x0

    .line 2045
    invoke-static {p1, v0, v2, v3, v1}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 68
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
