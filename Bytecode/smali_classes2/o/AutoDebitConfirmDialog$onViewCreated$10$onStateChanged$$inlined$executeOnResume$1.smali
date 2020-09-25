.class public final Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;
.super Lo/AddressJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static extraCallback:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

.field private static final onNavigationEvent:Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

.field private final onPostMessage:Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-direct {p0}, Lo/AddressJsonAdapter;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    return-void
.end method

.method static final synthetic onNavigationEvent(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lo/getRedirectUrl;

    invoke-direct {v0, p0}, Lo/getRedirectUrl;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;Lo/setCardBackgroundView;Ljava/util/concurrent/ScheduledExecutorService;)Lo/setOnCtaClick;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v3}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance v9, Lo/setCanReverse;

    sget-object v3, Lo/WinningTypes;->AudioAttributesCompatParcelizer:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v0, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v4, v4, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "load_ad"

    invoke-direct {v9, v3, v5, v4}, Lo/setCanReverse;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    iget-wide v3, v0, Lo/setCardBackgroundView;->cancel:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-wide v3, v0, Lo/setCardBackgroundView;->cancel:J

    invoke-virtual {v9, v3, v4}, Lo/setCanReverse;->onPostMessage(J)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v3

    const-string v4, "cts"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v9}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v10

    iget-object v3, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asInterface:Lo/setMinCropResultSize;

    invoke-interface {v3, v1}, Lo/setMinCropResultSize;->onNavigationEvent(Landroid/content/Context;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v3

    sget-object v4, Lo/WinningTypes;->MediaMetadataCompat$Builder:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6, v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v3

    iget-object v4, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onTransact:Lo/EligiblePaymentInstrument;

    invoke-interface {v4, v1}, Lo/EligiblePaymentInstrument;->onPostMessage(Landroid/content/Context;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v4

    sget-object v5, Lo/WinningTypes;->registerCallbackMessenger:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6, v7, v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v4

    iget-object v5, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    iget-object v6, v0, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v5

    iget-object v6, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    iget-object v7, v0, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v6

    iget-object v7, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v11, v0, Lo/setCardBackgroundView;->onTransact:Ljava/lang/String;

    iget-object v12, v0, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v11, v12}, Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v7

    invoke-static {}, Lo/getParcel;->postMessage()Lo/AutoDebitRequestBodyJsonAdapter;

    move-result-object v11

    invoke-virtual {v11, v1}, Lo/AutoDebitRequestBodyJsonAdapter;->onMessageChannelReady(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v13

    iget-object v14, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v14, v14, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v15, "_ad"

    if-eqz v14, :cond_1

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    iget-boolean v12, v0, Lo/setCardBackgroundView;->setDefaultImpl:Z

    if-eqz v12, :cond_2

    if-nez v14, :cond_2

    iget-object v12, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/setScoreListener;

    iget-object v13, v0, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v12, v13}, Lo/setScoreListener;->onMessageChannelReady(Landroid/content/pm/ApplicationInfo;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v13

    :cond_2
    sget-object v12, Lo/WinningTypes;->containsKey:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v14

    invoke-virtual {v14, v12}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v14, v9

    move-object/from16 v16, v10

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v13, v9, v10, v12, v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v12

    sget-object v10, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$7:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v13

    invoke-virtual {v13, v10}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-interface {v10, v1}, Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady(Landroid/content/Context;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v10

    sget-object v12, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$6:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v13

    invoke-virtual {v13, v12}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v17, v14

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, v12, v13, v14, v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v12

    goto :goto_1

    :cond_3
    move-object/from16 v17, v14

    :goto_1
    iget v10, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v13, 0x4

    if-lt v10, v13, :cond_4

    iget-object v10, v0, Lo/setCardBackgroundView;->ICustomTabsService:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    iget-object v10, v0, Lo/setCardBackgroundView;->ICustomTabsService:Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    sget-object v13, Lo/WinningTypes;->setCallbacksMessenger:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v14

    invoke-virtual {v14, v13}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v13, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v13}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "connectivity"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v13, "Device is offline."

    invoke-static {v13}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_5
    iget v13, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v14, 0x7

    if-lt v13, v14, :cond_6

    iget-object v13, v0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    new-instance v14, Lo/getOrderId;

    iget-object v2, v0, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v1, v13, v2}, Lo/getOrderId;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v1, v0, v2}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Lo/setCardBackgroundView;Ljava/lang/String;)Lo/setOnCtaClick;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v2, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/WinPullDownResponseJsonAdapter;

    iget-object v14, v0, Lo/setCardBackgroundView;->validateRelationship:Ljava/util/List;

    invoke-interface {v2, v14}, Lo/WinPullDownResponseJsonAdapter;->ICustomTabsCallback(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v14, Lo/WinningTypes;->MediaMetadataCompat$Builder:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v15

    invoke-virtual {v15, v14}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v18, v13

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    invoke-static {v3, v1, v14, v15, v13}, Lo/InvalidPaymentAmount$$Parcelable;->ICustomTabsCallback(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ErrorDetail;

    invoke-static {v9, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    invoke-static {v12, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/getTotalAmountDue$onNavigationEvent;

    invoke-static {v7, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v11, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/AutoDebitRegistrationStatusResponse;

    if-nez v11, :cond_8

    const-string v0, "Error fetching device info. This is not recoverable."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0

    :cond_8
    new-instance v1, Lo/AutoDebitInstrumentSetupRequestBody;

    invoke-direct {v1}, Lo/AutoDebitInstrumentSetupRequestBody;-><init>()V

    iput-object v0, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onTransact:Lo/setCardBackgroundView;

    iput-object v11, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsService:Lo/AutoDebitRegistrationStatusResponse;

    iput-object v4, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onNavigationEvent:Lo/ErrorDetail;

    iput-object v9, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onMessageChannelReady:Landroid/location/Location;

    iput-object v3, v1, Lo/AutoDebitInstrumentSetupRequestBody;->extraCallback:Landroid/os/Bundle;

    iput-object v7, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object v12, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asInterface:Lo/getTotalAmountDue$onNavigationEvent;

    if-nez v2, :cond_9

    iget-object v3, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onPostMessage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_9
    iput-object v2, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onPostMessage:Ljava/util/List;

    iput-object v10, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback:Landroid/os/Bundle;

    iput-object v5, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object v6, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asBinder:Ljava/lang/String;

    iget-object v2, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/RedeemAssociateRequestModelJsonAdapter;

    move-object/from16 v3, p0

    invoke-interface {v2, v3}, Lo/RedeemAssociateRequestModelJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback$Stub$Proxy:Lorg/json/JSONObject;

    iget-boolean v2, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    iput-boolean v2, v1, Lo/AutoDebitInstrumentSetupRequestBody;->newSession:Z

    invoke-static {v3, v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Landroid/content/Context;Lo/AutoDebitInstrumentSetupRequestBody;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0

    :cond_a
    iget v2, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v4, 0x7

    if-ge v2, v4, :cond_b

    :try_start_0
    const-string v2, "request_id"

    move-object/from16 v13, v18

    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :cond_b
    :goto_4
    const-string v2, "arc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, v16

    move-object/from16 v9, v17

    invoke-virtual {v9, v10, v2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    invoke-virtual {v9}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-object v2, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsService:Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;

    invoke-interface {v2}, Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;->onMessageChannelReady()Lo/RentOrderResponseJsonAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/RentOrderResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    sget-object v2, Lo/AutoDebitInstrumentSetupResponse;->onMessageChannelReady:Lo/Footer$$Parcelable;

    move-object/from16 v4, p3

    invoke-static {v1, v2, v4}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    const-wide/16 v11, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v11, v12, v2, v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    iget-object v2, v8, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ConfigJsonAdapter;

    invoke-virtual {v2}, Lo/ConfigJsonAdapter;->onMessageChannelReady()Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v2, v4}, Lo/FooterJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/String;)V

    :cond_c
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/getRedirectUrl;

    if-nez v7, :cond_d

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0

    :cond_d
    invoke-virtual {v7}, Lo/getRedirectUrl;->onMessageChannelReady()I

    move-result v1

    const/4 v4, -0x2

    if-eq v1, v4, :cond_e

    new-instance v0, Lo/setOnCtaClick;

    invoke-virtual {v7}, Lo/getRedirectUrl;->onMessageChannelReady()I

    move-result v1

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0

    :cond_e
    invoke-virtual {v9}, Lo/setCanReverse;->onMessageChannelReady()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-virtual {v7}, Lo/getRedirectUrl;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v7}, Lo/getRedirectUrl;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Lo/setCardBackgroundView;Ljava/lang/String;)Lo/setOnCtaClick;

    move-result-object v12

    goto :goto_5

    :cond_f
    move-object v12, v2

    :goto_5
    if-nez v12, :cond_10

    invoke-virtual {v7}, Lo/getRedirectUrl;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-object v2, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v7}, Lo/getRedirectUrl;->onPostMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v8}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/setCardBackgroundView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getRedirectUrl;Lo/setCanReverse;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)Lo/setOnCtaClick;

    move-result-object v12

    :cond_10
    if-nez v12, :cond_11

    new-instance v12, Lo/setOnCtaClick;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lo/setOnCtaClick;-><init>(I)V

    :cond_11
    const-string v0, "tts"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    invoke-virtual {v9}, Lo/setCanReverse;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    return-object v12
