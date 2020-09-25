.class public final Lo/setBounds;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

.field private final extraCallback:Lo/setOnCtaClick;

.field private final onPostMessage:Lo/GreetingCampaignCodeRequest;


# direct methods
.method public constructor <init>(Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;)V
    .locals 0

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    iput-object p1, p0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object p1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iput-object p1, p0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iput-object p2, p0, Lo/setBounds;->ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

    return-void
.end method

.method static synthetic onPostMessage(Lo/setBounds;)Lo/setOnCropWindowChangedListener;
    .locals 0

    iget-object p0, p0, Lo/setBounds;->ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 46

    move-object/from16 v0, p0

    new-instance v15, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-object v1, v15

    iget-object v2, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget v8, v3, Lo/setOnCtaClick;->warmup:I

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget-wide v9, v3, Lo/setOnCtaClick;->asBinder:J

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v11, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget-wide v3, v3, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v20, v3

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget-wide v3, v3, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v21, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-wide v3, v3, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v23, v3

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget-wide v3, v3, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-wide/from16 v25, v3

    iget-object v3, v0, Lo/setBounds;->extraCallback:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->notify:Z

    move/from16 v33, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v34, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v38, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v39, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-boolean v3, v3, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v40, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v41, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v43, v3

    iget-object v3, v0, Lo/setBounds;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v44, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v45, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    invoke-direct/range {v1 .. v44}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/setCropWindowRect;

    move-object/from16 v3, v45

    invoke-direct {v2, v0, v3}, Lo/setCropWindowRect;-><init>(Lo/setBounds;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
