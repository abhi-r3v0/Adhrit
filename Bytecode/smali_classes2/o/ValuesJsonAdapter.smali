.class public final Lo/ValuesJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

.field private extraCallback:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:Ljava/lang/Runnable;

.field private onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/FieldRequestModelJsonAdapter;

    invoke-direct {v0, p0}, Lo/FieldRequestModelJsonAdapter;-><init>(Lo/ValuesJsonAdapter;)V

    iput-object v0, p0, Lo/ValuesJsonAdapter;->onNavigationEvent:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ValuesJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/ValuesJsonAdapter;->onNavigationEvent()V

    return-void
.end method

.method static synthetic extraCallback(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;)Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;
    .locals 0

    iput-object p1, p0, Lo/ValuesJsonAdapter;->extraCallback:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/ValuesJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/ValuesJsonAdapter;->onMessageChannelReady()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/ValuesJsonAdapter;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;
    .locals 0

    iget-object p0, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    return-object p0
.end method

.method private final onMessageChannelReady()V
    .locals 6

    iget-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ValuesJsonAdapter;->onPostMessage:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lo/FieldRequestModel;

    invoke-direct {v1, p0}, Lo/FieldRequestModel;-><init>(Lo/ValuesJsonAdapter;)V

    new-instance v2, Lo/RedeemAssociateRequestModel;

    invoke-direct {v2, p0}, Lo/RedeemAssociateRequestModel;-><init>(Lo/ValuesJsonAdapter;)V

    new-instance v3, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    iget-object v4, p0, Lo/ValuesJsonAdapter;->onPostMessage:Landroid/content/Context;

    invoke-static {}, Lo/getParcel;->extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    move-result-object v5

    invoke-virtual {v5}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;->ICustomTabsCallback()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    iput-object v3, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    invoke-virtual {v3}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->checkAvailabilityAndConnect()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic onNavigationEvent(Lo/ValuesJsonAdapter;Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;)Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    return-object p1
.end method

.method private final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    invoke-virtual {v1}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    invoke-virtual {v1}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    invoke-virtual {v1}, Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lo/ValuesJsonAdapter;->ICustomTabsCallback:Lo/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    iput-object v1, p0, Lo/ValuesJsonAdapter;->extraCallback:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic onPostMessage(Lo/ValuesJsonAdapter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;)Lo/PostSliderFormInitDataJsonAdapter;
    .locals 2

    iget-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ValuesJsonAdapter;->extraCallback:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    if-nez v1, :cond_0

    new-instance p1, Lo/PostSliderFormInitDataJsonAdapter;

    invoke-direct {p1}, Lo/PostSliderFormInitDataJsonAdapter;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/ValuesJsonAdapter;->extraCallback:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    invoke-interface {v1, p1}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;->extraCallback(Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;)Lo/PostSliderFormInitDataJsonAdapter;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lo/PostSliderFormInitDataJsonAdapter;

    invoke-direct {p1}, Lo/PostSliderFormInitDataJsonAdapter;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ValuesJsonAdapter;->onPostMessage:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/ValuesJsonAdapter;->onPostMessage:Landroid/content/Context;

    sget-object p1, Lo/WinningTypes;->putString:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lo/ValuesJsonAdapter;->onMessageChannelReady()V

    goto :goto_0

    :cond_2
    sget-object p1, Lo/WinningTypes;->putLong:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lo/PostSliderFormInitData;

    invoke-direct {p1, p0}, Lo/PostSliderFormInitData;-><init>(Lo/ValuesJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->asInterface()Lo/RedeemRequestResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/RedeemRequestResponseJsonAdapter;->onNavigationEvent(Lo/RedeemRequestDataJsonAdapter;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()V
    .locals 5

    sget-object v0, Lo/WinningTypes;->putBitmap:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ValuesJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lo/ValuesJsonAdapter;->onMessageChannelReady()V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/ValuesJsonAdapter;->onNavigationEvent:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/ValuesJsonAdapter;->onNavigationEvent:Ljava/lang/Runnable;

    sget-object v3, Lo/WinningTypes;->scaleBitmap:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