.end method

.method public static onNavigationEvent(Lo/setCardBackgroundView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getRedirectUrl;Lo/setCanReverse;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)Lo/setOnCtaClick;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    if-eqz v1, :cond_0

    invoke-virtual/range {p7 .. p7}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    new-instance v5, Lo/AutoDebitInstrumentsResponseJsonAdapter;

    invoke-virtual/range {p6 .. p6}, Lo/getRedirectUrl;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lo/AutoDebitInstrumentsResponseJsonAdapter;-><init>(Lo/setCardBackgroundView;Ljava/lang/String;)V

    const-string v6, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-static {v6}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    move-object/from16 v7, p3

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v7

    invoke-interface {v7}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-eqz v2, :cond_2

    iget-object v11, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v11}, Lo/EligiblePaymentInstrumentJsonAdapter;->onMessageChannelReady()V

    :cond_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v12

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v12, v13, v14, v9, v11}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual/range {p6 .. p6}, Lo/getRedirectUrl;->onTransact()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "x-afma-drt-cookie"

    move-object/from16 v15, p4

    invoke-virtual {v11, v12, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v15, p4

    :goto_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "x-afma-drt-v2-cookie"

    move-object/from16 v9, p5

    invoke-virtual {v11, v12, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v15, p4

    :cond_5
    move-object/from16 v9, p5

    :goto_4
    iget-object v12, v0, Lo/setCardBackgroundView;->INotificationSideChannel$Stub:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "Sending webview cookie in ad request header."

    invoke-static/range {v16 .. v16}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    const-string v3, "Cookie"

    invoke-virtual {v11, v3, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x1

    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Lo/getRedirectUrl;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lo/getRedirectUrl;->extraCallback()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v3, v12

    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3, v12}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    const/4 v12, 0x0

    :goto_6
    new-instance v3, Lo/getCurrencyType;

    iget-object v9, v0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    invoke-direct {v3, v9}, Lo/getCurrencyType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11, v12}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v3, v11, v9}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;I)V

    const/16 v0, 0xc8

    const/16 v13, 0x12c

    if-lt v9, v0, :cond_a

    if-ge v9, v13, :cond_a

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v6}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v6}, Lo/extraCallback;->ICustomTabsCallback(Ljava/io/Closeable;)V

    invoke-virtual {v3, v10}, Lo/getCurrencyType;->onNavigationEvent(Ljava/lang/String;)V

    invoke-static {v0, v12, v10, v9}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v5, v0, v12, v10}, Lo/AutoDebitInstrumentsResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    const-string v0, "ufe"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    :cond_8
    invoke-virtual/range {p6 .. p6}, Lo/getRedirectUrl;->ICustomTabsCallback$Stub()Z

    move-result v0

    invoke-virtual {v5, v7, v8, v0}, Lo/AutoDebitInstrumentsResponseJsonAdapter;->onNavigationEvent(JZ)Lo/setOnCtaClick;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_9

    iget-object v1, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v1}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_9
    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v6

    goto :goto_7

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    :goto_7
    :try_start_9
    invoke-static {v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/io/Closeable;)V

    throw v0

    :cond_a
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v12, v3, v9}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v9, v13, :cond_10

    const/16 v0, 0x190

    if-ge v9, v0, :cond_10

    const-string v0, "Location"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_b

    iget-object v1, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v1}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :cond_b
    return-object v0

    :cond_c
    :try_start_b
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/2addr v10, v0

    sget-object v0, Lo/WinningTypes;->RatingCompat$StarStyle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v9

    invoke-virtual {v9, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v10, v0, :cond_e

    const-string v0, "Too many redirects."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_d

    iget-object v1, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v1}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_d
    return-object v0

    :cond_e
    :try_start_d
    invoke-virtual {v5, v12}, Lo/AutoDebitInstrumentsResponseJsonAdapter;->onMessageChannelReady(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_f

    iget-object v0, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v0}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_f
    move-object/from16 v0, p0

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0x2e

    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received error HTTP response code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_11

    iget-object v1, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v1}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V

    :cond_11
    return-object v0

    :catchall_4
    move-exception v0

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_12

    iget-object v1, v2, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    invoke-interface {v1}, Lo/EligiblePaymentInstrumentJsonAdapter;->extraCallback()V

    :cond_12
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error while connecting to ad server: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0
.end method

