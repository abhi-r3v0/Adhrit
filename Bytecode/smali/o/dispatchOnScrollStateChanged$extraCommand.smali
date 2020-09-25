.class final Lo/dispatchOnScrollStateChanged$extraCommand;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrollStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "Landroid/view/View;",
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
.field private synthetic ICustomTabsCallback:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$extraCommand;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 68
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$extraCommand;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged;

    const-string/jumbo v0, "view_details"

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady(Lo/dispatchOnScrollStateChanged;Ljava/lang/String;)V

    .line 1321
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$extraCommand;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 2064
    iget-object p1, p1, Lo/findNestedRecyclerView;->warmup:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1321
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;

    if-eqz p1, :cond_1

    .line 3014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1322
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$extraCommand;->ICustomTabsCallback:Lo/dispatchOnScrollStateChanged;

    .line 4000
    iget-object v0, v0, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const-string v1, "fetch_ticket"

    .line 1322
    invoke-static {v0, p1, v1}, Lo/getMoveDuration;->onNavigationEvent(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
