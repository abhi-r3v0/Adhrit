.class final Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)Lo/logout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->ICustomTabsCallback$Stub()V

    iget-object v0, p0, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->onTransact()V

    :cond_0
    iget-object v0, p0, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;Lo/logout;)Lo/logout;

    return-void
.end method
