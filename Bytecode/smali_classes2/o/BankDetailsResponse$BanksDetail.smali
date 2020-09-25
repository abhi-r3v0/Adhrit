.class public abstract Lo/BankDetailsResponse$BanksDetail;
.super Lo/clone;

# interfaces
.implements Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;
.implements Lo/isCompressed;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lo/clone;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-void
.end method


# virtual methods
.method public final AudioAttributesImplBaseParcelizer()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    new-instance p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;Lo/refreshAuth;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method protected final ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 2

    new-instance v0, Lo/CardAmountLimit;

    invoke-direct {v0, p0}, Lo/CardAmountLimit;-><init>(Lo/BankDetailsResponse$BanksDetail;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method protected ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 10

    iget v0, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object p2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/CardAmountLimit$CardLimits;

    invoke-direct {v0, p0, p1}, Lo/CardAmountLimit$CardLimits;-><init>(Lo/BankDetailsResponse$BanksDetail;Lo/GreetingCampaignCodeRequest;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    :cond_1
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->asInterface:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->cancelAll:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput v1, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->extraCallback()Lo/setOnSetCropOverlayReleasedListener;

    iget-object v1, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    const/4 v6, 0x0

    iget-object v7, p0, Lo/BankDetailsResponse$BanksDetail;->asBinder:Lo/BankAccountData;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lo/setOnSetCropOverlayReleasedListener;->onMessageChannelReady(Landroid/content/Context;Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)Lo/setSwipedDirection;

    move-result-object p1

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    return-void

    :cond_2
    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v0, v0, Lo/StatementPeriod;->onNavigationEvent:Lo/SummaryBank;

    iget-object v1, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    invoke-interface {v0, v1, v2, v3}, Lo/SummaryBank;->onNavigationEvent(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/setOnCtaClick;)Lo/StatementDetailsRequestJsonAdapter;

    move-result-object v0

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/getBank_code;

    invoke-direct {v2, p0, p1, v0, p2}, Lo/getBank_code;-><init>(Lo/BankDetailsResponse$BanksDetail;Lo/GreetingCampaignCodeRequest;Lo/StatementDetailsRequestJsonAdapter;Lo/setCanReverse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 2

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->ICustomTabsCallback()Lo/getTemplateIdentifierName;

    move-result-object v0

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getTemplateIdentifierName;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->read:Z

    if-eqz v0, :cond_1

    sget-object v0, Lo/WinningTypes;->onQueueTitleChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string v0, "Could not render test Ad label."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not render test AdLabel."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    return p1
.end method

.method protected cancelAll()V
    .locals 2

    invoke-super {p0}, Lo/clone;->cancelAll()V

    iget-boolean v0, p0, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/WinningTypes;->fromParcel:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {p0, v0}, Lo/BankDetailsResponse$BanksDetail;->onMessageChannelReady(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    :cond_0
    return-void
.end method

.method protected final connect()Z
    .locals 1

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()V
    .locals 0

    invoke-virtual {p0}, Lo/clone;->MediaBrowserCompat$ConnectionCallback()V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->updateVisuals()V

    return-void
.end method

.method public final extraCallback(Lo/setStartingAngle;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->cancelAll:Lo/setStartingAngle;

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->u_()V

    return-void
.end method

.method final onMessageChannelReady(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 4

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankDetailsResponse$BanksDetail;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, p0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/Data;->onMessageChannelReady(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback$Stub$Proxy:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback$Stub$Proxy:Z

    const-string p1, "Request to enable ActiveView before adState is available."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onNavigationEvent(Lo/GreetingCampaignCodeRequest;Lo/RecentOrder;Lo/StatementDetailsRequestJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    iget-object v0, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v1, v0}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object v0, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-static {v1}, Lo/SizeFilterJsonAdapter;->onMessageChannelReady(Lo/setCurrentItem$default;)Lo/SizeFilterJsonAdapter;

    move-result-object v1

    iget-object v2, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, v2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    iget-object v6, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v7, v11, Lo/BankDetailsResponse$BanksDetail;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v9, v11, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v10, v12, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object v8, p0

    invoke-static/range {v0 .. v10}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v13

    iget-object v0, v11, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v0, v0, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    if-nez v0, :cond_2

    invoke-interface {v13}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onPostMessage(Landroid/view/View;)V

    :cond_2
    invoke-interface {v13}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object/from16 v8, p2

    move-object v9, p0

    move-object/from16 v10, p3

    invoke-interface/range {v0 .. v10}, Lo/SizeFilter;->ICustomTabsCallback(Lo/zzd;Lo/getTxnCurrency;Lo/GemIntroDetails;Lo/component8;Lo/CountJsonAdapter;ZLo/StatementResponse_UserDetailsJsonAdapter;Lo/RecentOrder;Lo/isCompressed;Lo/StatementDetailsRequestJsonAdapter;)V

    invoke-virtual {p0, v13}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    iget-object v0, v12, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    invoke-interface {v13, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return-object v13
.end method

.method public final onPostMessage(IIII)V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub$Proxy()V

    return-void
.end method
