.class public final Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;
.super Lo/getText1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static ICustomTabsCallback()Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/WinningTypes;->getMediaId:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static extraCallback(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
