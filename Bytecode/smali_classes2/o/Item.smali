.class public final Lo/Item;
.super Lo/clone;

# interfaces
.implements Lo/openRewards;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private newSession:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/clone;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/Item;->warmup:Z

    return-void
.end method

.method private final ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/CardAmountLimit_DuesJsonAdapter;

    invoke-direct {v1, p0, p1}, Lo/CardAmountLimit_DuesJsonAdapter;-><init>(Lo/Item;Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static extraCallback(Lo/GreetingCampaignCodeRequest;I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 46

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v45, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-object/from16 v1, v45

    iget-object v2, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v3, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v6, v3, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v7, v3, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget v8, v3, Lo/setOnCtaClick;->warmup:I

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v9, v3, Lo/setOnCtaClick;->asBinder:J

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v11, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v12, v3, Lo/setOnCtaClick;->asInterface:Z

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    move-object/from16 v16, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v3, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v18, v13

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v20, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v3, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lo/GreetingCampaignCodeRequest;->onTransact:J

    move-wide/from16 v25, v13

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v30, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v31, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->notify:Z

    move/from16 v33, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v34, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v38, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v39, v3

    iget-boolean v3, v0, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v40, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v41, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v42, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v43, v3

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v1 .. v44}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v45
.end method

.method private final extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lo/Item;->extraCallback(Ljava/util/List;)V

    iget-object v2, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v2}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    const-string v0, "Native ad does not have custom rendering mode."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v8}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return v8

    :cond_0
    :try_start_0
    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v2}, Lo/Info;->updateVisuals()Lo/LiveCallbackWrapper;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v2}, Lo/Info;->ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v2}, Lo/Info;->asInterface()Lo/TrackBalanceConfigsJsonAdapter;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object v9, v1

    :goto_3
    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v2}, Lo/Info;->newSession()Lo/openGameRewards;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-static/range {p2 .. p2}, Lo/Item;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_7

    iget-object v4, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_7

    new-instance v9, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onNavigationEvent()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->extraCallback()Lo/enableDarkMode;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->extraCallback()Lo/enableDarkMode;

    move-result-object v2

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object v14, v1

    :goto_5
    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onPostMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->asInterface()D

    move-result-wide v17

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onTransact()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->newSession()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub$Proxy()Lo/getEventName;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub$Proxy()Lo/getEventName;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_6
    move-object/from16 v23, v1

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsService()Lo/getEventName;

    move-result-object v24

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->updateVisuals()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lo/setPath;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/LiveCallbackWrapper;Lo/refreshAuth;)V

    invoke-virtual {v9, v10}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    :goto_6
    invoke-direct {v7, v9}, Lo/Item;->ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    goto/16 :goto_c

    :cond_7
    if-eqz v6, :cond_a

    iget-object v4, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_a

    new-instance v9, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v2

    move-object v14, v2

    goto :goto_7

    :cond_8
    move-object v14, v1

    :goto_7
    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onTransact()D

    move-result-wide v17

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->asInterface()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsService()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_9
    move-object/from16 v23, v1

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->updateVisuals()Lo/getEventName;

    move-result-object v24

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lo/setPath;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/RawBankAccountJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v10}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    goto :goto_6

    :cond_a
    if-eqz v6, :cond_d

    iget-object v4, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v4, :cond_d

    new-instance v9, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v2

    move-object v14, v2

    goto :goto_8

    :cond_b
    move-object v14, v1

    :goto_8
    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onTransact()D

    move-result-wide v16

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->asInterface()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsService()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_c
    move-object/from16 v23, v1

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->updateVisuals()Lo/getEventName;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V

    new-instance v10, Lo/setPath;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/RawBankAccountJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v10}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/logout;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/StatementPeriodJsonAdapter;

    invoke-direct {v2, v7, v9}, Lo/StatementPeriodJsonAdapter;-><init>(Lo/Item;Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V

    :goto_9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_d
    if-eqz v9, :cond_10

    iget-object v4, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_10

    new-instance v6, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v2

    move-object v14, v2

    goto :goto_a

    :cond_e
    move-object v14, v1

    :goto_a
    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v16

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_f
    move-object/from16 v23, v1

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->mayLaunchUrl()Lo/getEventName;

    move-result-object v24

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lo/setPath;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/TrackBalanceConfigsJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v10}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    goto/16 :goto_6

    :cond_10
    if-eqz v9, :cond_13

    iget-object v4, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-eqz v4, :cond_13

    new-instance v6, Lo/StackLayoutManager;

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v2

    move-object v14, v2

    goto :goto_b

    :cond_11
    move-object v14, v1

    :goto_b
    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v19

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_12
    move-object/from16 v20, v1

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->mayLaunchUrl()Lo/getEventName;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v3

    invoke-direct/range {v10 .. v22}, Lo/StackLayoutManager;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V

    new-instance v10, Lo/setPath;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/TrackBalanceConfigsJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v10}, Lo/StackLayoutManager;->onMessageChannelReady(Lo/logout;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/PaymentSummaryJsonAdapter;

    invoke-direct {v2, v7, v9}, Lo/PaymentSummaryJsonAdapter;-><init>(Lo/Item;Lo/StackLayoutManager;)V

    goto/16 :goto_9

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    if-eqz v1, :cond_14

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    invoke-interface {v2}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/RecentOrderJsonAdapter;

    invoke-direct {v3, v7, v2}, Lo/RecentOrderJsonAdapter;-><init>(Lo/Item;Lo/openGameRewards;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_c
    invoke-super/range {p0 .. p2}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    return v0

    :cond_14
    :try_start_1
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lo/DeviceAttrResponse;->extraCallback(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic onMessageChannelReady(Lo/Item;)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 0

    iget-object p0, p0, Lo/Item;->ICustomTabsCallback$Stub$Proxy:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-object p0
.end method

.method private final onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 4

    invoke-static {p2}, Lo/setCreditScoreExist;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    :cond_1
    iget-object v3, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v3, v2}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lo/setCreditScoreExist;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p2

    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onPostMessage(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    :goto_0
    iget-object p2, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2}, Lo/PaymentModeListResponse;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2}, Lo/PaymentModeListResponse;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2, p1}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->onNavigationEvent()V

    :cond_6
    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;

    move-result-object p2

    iget p2, p2, Lo/setCurrentItem$default;->onTransact:I

    invoke-virtual {p1, p2}, Lo/PaymentModeListResponse;->setMinimumWidth(I)V

    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;

    move-result-object p2

    iget p2, p2, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-virtual {p1, p2}, Lo/PaymentModeListResponse;->setMinimumHeight(I)V

    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->requestLayout()V

    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1, v1}, Lo/PaymentModeListResponse;->setVisibility(I)V

    return v0
