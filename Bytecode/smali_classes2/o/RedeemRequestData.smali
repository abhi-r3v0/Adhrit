.class public final Lo/RedeemRequestData;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/RedeemRequestData;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;
    .locals 8

    iget-object v0, p0, Lo/RedeemRequestData;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Queue empty"

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_3

    const/high16 v1, -0x80000000

    iget-object v3, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;

    invoke-virtual {v6}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->asInterface()I

    move-result v7

    if-le v7, v1, :cond_1

    move v4, v5

    move-object v2, v6

    move v1, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :cond_3
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;

    invoke-virtual {v1}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->extraCallback()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;)V
    .locals 4

    iget-object v0, p0, Lo/RedeemRequestData;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queue is full, current size = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lo/RedeemRequestData;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/RedeemRequestData;->onMessageChannelReady:I

    invoke-virtual {p1, v1}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->onMessageChannelReady(I)V

    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;)Z
    .locals 6

    iget-object v0, p0, Lo/RedeemRequestData;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;

    sget-object v3, Lo/WinningTypes;->getServiceComponent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v3

    invoke-virtual {v3}, Lo/ContactSyncResponse;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_1
    sget-object v3, Lo/WinningTypes;->unsubscribe:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v3

    invoke-virtual {v3}, Lo/ContactSyncResponse;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_2
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage(Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;)Z
    .locals 2

    iget-object v0, p0, Lo/RedeemRequestData;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RedeemRequestData;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
