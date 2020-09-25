.class public final Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;
.super Lo/BankDetailsResponse$BanksDetail;

# interfaces
.implements Lo/getExchangeRate;
.implements Lo/StatementResponse_UserDetailsJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:I

.field private transient ICustomTabsService:Z

.field private final extraCommand:Lo/PayoutInstrument;

.field private getInterfaceDescriptor:Z

.field private final mayLaunchUrl:Ljava/lang/String;

.field private newSession:F

.field private postMessage:Lo/SummaryBankPropertiesJsonAdapter;

.field private updateVisuals:Ljava/lang/String;

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 6

    invoke-direct/range {p0 .. p6}, Lo/BankDetailsResponse$BanksDetail;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    const/4 p1, -0x1

    iput p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback$Stub$Proxy:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsService:Z

    if-eqz p2, :cond_0

    iget-object p2, p2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string p3, "reward_mb"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "/Rewarded"

    goto :goto_0

    :cond_1
    const-string p2, "/Interstitial"

    :goto_0
    iput-object p2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->mayLaunchUrl:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance v3, Lo/getEarnedPoints;

    invoke-direct {v3, p0}, Lo/getEarnedPoints;-><init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    new-instance p1, Lo/PayoutInstrument;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->asBinder:Lo/BankAccountData;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/PayoutInstrument;-><init>(Lo/PaymentMode$$Parcelable;Lo/BankAccountData;Lo/BadgeJsonAdapter;Lo/getTxnCurrency;Lo/setOnCropWindowChangedListener;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)F
    .locals 0

    iget p0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->newSession:F

    return p0
.end method

.method private final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic extraCallback(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)Z
    .locals 0

    iget-boolean p0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->getInterfaceDescriptor:Z

    return p0
.end method

.method private static onMessageChannelReady(Lo/GreetingCampaignCodeRequest;)Lo/GreetingCampaignCodeRequest;
    .locals 75

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    invoke-static {v0}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Lo/setOnCtaClick;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pubid"

    iget-object v4, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v4, v4, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lo/TabConfigResponse;

    move-object v2, v0

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    invoke-direct/range {v2 .. v25}, Lo/TabConfigResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    iget-object v2, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    new-instance v24, Lo/LockConfigDataJsonAdapter;

    move-object/from16 v3, v24

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    iget-object v11, v2, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    iget-boolean v12, v2, Lo/setOnCtaClick;->setDefaultImpl:Z

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const-string v13, ""

    invoke-direct/range {v3 .. v23}, Lo/LockConfigDataJsonAdapter;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v5, Lo/setOnCtaClick;

    move-object/from16 v25, v5

    iget-object v0, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    move-object/from16 v26, v0

    iget-object v0, v2, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v2, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v30

    iget-wide v3, v2, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v31, v3

    const/16 v33, 0x1

    iget-wide v3, v2, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v34, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v36

    iget-wide v3, v2, Lo/setOnCtaClick;->asBinder:J

    move-wide/from16 v37, v3

    iget v0, v2, Lo/setOnCtaClick;->warmup:I

    move/from16 v39, v0

    iget-object v0, v2, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-wide v3, v2, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-wide/from16 v41, v3

    iget-object v0, v2, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->ICustomTabsCallback$Stub$Proxy:Z

    move/from16 v44, v0

    iget-object v0, v2, Lo/setOnCtaClick;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    iget-boolean v0, v2, Lo/setOnCtaClick;->updateVisuals:Z

    move/from16 v47, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->postMessage:Z

    move/from16 v48, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->extraCommand:Z

    move/from16 v49, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->IPostMessageService:Z

    move/from16 v50, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->ICustomTabsService$Stub$Proxy:Z

    move/from16 v51, v0

    iget-object v0, v2, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    move-object/from16 v52, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    move/from16 v53, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->cancelAll:Z

    move/from16 v54, v0

    const/16 v55, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v56

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v57

    iget-boolean v0, v2, Lo/setOnCtaClick;->notify:Z

    move/from16 v58, v0

    iget-object v0, v2, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v59, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->INotificationSideChannel$Default:Z

    move/from16 v60, v0

    iget-object v0, v2, Lo/setOnCtaClick;->INotificationSideChannel$Stub:Ljava/lang/String;

    move-object/from16 v61, v0

    iget-object v0, v2, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v62, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->setDefaultImpl:Z

    move/from16 v63, v0

    iget-object v0, v2, Lo/setOnCtaClick;->read:Ljava/lang/String;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    iget-object v0, v2, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v66, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->write:Z

    move/from16 v67, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->AudioAttributesCompatParcelizer:Z

    move/from16 v68, v0

    iget-boolean v0, v2, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v69, v0

    const/16 v70, 0x0

    iget-boolean v0, v2, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v71, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v72

    iget-boolean v0, v2, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v73, v0

    iget-object v0, v2, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v74, v0

    invoke-direct/range {v25 .. v74}, Lo/setOnCtaClick;-><init>(Lo/setCardBackgroundView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;)V

    new-instance v0, Lo/GreetingCampaignCodeRequest;

    iget-object v4, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v7, v1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iget v8, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    iget-wide v9, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iget-wide v11, v1, Lo/GreetingCampaignCodeRequest;->onTransact:J

    const/4 v13, 0x0

    iget-object v14, v1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/4 v15, 0x0

    move-object v3, v0

    move-object/from16 v6, v24

    invoke-direct/range {v3 .. v15}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final onMessageChannelReady(Z)Z
    .locals 1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)Z
    .locals 0

    iget-boolean p0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->warmup:Z

    return p0
