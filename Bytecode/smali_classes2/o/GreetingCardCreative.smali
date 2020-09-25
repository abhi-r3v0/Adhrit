.class final Lo/GreetingCardCreative;
.super Ljava/lang/Object;


# instance fields
.field private volatile onMessageChannelReady:I

.field private final onNavigationEvent:Ljava/lang/Object;

.field private volatile onPostMessage:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GreetingCardCreative;->onNavigationEvent:Ljava/lang/Object;

    sget v0, Lo/GreetingCampaignInvitesResponse;->onMessageChannelReady:I

    iput v0, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/GreetingCardCreative;->onPostMessage:J

    return-void
.end method

.method synthetic constructor <init>(Lo/GreetingCampaignResponse;)V
    .locals 0

    invoke-direct {p0}, Lo/GreetingCardCreative;-><init>()V

    return-void
.end method

.method private final extraCallback(II)V
    .locals 4

    invoke-direct {p0}, Lo/GreetingCardCreative;->onNavigationEvent()V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iget-object v2, p0, Lo/GreetingCardCreative;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    if-eq v3, p1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iput p2, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    iget p1, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    sget p2, Lo/GreetingCampaignInvitesResponse;->onPostMessage:I

    if-ne p1, p2, :cond_1

    iput-wide v0, p0, Lo/GreetingCardCreative;->onPostMessage:J

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final onNavigationEvent()V
    .locals 7

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iget-object v2, p0, Lo/GreetingCardCreative;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    sget v4, Lo/GreetingCampaignInvitesResponse;->onPostMessage:I

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lo/GreetingCardCreative;->onPostMessage:J

    sget-object v5, Lo/WinningTypes;->onMetadataChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_0

    sget v0, Lo/GreetingCampaignInvitesResponse;->onMessageChannelReady:I

    iput v0, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    sget v0, Lo/GreetingCampaignInvitesResponse;->onNavigationEvent:I

    sget v1, Lo/GreetingCampaignInvitesResponse;->onPostMessage:I

    invoke-direct {p0, v0, v1}, Lo/GreetingCardCreative;->extraCallback(II)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 2

    invoke-direct {p0}, Lo/GreetingCardCreative;->onNavigationEvent()V

    iget v0, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    sget v1, Lo/GreetingCampaignInvitesResponse;->onPostMessage:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget p1, Lo/GreetingCampaignInvitesResponse;->onMessageChannelReady:I

    sget v0, Lo/GreetingCampaignInvitesResponse;->onNavigationEvent:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lo/GreetingCardCreative;->extraCallback(II)V

    return-void

    :cond_0
    sget p1, Lo/GreetingCampaignInvitesResponse;->onNavigationEvent:I

    sget v0, Lo/GreetingCampaignInvitesResponse;->onMessageChannelReady:I

    goto :goto_0
.end method

.method public final onPostMessage()Z
    .locals 2

    invoke-direct {p0}, Lo/GreetingCardCreative;->onNavigationEvent()V

    iget v0, p0, Lo/GreetingCardCreative;->onMessageChannelReady:I

    sget v1, Lo/GreetingCampaignInvitesResponse;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
