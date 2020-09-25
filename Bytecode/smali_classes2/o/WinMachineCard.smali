.class public final Lo/WinMachineCard;
.super Lo/TrophySectionsResponse;


# instance fields
.field private final onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;


# direct methods
.method public constructor <init>(Lo/getRewardsClosingBalance$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Lo/TrophySectionsResponse;-><init>()V

    iput-object p1, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    invoke-virtual {v0}, Lo/getRewardsClosingBalance$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    iget-object v0, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    invoke-virtual {v0}, Lo/getRewardsClosingBalance$extraCallback;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    invoke-virtual {v0}, Lo/getRewardsClosingBalance$extraCallback;->extraCallback()V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    iget-object v0, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    invoke-virtual {v0, p1}, Lo/getRewardsClosingBalance$extraCallback;->onPostMessage(Z)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/WinMachineCard;->onMessageChannelReady:Lo/getRewardsClosingBalance$extraCallback;

    invoke-virtual {v0}, Lo/getRewardsClosingBalance$extraCallback;->ICustomTabsCallback()V

    return-void
.end method
