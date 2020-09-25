.class public final Lo/StatementDetailJsonAdapter;
.super Lo/clone;

# interfaces
.implements Lo/BadgeJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static getInterfaceDescriptor:Lo/StatementDetailJsonAdapter;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

.field private ICustomTabsService:Z

.field private final newSession:Lo/SummaryBankPropertiesJsonAdapter;

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Lo/BankAccountData;Lo/DataListJsonAdapter;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/clone;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    sput-object p0, Lo/StatementDetailJsonAdapter;->getInterfaceDescriptor:Lo/StatementDetailJsonAdapter;

    new-instance p2, Lo/SummaryBankPropertiesJsonAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lo/SummaryBankPropertiesJsonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lo/StatementDetailJsonAdapter;->newSession:Lo/SummaryBankPropertiesJsonAdapter;

    new-instance p1, Lo/PayoutInstrument;

    iget-object v1, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, p0, Lo/StatementDetailJsonAdapter;->asBinder:Lo/BankAccountData;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/PayoutInstrument;-><init>(Lo/PaymentMode$$Parcelable;Lo/BankAccountData;Lo/BadgeJsonAdapter;Lo/getTxnCurrency;Lo/setOnCropWindowChangedListener;)V

    iput-object p1, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    return-void
.end method

.method public static AudioAttributesCompatParcelizer()Lo/StatementDetailJsonAdapter;
    .locals 1

    sget-object v0, Lo/StatementDetailJsonAdapter;->getInterfaceDescriptor:Lo/StatementDetailJsonAdapter;

    return-object v0
.end method

.method private static ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;)Lo/GreetingCampaignCodeRequest;
    .locals 50

    move-object/from16 v1, p0

    const-string v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    invoke-static {v0}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Lo/setOnCtaClick;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "impression_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pubid"

    iget-object v4, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v4, v4, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lo/TabConfigResponse;

    move-object v5, v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    invoke-direct/range {v5 .. v28}, Lo/TabConfigResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    new-instance v0, Lo/LockConfigDataJsonAdapter;

    move-object/from16 v29, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lo/TabConfigResponse;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    sget-object v2, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v35

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v36

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v37

    const/16 v38, 0x0

    const-wide/16 v40, -0x1

    const/16 v42, 0x0

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x1

    const-wide/16 v47, -0x1

    const/16 v49, 0x0

    const-string v39, ""

    invoke-direct/range {v29 .. v49}, Lo/LockConfigDataJsonAdapter;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lo/GreetingCampaignCodeRequest;

    iget-object v3, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v4, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v5, v1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iget v6, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    iget-wide v7, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iget-wide v9, v1, Lo/GreetingCampaignCodeRequest;->onTransact:J

    iget-object v11, v1, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/16 v41, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v0

    move-object/from16 v33, v5

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-object/from16 v39, v11

    move-object/from16 v40, v1

    invoke-direct/range {v29 .. v41}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lo/GreetingCampaignCodeRequest;

    iget-object v4, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v5, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    const/4 v6, 0x0

    iget-object v7, v1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    const/4 v8, 0x0

    iget-wide v9, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iget-wide v11, v1, Lo/GreetingCampaignCodeRequest;->onTransact:J

    iget-object v13, v1, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    iget-object v14, v1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/4 v15, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/StatementDetailJsonAdapter;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return-void
.end method


# virtual methods
.method public final AudioAttributesImplApi21Parcelizer()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 1

    iget p2, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    sget-object p2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/TemplatesJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/TemplatesJsonAdapter;-><init>(Lo/StatementDetailJsonAdapter;Lo/GreetingCampaignCodeRequest;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, p2, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iget-object p2, p1, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {p1}, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;)Lo/GreetingCampaignCodeRequest;

    move-result-object p1

    iput-object p1, p2, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    :cond_1
    iget-object p1, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {p1}, Lo/PayoutInstrument;->onNavigationEvent()V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/StatementDetailJsonAdapter;->warmup:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    invoke-static {p1, p2}, Lo/PayoutInstrument;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    return p1
.end method

.method public final ICustomTabsService$Stub()V
    .locals 2

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-super {p0}, Lo/clone;->ICustomTabsService$Stub()V

    return-void
.end method

.method public final RemoteActionCompatParcelizer()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/StatementDetailJsonAdapter;->AudioAttributesImplApi21Parcelizer()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    iget-boolean v1, p0, Lo/StatementDetailJsonAdapter;->warmup:Z

    invoke-virtual {v0, v1}, Lo/PayoutInstrument;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final asInterface()V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->onTransact()V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->INotificationSideChannel$Stub$Proxy()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/Cta$Deeplink;
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0, p1}, Lo/PayoutInstrument;->ICustomTabsCallback(Ljava/lang/String;)Lo/Cta$Deeplink;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->ICustomTabsCallback$Stub()V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub$Proxy()V

    return-void
.end method

.method public final extraCallback(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0, p1}, Lo/PayoutInstrument;->onPostMessage(Landroid/content/Context;)V

    return-void
.end method

.method public final extraCallback(Lo/FooterActions;)V
    .locals 7

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0, p1}, Lo/PayoutInstrument;->onNavigationEvent(Lo/FooterActions;)Lo/FooterActions;

    move-result-object p1

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v3, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p1, Lo/FooterActions;->onNavigationEvent:Ljava/lang/String;

    iget v6, p1, Lo/FooterActions;->onMessageChannelReady:I

    invoke-virtual/range {v1 .. v6}, Lo/Template;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/FooterActions;)V

    return-void
.end method

.method public final mayLaunchUrl()V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->onMessageChannelReady()V

    return-void
.end method

.method public final newSession()V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->asBinder()V

    invoke-super {p0}, Lo/clone;->newSession()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->u_()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p1, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Invalid ad unit id. Aborting."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/Templates;

    invoke-direct {v0, p0}, Lo/Templates;-><init>(Lo/StatementDetailJsonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsService:Z

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, p1, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->newSession:Lo/SummaryBankPropertiesJsonAdapter;

    iget-object v1, p1, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/SummaryBankPropertiesJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object p1, p1, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->onMessageChannelReady:Lo/setLastItem;

    invoke-super {p0, p1}, Lo/clone;->ICustomTabsCallback(Lo/setLastItem;)Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->newSession:Lo/SummaryBankPropertiesJsonAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_0
    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub$Proxy()V

    return-void
.end method

.method public final onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()V
    .locals 2

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/StatementDetailJsonAdapter;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->newSession:Lo/SummaryBankPropertiesJsonAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_0
    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub()V

    return-void
.end method

.method public final postMessage()V
    .locals 1

    iget-object v0, p0, Lo/StatementDetailJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->extraCallback()V

    return-void
.end method
