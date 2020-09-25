.class public final Lo/PayoutInstrumentJsonAdapter;
.super Lo/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/StatementDetailJsonAdapter;

.field private final onNavigationEvent:Lo/DataListJsonAdapter;

.field private final onPostMessage:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/StatementDetailJsonAdapter;)V
    .locals 1

    invoke-direct {p0}, Lo/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    iput-object p1, p0, Lo/PayoutInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/PayoutInstrumentJsonAdapter;->onNavigationEvent:Lo/DataListJsonAdapter;

    iput-object p3, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/StatementPeriod;Lo/BankAccountData;Lo/DataListJsonAdapter;)V
    .locals 7

    new-instance v6, Lo/StatementDetailJsonAdapter;

    invoke-static {}, Lo/setCurrentItem$default;->onPostMessage()Lo/setCurrentItem$default;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/StatementDetailJsonAdapter;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Lo/BankAccountData;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, p1, p4, v6}, Lo/PayoutInstrumentJsonAdapter;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/StatementDetailJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1}, Lo/StatementDetailJsonAdapter;->RemoteActionCompatParcelizer()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/CredProtectResponseJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/DeviceAttrResponse;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/SpinTheWheelResponseJsonAdapter;)V
    .locals 2

    sget-object v0, Lo/WinningTypes;->run:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/DeviceAttrResponse;->onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getEventName;)V
    .locals 1

    iget-object p1, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->mayLaunchUrl()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/PayoutInstrumentJsonAdapter;->extraCallback(Lo/getEventName;)V

    return-void
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1}, Lo/clone;->w_()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lo/WinningTypes;->run:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1}, Lo/DeviceAttrResponse;->extraCommand()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final extraCallback(Lo/getEventName;)V
    .locals 1

    iget-object p1, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->newSession()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/PayoutInstrumentJsonAdapter;->ICustomTabsCallback(Lo/getEventName;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/StatementDetailJsonAdapter;->onMessageChannelReady(Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Lo/getEventName;)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/StatementDetailJsonAdapter;->extraCallback(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to extract updated context."

    invoke-static {v1, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {p1}, Lo/DeviceAttrResponse;->postMessage()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1}, Lo/StatementDetailJsonAdapter;->AudioAttributesImplApi21Parcelizer()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/PayoutInstrumentJsonAdapter;->onNavigationEvent(Lo/getEventName;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage(Z)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrumentJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrumentJsonAdapter;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-virtual {v1, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
