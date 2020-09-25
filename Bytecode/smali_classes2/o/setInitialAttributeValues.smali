.class public final Lo/setInitialAttributeValues;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private asBinder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/CarrierFingerPrint;

.field private final onMessageChannelReady:Lo/setOnCtaClick;

.field private final onNavigationEvent:Lo/setOnCropWindowChangedListener;

.field private final onPostMessage:Lo/GreetingCampaignCodeRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setPanGiven;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)V
    .locals 8

    new-instance v7, Lo/CarrierFingerPrint;

    new-instance v3, Lo/getCashback_disabled;

    invoke-direct {v3, p1}, Lo/getCashback_disabled;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lo/CarrierFingerPrint;-><init>(Landroid/content/Context;Lo/setPanGiven;Lo/getCashback_disabled;Lo/GameCta;Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V

    invoke-direct {p0, p3, p5, v7}, Lo/setInitialAttributeValues;-><init>(Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;Lo/CarrierFingerPrint;)V

    return-void
.end method

.method private constructor <init>(Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;Lo/CarrierFingerPrint;)V
    .locals 1

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setInitialAttributeValues;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object p1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iput-object p1, p0, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iput-object p2, p0, Lo/setInitialAttributeValues;->onNavigationEvent:Lo/setOnCropWindowChangedListener;

    iput-object p3, p0, Lo/setInitialAttributeValues;->extraCallback:Lo/CarrierFingerPrint;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setInitialAttributeValues;)Lo/setOnCropWindowChangedListener;
    .locals 0

    iget-object p0, p0, Lo/setInitialAttributeValues;->onNavigationEvent:Lo/setOnCropWindowChangedListener;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/setInitialAttributeValues;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setInitialAttributeValues;->asBinder:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setInitialAttributeValues;->asBinder:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage()V
    .locals 49

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lo/setInitialAttributeValues;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lo/setInitialAttributeValues;->extraCallback:Lo/CarrierFingerPrint;

    invoke-static {v0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    iput-object v0, v1, Lo/setInitialAttributeValues;->asBinder:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0xea60

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, -0x2

    move-object v3, v0

    const/4 v9, -0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v9, 0x0

    goto :goto_0

    :catch_1
    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v2, 0x2

    iget-object v0, v1, Lo/setInitialAttributeValues;->asBinder:Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v9, 0x2

    :goto_0
    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-object v5, v3

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget v12, v0, Lo/setOnCtaClick;->warmup:I

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-wide v13, v0, Lo/setOnCtaClick;->asBinder:J

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v15, v0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-wide v7, v0, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v22, v7

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v24, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-wide v7, v0, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v25, v7

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-wide v7, v0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v27, v7

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-wide v7, v0, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-wide/from16 v29, v7

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->notify:Z

    move/from16 v37, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onMessageChannelReady:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v42, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v43, v0

    const/16 v44, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v45, v0

    const/16 v46, 0x0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v47, v0

    iget-object v0, v1, Lo/setInitialAttributeValues;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v48, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v48}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    :goto_1
    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/setInitialCropWindowRect;

    invoke-direct {v2, v1, v3}, Lo/setInitialCropWindowRect;-><init>(Lo/setInitialAttributeValues;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