.end method

.method private final onPostMessage()Lo/LockConfigDataJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final AudioAttributesImplApi21Parcelizer()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lo/Item;->ICustomTabsCallback$Stub$Proxy:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget v0, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/Item;->extraCallback(Lo/GreetingCampaignCodeRequest;I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/Item;->ICustomTabsCallback$Stub$Proxy:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->asInterface:Z

    if-nez v0, :cond_1

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/Item;->extraCallback(Lo/GreetingCampaignCodeRequest;I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lo/Item;->ICustomTabsCallback$Stub$Proxy:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_2

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance p2, Lo/ItemJsonAdapter;

    invoke-direct {p2, p0}, Lo/ItemJsonAdapter;-><init>(Lo/Item;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iput-object v2, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    :cond_3
    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput v1, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->extraCallback()Lo/setOnSetCropOverlayReleasedListener;

    iget-object v1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    const/4 v6, 0x0

    iget-object v7, p0, Lo/Item;->asBinder:Lo/BankAccountData;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lo/setOnSetCropOverlayReleasedListener;->onMessageChannelReady(Landroid/content/Context;Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)Lo/setSwipedDirection;

    move-result-object p1

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    return-void
.end method

.method protected final ICustomTabsCallback(Lo/getEventName;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lo/logout;

    if-eqz v0, :cond_1

    check-cast p1, Lo/logout;

    invoke-interface {p1}, Lo/logout;->onMessageChannelReady()V

    :cond_1
    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    return-void
.end method

.method protected final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 4

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    const-string p1, "newState is not mediation."

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->ICustomTabsCallback()Lo/getTemplateIdentifierName;

    move-result-object v0

    iget-object v3, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/getTemplateIdentifierName;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lo/Item;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-super {p0, p2, v1}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_5

    return v1

    :cond_5
    iput-boolean v2, p0, Lo/Item;->warmup:Z

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lo/Item;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v2, [Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lo/Item;->onMessageChannelReady(Ljava/util/List;)V

    return v2

    :cond_8
    invoke-virtual {p0, v1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    const-string p1, "Response is neither banner nor native."

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/setLastItem;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return v4

    :cond_1
    iget-object v2, v0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->INotificationSideChannel:Lo/getSignInMethods;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lo/setLastItem;->onRelationshipValidationResult:Z

    iget-boolean v5, v0, Lo/Item;->newSession:Z

    if-ne v2, v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Lo/setLastItem;

    iget v7, v1, Lo/setLastItem;->onMessageChannelReady:I

    iget-wide v8, v1, Lo/setLastItem;->ICustomTabsCallback:J

    iget-object v10, v1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    iget v11, v1, Lo/setLastItem;->onPostMessage:I

    iget-object v12, v1, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    iget-boolean v13, v1, Lo/setLastItem;->onTransact:Z

    iget v14, v1, Lo/setLastItem;->asBinder:I

    iget-boolean v5, v1, Lo/setLastItem;->onRelationshipValidationResult:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lo/Item;->newSession:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v15, 0x1

    :goto_2
    iget-object v3, v1, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v1, Lo/setLastItem;->asInterface:Lo/WinLuckyNumberClaim;

    move-object/from16 v17, v3

    iget-object v3, v1, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    move-object/from16 v18, v3

    iget-object v3, v1, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    move-object/from16 v21, v3

    iget-object v3, v1, Lo/setLastItem;->warmup:Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lo/setLastItem;->postMessage:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-boolean v1, v1, Lo/setLastItem;->mayLaunchUrl:Z

    move/from16 v25, v1

    move-object v6, v2

    invoke-direct/range {v6 .. v25}, Lo/setLastItem;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lo/WinLuckyNumberClaim;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_3
    invoke-super {v0, v1}, Lo/clone;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v1

    return v1

    :cond_5
    invoke-super/range {p0 .. p1}, Lo/clone;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v1

    return v1
.end method

.method public final IconCompatParcelizer()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final MediaBrowserCompat()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final cancelAll()V
    .locals 2

    invoke-super {p0}, Lo/clone;->cancelAll()V

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel:Lo/getSignInMethods;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel:Lo/getSignInMethods;

    iget-object v1, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lo/getSignInMethods;->onPostMessage(Lo/SpinDetail;Lo/getEventName;)V

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    return-void
.end method

.method public final extraCallback(Lo/setStartingAngle;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExtras()V
    .locals 2

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getItem()V
    .locals 2

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->cancel()V

    return-void

    :cond_0
    invoke-super {p0}, Lo/clone;->getItem()V

    return-void
.end method

.method public final getRoot()Z
    .locals 1

    invoke-direct {p0}, Lo/Item;->onPostMessage()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Item;->onPostMessage()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lo/LockConfigDataJsonAdapter;->updateVisuals:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getSessionToken()V
    .locals 2

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->INotificationSideChannel()V

    return-void

    :cond_0
    invoke-super {p0}, Lo/clone;->getSessionToken()V

    return-void
.end method

.method public final isConnected()Z
    .locals 1

    invoke-direct {p0}, Lo/Item;->onPostMessage()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Item;->onPostMessage()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lo/LockConfigDataJsonAdapter;->requestPostMessageChannel:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final mayLaunchUrl()V
    .locals 2

    iget-boolean v0, p0, Lo/Item;->warmup:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lo/clone;->mayLaunchUrl()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    return-void
.end method

.method public final onNavigationEvent(Lo/logout;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/openAmexWebView;)V
    .locals 1

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    return-object p1
.end method

.method public final onPostMessage(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/Item;->newSession:Z

    return-void
.end method

.method public final postMessage()V
    .locals 2

    iget-boolean v0, p0, Lo/Item;->warmup:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lo/clone;->postMessage()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final validateRelationship()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
