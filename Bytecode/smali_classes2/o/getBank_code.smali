.class final Lo/getBank_code;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCanReverse;

.field final synthetic extraCallback:Lo/StatementDetailsRequestJsonAdapter;

.field final synthetic onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

.field final synthetic onNavigationEvent:Lo/GreetingCampaignCodeRequest;


# direct methods
.method constructor <init>(Lo/BankDetailsResponse$BanksDetail;Lo/GreetingCampaignCodeRequest;Lo/StatementDetailsRequestJsonAdapter;Lo/setCanReverse;)V
    .locals 0

    iput-object p1, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iput-object p2, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iput-object p3, p0, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    iput-object p4, p0, Lo/getBank_code;->ICustomTabsCallback:Lo/setCanReverse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->updateVisuals:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v0, v0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->cancelAll:Lo/setStartingAngle;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;

    iget-object v3, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v4, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v4, v4, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v4, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;-><init>(Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v0, v0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v3, 0x1

    iput v3, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    :try_start_0
    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iput-boolean v1, v0, Lo/BankDetailsResponse$BanksDetail;->onNavigationEvent:Z

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v0, v0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->cancelAll:Lo/setStartingAngle;

    invoke-interface {v0, v2}, Lo/setStartingAngle;->onNavigationEvent(Lo/setPieAngle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iput-boolean v3, v0, Lo/BankDetailsResponse$BanksDetail;->onNavigationEvent:Z

    :cond_1
    new-instance v0, Lo/RecentOrder;

    iget-object v2, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v2, v2, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v3, p0, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    iget-object v4, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v4, v4, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v4, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    invoke-direct {v0, v2, v3, v4}, Lo/RecentOrder;-><init>(Landroid/content/Context;Lo/StatementDetailsRequestJsonAdapter;Lo/AddressListResponseJsonAdapter;)V

    :try_start_1
    iget-object v2, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v3, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v4, p0, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    invoke-virtual {v2, v3, v0, v4}, Lo/BankDetailsResponse$BanksDetail;->onNavigationEvent(Lo/GreetingCampaignCodeRequest;Lo/RecentOrder;Lo/StatementDetailsRequestJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzarg; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lo/CardAmountLimit$Dues;

    invoke-direct {v2, p0, v0}, Lo/CardAmountLimit$Dues;-><init>(Lo/getBank_code;Lo/RecentOrder;)V

    invoke-interface {v9, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lo/PaymentSummary;

    invoke-direct {v2, p0, v0}, Lo/PaymentSummary;-><init>(Lo/getBank_code;Lo/RecentOrder;)V

    invoke-interface {v9, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v0, v0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput v1, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iget-object v0, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v0, v0, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->extraCallback()Lo/setOnSetCropOverlayReleasedListener;

    iget-object v1, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v1, v1, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v6, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v7, p0, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v6, Lo/BankDetailsResponse$BanksDetail;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v8, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    iget-object v1, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v10, v1, Lo/BankDetailsResponse$BanksDetail;->asBinder:Lo/BankAccountData;

    iget-object v11, p0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    iget-object v12, p0, Lo/getBank_code;->ICustomTabsCallback:Lo/setCanReverse;

    invoke-static/range {v5 .. v12}, Lo/setOnSetCropOverlayReleasedListener;->onMessageChannelReady(Landroid/content/Context;Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)Lo/setSwipedDirection;

    move-result-object v1

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/CardAmountLimitJsonAdapter;

    invoke-direct {v1, p0}, Lo/CardAmountLimitJsonAdapter;-><init>(Lo/getBank_code;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
