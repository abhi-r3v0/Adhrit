.class public final Lo/getPoints;
.super Lo/getRewardsBurned;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lo/getRewardsBurned;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/getRewardsBurned;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/getRewardsBurned;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()Lo/getRewardsExpired;
    .locals 1

    invoke-super {p0}, Lo/getRewardsBurned;->ICustomTabsCallback()Lo/getRewardsExpired;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    invoke-super {p0}, Lo/getRewardsBurned;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    invoke-super {p0}, Lo/getRewardsBurned;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()Lo/getRewardsClosingBalance;
    .locals 1

    iget-object v0, p0, Lo/getRewardsBurned;->onPostMessage:Lo/WinDetailsResponseJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getRewardsBurned;->onPostMessage:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v0}, Lo/WinDetailsResponseJsonAdapter;->onNavigationEvent()Lo/getRewardsClosingBalance;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic onPostMessage()V
    .locals 0

    invoke-super {p0}, Lo/getRewardsBurned;->onPostMessage()V

    return-void
.end method

.method public final bridge synthetic onPostMessage(Lo/StatementResponse$RewardDetails$RewardPoints;)V
    .locals 0

    invoke-super {p0, p1}, Lo/getRewardsBurned;->onPostMessage(Lo/StatementResponse$RewardDetails$RewardPoints;)V

    return-void
.end method

.method public final bridge synthetic setAdListener(Lo/getRewardType;)V
    .locals 0

    invoke-super {p0, p1}, Lo/getRewardsBurned;->setAdListener(Lo/getRewardType;)V

    return-void
.end method

.method public final bridge synthetic setAdSize(Lo/getRewardsExpired;)V
    .locals 0

    invoke-super {p0, p1}, Lo/getRewardsBurned;->setAdSize(Lo/getRewardsExpired;)V

    return-void
.end method

.method public final bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lo/getRewardsBurned;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
