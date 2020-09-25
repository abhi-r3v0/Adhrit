.class final Lo/WinDetailsResponse;
.super Lo/PayoutClaimResponse;


# instance fields
.field private final synthetic extraCallback:Lo/WinDetailsResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/WinDetailsResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/WinDetailsResponse;->extraCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-direct {p0}, Lo/PayoutClaimResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/WinDetailsResponse;->extraCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-static {v0}, Lo/WinDetailsResponseJsonAdapter;->extraCallback(Lo/WinDetailsResponseJsonAdapter;)Lo/getRewardsClosingBalance;

    move-result-object v0

    iget-object v1, p0, Lo/WinDetailsResponse;->extraCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v1}, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getRewardsClosingBalance;->onNavigationEvent(Lo/TrophySectionsResponseJsonAdapter;)V

    invoke-super {p0}, Lo/PayoutClaimResponse;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lo/WinDetailsResponse;->extraCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-static {v0}, Lo/WinDetailsResponseJsonAdapter;->extraCallback(Lo/WinDetailsResponseJsonAdapter;)Lo/getRewardsClosingBalance;

    move-result-object v0

    iget-object v1, p0, Lo/WinDetailsResponse;->extraCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v1}, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getRewardsClosingBalance;->onNavigationEvent(Lo/TrophySectionsResponseJsonAdapter;)V

    invoke-super {p0, p1}, Lo/PayoutClaimResponse;->ICustomTabsCallback(I)V

    return-void
.end method
