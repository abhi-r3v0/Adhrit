.class final Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/StackLayoutManager;


# direct methods
.method constructor <init>(Lo/StackLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    invoke-static {v0}, Lo/StackLayoutManager;->onNavigationEvent(Lo/StackLayoutManager;)Lo/logout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    invoke-static {v0}, Lo/StackLayoutManager;->onNavigationEvent(Lo/StackLayoutManager;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->ICustomTabsCallback$Stub()V

    iget-object v0, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    invoke-static {v0}, Lo/StackLayoutManager;->onNavigationEvent(Lo/StackLayoutManager;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->onTransact()V

    iget-object v0, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    invoke-static {v0}, Lo/StackLayoutManager;->onNavigationEvent(Lo/StackLayoutManager;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->warmup()V

    :cond_0
    iget-object v0, p0, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StackLayoutManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/StackLayoutManager;->ICustomTabsCallback(Lo/StackLayoutManager;Lo/logout;)Lo/logout;

    return-void
.end method