.end method


# virtual methods
.method protected final AudioAttributesCompatParcelizer()Z
    .locals 6

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 3

    iget v0, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V

    return-void

    :cond_0
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    invoke-virtual {p1}, Lo/PayoutInstrument;->onNavigationEvent()V

    return-void

    :cond_2
    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V

    return-void

    :cond_3
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->asInterface:Z

    xor-int/2addr v0, v1

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v1, v1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    invoke-static {v1}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Lo/setLastItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {p1}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Lo/GreetingCampaignCodeRequest;)Lo/GreetingCampaignCodeRequest;

    move-result-object p1

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    :cond_4
    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->getInterfaceDescriptor:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 3

    iget-boolean v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lo/PayoutInstrument;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    invoke-virtual {p1, v1, p2, v2}, Lo/Data;->extraCallback(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p2, v0}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final ICustomTabsService$Stub()V
    .locals 0

    invoke-virtual {p0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->RemoteActionCompatParcelizer()V

    invoke-super {p0}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsService$Stub()V

    return-void
.end method

.method public final IconCompatParcelizer()V
    .locals 12

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    iget-boolean v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->getInterfaceDescriptor:Z

    invoke-virtual {v0, v1}, Lo/PayoutInstrument;->onMessageChannelReady(Z)V

    return-void

    :cond_1
    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lo/Template;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lo/Template;->onTransact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->updateVisuals:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->updateVisuals:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_4

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$SearchResultReceiver:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsService:Z

    const-string v3, "action"

    const-string v4, "appid"

    if-nez v2, :cond_6

    const-string v2, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "show_interstitial_before_load_finish"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback(Landroid/os/Bundle;)V

    :cond_6
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v2}, Lo/AuthSupportedResponse$MetaData;->onRelationshipValidationResult(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback(Landroid/os/Bundle;)V

    :cond_7
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v0, :cond_a

    :try_start_0
    sget-object v0, Lo/WinningTypes;->dump:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    iget-boolean v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->getInterfaceDescriptor:Z

    invoke-interface {v0, v1}, Lo/Info;->onMessageChannelReady(Z)V

    :cond_9
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v0}, Lo/Info;->extraCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->RemoteActionCompatParcelizer()V

    return-void

    :cond_a
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_b

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Z)V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/PaymentMode$$Parcelable;->onNavigationEvent(Landroid/view/View;)V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->asInterface:Lo/Data;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v3, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v2, v3}, Lo/Data;->onNavigationEvent(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    :cond_d
    invoke-static {}, Lo/component20;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lo/LifestyleComponentAsset;

    iget-object v3, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v4, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v2, v0}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    goto :goto_3

    :cond_e
    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v2

    new-instance v3, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v3, p0, v0}, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-interface {v2, v3}, Lo/SizeFilter;->onNavigationEvent(Lo/UploadFilters;)V

    :cond_f
    :goto_3
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-boolean v0, v0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->asBinder(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub()Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback$Stub$Proxy:I

    sget-object v2, Lo/WinningTypes;->getTitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    new-instance v0, Lo/setMessage;

    iget v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback$Stub$Proxy:I

    invoke-direct {v0, p0, v1}, Lo/setMessage;-><init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;I)V

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->asBinder()Lo/PaymentModeListResponseJsonAdapter;

    return-void

    :cond_11
    new-instance v0, Lo/setStatus;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-boolean v3, v2, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    invoke-virtual {p0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->AudioAttributesCompatParcelizer()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-boolean v8, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->getInterfaceDescriptor:Z

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v9, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IconCompatParcelizer:Z

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v10, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesImplApi21Parcelizer:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lo/setStatus;-><init>(ZZZFIZZZ)V

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancelAll()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onTransact:I

    :cond_12
    move v7, v2

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v6, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v8, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v9, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancel:Ljava/lang/String;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v10, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ILo/DataListJsonAdapter;Ljava/lang/String;Lo/setStatus;)V

    invoke-static {}, Lo/getParcel;->onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v0, v11, v1}, Lo/CampaignIntroDetailsJsonAdapter;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method

