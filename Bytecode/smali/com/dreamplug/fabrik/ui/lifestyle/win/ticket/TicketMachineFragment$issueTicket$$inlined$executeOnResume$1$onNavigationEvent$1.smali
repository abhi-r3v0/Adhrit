.class final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;->ICustomTabsCallback(Lo/fromQueueItem;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$1$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$$special$$inlined$doOnEnd$2$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent$1;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1466
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent$1;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget-object v1, Lo/findNestedRecyclerView$extraCallback$newSession;->onNavigationEvent:Lo/findNestedRecyclerView$extraCallback$newSession;

    check-cast v1, Lo/findNestedRecyclerView$extraCallback;

    invoke-static {v0, v1}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;Lo/findNestedRecyclerView$extraCallback;)V

    .line 68
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