.method public static onPostMessage(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;
    .locals 2

    sget-object v0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    new-instance v1, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)V

    sput-object v1, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lo/ContactJsonAdapter;->onNavigationEvent(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "      "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "  Body:"

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    move p0, v0

    goto :goto_2

    :cond_3
    const-string p0, "    null"

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_4
    const/16 p0, 0x22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "  Response Code:\n    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCardBackgroundView;)Lo/setOnCtaClick;
    .locals 3

    iget-object v0, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;Lo/setCardBackgroundView;Ljava/util/concurrent/ScheduledExecutorService;)Lo/setOnCtaClick;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/setCardBackgroundView;Lo/LinkCampaignResponseJsonAdapter;)V
    .locals 3

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v2, p1, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    invoke-virtual {v0, v1, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    new-instance v0, Lo/AutoDebitInstrumentsResponse;

    invoke-direct {v0, p0, p1, p2}, Lo/AutoDebitInstrumentsResponse;-><init>(Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;Lo/setCardBackgroundView;Lo/LinkCampaignResponseJsonAdapter;)V

    invoke-static {v0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    invoke-static {}, Lo/getParcel;->extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    move-result-object p2

    invoke-virtual {p2}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;->ICustomTabsCallback()Landroid/os/Looper;

    invoke-static {}, Lo/getParcel;->extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    move-result-object p2

    invoke-virtual {p2}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;->onPostMessage()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;-><init>(Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;Ljava/util/concurrent/Future;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/PostRedemptionDetailJsonAdapter;Lo/LinkCampaignRequest;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Lo/PostRedemptionDetailJsonAdapter;Lo/LinkCampaignRequest;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