.method public final MediaBrowserCompat()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final RemoteActionCompatParcelizer()V
    .locals 2

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub()Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    move-result-object v0

    iget v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem;->onPostMessage(Ljava/lang/Integer;)V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    iput-boolean v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsService:Z

    :cond_0
    return-void
.end method

.method protected final cancelAll()V
    .locals 11

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v1

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/getData;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v1, v1, Lo/DataListJsonAdapter;->onPostMessage:I

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v2, v2, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v5

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->read()Ljava/lang/String;

    move-result-object v10

    const-string v8, ""

    const-string v9, "javascript"

    invoke-virtual/range {v5 .. v10}, Lo/getData;->onNavigationEvent(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/getEventName;

    move-result-object v1

    iput-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onTransact:Lo/getEventName;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onTransact:Lo/getEventName;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v1

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onTransact:Lo/getEventName;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/getData;->extraCallback(Lo/getEventName;Landroid/view/View;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onTransact:Lo/getEventName;

    invoke-virtual {v0, v1}, Lo/getData;->onNavigationEvent(Lo/getEventName;)V

    :cond_1
    invoke-super {p0}, Lo/BankDetailsResponse$BanksDetail;->cancelAll()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsService:Z

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-boolean p1, v0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    return-void
.end method

.method public final onMessageChannelReady(ZF)V
    .locals 0

    iput-boolean p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->warmup:Z

    iput p2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->newSession:F

    return-void
.end method

.method protected final onNavigationEvent(Lo/GreetingCampaignCodeRequest;Lo/RecentOrder;Lo/StatementDetailsRequestJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-static {v0}, Lo/SizeFilterJsonAdapter;->onMessageChannelReady(Lo/setCurrentItem$default;)Lo/SizeFilterJsonAdapter;

    move-result-object v2

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v3, v0, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v7, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v8, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v10, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v11, p1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, p0

    invoke-static/range {v1 .. v11}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    sget-object v2, Lo/WinningTypes;->onConnected:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p0

    move-object v6, p0

    move-object v8, p0

    move-object v9, p2

    move-object v10, p0

    move-object v11, p3

    invoke-interface/range {v1 .. v11}, Lo/SizeFilter;->ICustomTabsCallback(Lo/zzd;Lo/getTxnCurrency;Lo/GemIntroDetails;Lo/component8;Lo/CountJsonAdapter;ZLo/StatementResponse_UserDetailsJsonAdapter;Lo/RecentOrder;Lo/isCompressed;Lo/StatementDetailsRequestJsonAdapter;)V

    invoke-virtual {p0, v0}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    iget-object p1, p1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object p1, p1, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance p1, Lo/getTxnType;

    invoke-direct {p1, p0}, Lo/getTxnType;-><init>(Lo/getExchangeRate;)V

    const-string p2, "/reward"

    invoke-interface {v0, p2, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->onTransact()V

    :cond_1
    invoke-virtual {p0}, Lo/DeviceAttrResponse;->INotificationSideChannel$Stub$Proxy()V

    return-void
.end method

.method protected final onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z
    .locals 0

    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {p1}, Lo/getAccount_number;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    :cond_0
    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z
    .locals 3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    const-string p1, "An interstitial is already loading. Aborting."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->postMessage:Lo/SummaryBankPropertiesJsonAdapter;

    if-nez v0, :cond_1

    invoke-static {p1}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Lo/setLastItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lo/SummaryBankPropertiesJsonAdapter;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/SummaryBankPropertiesJsonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->postMessage:Lo/SummaryBankPropertiesJsonAdapter;

    :cond_1
    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()V
    .locals 3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->ICustomTabsCallback$Stub()V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub$Proxy()V

    return-void

    :cond_1
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub$Proxy()V

    return-void
.end method

.method public final onPostMessage(Lo/FooterActions;)V
    .locals 3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->extraCommand:Lo/PayoutInstrument;

    invoke-virtual {v0, p1}, Lo/PayoutInstrument;->onNavigationEvent(Lo/FooterActions;)Lo/FooterActions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/FooterActions;)V

    return-void

    :cond_1
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService:Lo/FooterActions;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object p1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService:Lo/FooterActions;

    :cond_3
    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/FooterActions;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 3

    invoke-virtual {p0}, Lo/clone;->MediaBrowserCompat$ConnectionCallback()V

    invoke-super {p0}, Lo/BankDetailsResponse$BanksDetail;->onRelationshipValidationResult()V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/SizeFilter;->asBinder()V

    :cond_0
    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->updateVisuals:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/Template;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->postMessage:Lo/SummaryBankPropertiesJsonAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_2
    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onTransact:Lo/getEventName;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final z_()V
    .locals 2

    invoke-super {p0}, Lo/BankDetailsResponse$BanksDetail;->z_()V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->postMessage:Lo/SummaryBankPropertiesJsonAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_0
    invoke-virtual {p0}, Lo/DeviceAttrResponse;->write()V

    return-void
.end method
