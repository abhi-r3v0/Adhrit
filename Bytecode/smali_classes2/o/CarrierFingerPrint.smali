.class public final Lo/CarrierFingerPrint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static onPostMessage:J = 0xaL


# instance fields
.field private final ICustomTabsCallback:Lo/getCashback_disabled;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/setIdentifier;

.field private final asInterface:Lo/GreetingCampaignCodeRequest;

.field private final extraCallback:Lo/setPanGiven;

.field private getInterfaceDescriptor:Lorg/json/JSONObject;

.field private newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/GameCta;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onRelationshipValidationResult:Lo/setCanReverse;

.field private onTransact:Z

.field private warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/setPanGiven;Lo/getCashback_disabled;Lo/GameCta;Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    iput-object p1, p0, Lo/CarrierFingerPrint;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    iput-object p3, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback:Lo/getCashback_disabled;

    iput-object p5, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iput-object p4, p0, Lo/CarrierFingerPrint;->onMessageChannelReady:Lo/GameCta;

    iput-object p6, p0, Lo/CarrierFingerPrint;->onRelationshipValidationResult:Lo/setCanReverse;

    invoke-virtual {p2}, Lo/setPanGiven;->AudioAttributesCompatParcelizer()Lo/setIdentifier;

    move-result-object p1

    iput-object p1, p0, Lo/CarrierFingerPrint;->asBinder:Lo/setIdentifier;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/CarrierFingerPrint;->onTransact:Z

    const/4 p1, -0x2

    iput p1, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub$Proxy:I

    const/4 p1, 0x0

    iput-object p1, p0, Lo/CarrierFingerPrint;->ICustomTabsService:Ljava/util/List;

    iput-object p1, p0, Lo/CarrierFingerPrint;->newSession:Ljava/lang/String;

    iput-object p1, p0, Lo/CarrierFingerPrint;->warmup:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lo/CarrierFingerPrint;->extraCallback(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/CarrierFingerPrint;->onTransact:Z

    iput p1, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub$Proxy:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/CarrierFingerPrint;Lo/openGameRewards;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/CarrierFingerPrint;->ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    invoke-interface {p1}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setPanGiven;->onPostMessage(Ljava/lang/String;)Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static extraCallback(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TV;>;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PaymentModeListResponseJsonAdapter;

    invoke-interface {v1}, Lo/PaymentModeListResponseJsonAdapter;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static extraCallback(Lo/PaymentModeListResponseJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    sget-object v1, Lo/WinningTypes;->setDescription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-static {v0, p0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-static {v0, p0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final extraCallback(Lo/refreshAuth;Z)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 48

    move-object/from16 v1, p0

    iget-object v2, v1, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v3, -0x2

    if-nez p1, :cond_0

    iget v4, v1, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v4, v3, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v3, :cond_1

    const/4 v0, 0x0

    move-object/from16 v32, v0

    goto :goto_1

    :cond_1
    move-object/from16 v32, p1

    :goto_1
    new-instance v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-object v4, v0

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v5, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    const/4 v6, 0x0

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v7, v2, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v9, v2, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v10, v1, Lo/CarrierFingerPrint;->ICustomTabsService:Ljava/util/List;

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget v11, v2, Lo/setOnCtaClick;->warmup:I

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v12, v2, Lo/setOnCtaClick;->asBinder:J

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v14, v2, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v23, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v2, v2, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v24, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-wide v2, v2, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v26, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-wide v2, v2, Lo/GreetingCampaignCodeRequest;->onTransact:J

    move-wide/from16 v28, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->getInterfaceDescriptor:Lorg/json/JSONObject;

    move-object/from16 v31, v2

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->notify:Z

    move/from16 v36, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v37, v2

    const/16 v38, 0x0

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v39, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->newSession:Ljava/lang/String;

    move-object/from16 v40, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v41, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v42, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-boolean v2, v2, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v43, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v45, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v46, v2

    iget-object v2, v1, Lo/CarrierFingerPrint;->warmup:Ljava/lang/String;

    move-object/from16 v47, v2

    move/from16 v44, p2

    invoke-direct/range {v4 .. v47}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic extraCallback(Lo/CarrierFingerPrint;)Lo/setPanGiven;
    .locals 0

    iget-object p0, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    return-object p0
.end method

.method static onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lo/WinningTypes;->setIconBitmap:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string v0, "Exception occurred while waiting for video to load"

    invoke-static {v0, p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    const-string v0, "InterruptedException occurred while waiting for video to load"

    invoke-static {v0, p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onMessageChannelReady(Lorg/json/JSONObject;ZZ)Lo/PaymentModeListResponseJsonAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "url"

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "scale"

    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lo/CarrierFingerPrint;->onNavigationEvent(IZ)V

    invoke-static {v1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2, v4, v5}, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback:Lo/getCashback_disabled;

    new-instance p3, Lo/getAndroidId;

    move-object v1, p3

    move-object v2, p0

    move v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lo/getAndroidId;-><init>(Lo/CarrierFingerPrint;ZDZLjava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lo/getCashback_disabled;->onMessageChannelReady(Ljava/lang/String;Lo/CashBackDetailsJsonAdapter;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method private final onMessageChannelReady()Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 15

    const-string v0, "custom_template_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v3}, Lo/setPanGiven;->onPostMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0}, Lo/CarrierFingerPrint;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v4, v4, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v4, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v5, v5, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v5, v5, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ads"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lo/CarrierFingerPrint;->ICustomTabsCallback(I)V

    :cond_2
    iget-object v4, p0, Lo/CarrierFingerPrint;->asBinder:Lo/setIdentifier;

    invoke-interface {v4, v3}, Lo/setIdentifier;->onPostMessage(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v3

    sget-wide v4, Lo/CarrierFingerPrint;->onPostMessage:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v7}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "success"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "json"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_3
    move-object v9, v2

    :goto_1
    const-string v3, "enable_omid"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "omid_settings"

    if-nez v3, :cond_4

    :goto_2
    :try_start_2
    invoke-static {v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v5

    move-object v13, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "omid_html"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    new-instance v6, Lo/SuggestedAmount;

    invoke-direct {v6}, Lo/SuggestedAmount;-><init>()V

    sget-object v7, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v8, Lo/setCropWindowLimits;

    invoke-direct {v8, p0, v6, v5}, Lo/setCropWindowLimits;-><init>(Lo/CarrierFingerPrint;Lo/SuggestedAmount;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v13, v6

    :goto_3
    invoke-direct {p0}, Lo/CarrierFingerPrint;->onPostMessage()Z

    move-result v5

    if-nez v5, :cond_f

    if-nez v9, :cond_7

    goto/16 :goto_7

    :cond_7
    const-string v5, "template_id"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v6, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v6, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    iget-boolean v6, v6, Lo/activateCredProtect;->onNavigationEvent:Z

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    iget-object v7, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v7, v7, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v7, v7, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v7, v7, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v7, v7, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    iget-boolean v7, v7, Lo/activateCredProtect;->ICustomTabsCallback:Z

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    const-string v8, "2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v0, Lo/setKey;

    iget-object v5, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-boolean v5, v5, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    invoke-direct {v0, v6, v7, v5}, Lo/setKey;-><init>(ZZZ)V

    goto :goto_8

    :cond_a
    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v0, Lo/setVersionName;

    iget-object v5, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-boolean v5, v5, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    invoke-direct {v0, v6, v7, v5}, Lo/setVersionName;-><init>(ZZZ)V

    goto :goto_8

    :cond_b
    const-string v7, "3"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lo/SuggestedAmount;

    invoke-direct {v7}, Lo/SuggestedAmount;-><init>()V

    sget-object v8, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v10, Lo/getGAID;

    invoke-direct {v10, p0, v7, v5}, Lo/getGAID;-><init>(Lo/CarrierFingerPrint;Lo/SuggestedAmount;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v10, Lo/CarrierFingerPrint;->onPostMessage:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v10, v11, v5}, Lo/SuggestedAmount;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    new-instance v0, Lo/setVersionNumber;

    invoke-direct {v0, v6}, Lo/setVersionNumber;-><init>(Z)V

    goto :goto_8

    :cond_c
    const-string v5, "No handler for custom template: "

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-direct {p0, v1}, Lo/CarrierFingerPrint;->ICustomTabsCallback(I)V

    :cond_f
    :goto_7
    move-object v0, v2

    :goto_8
    invoke-direct {p0}, Lo/CarrierFingerPrint;->onPostMessage()Z

    move-result v5

    if-nez v5, :cond_14

    if-eqz v0, :cond_14

    if-nez v9, :cond_10

    goto :goto_c

    :cond_10
    const-string v5, "tracking_urls_and_actions"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "impression_tracking_urls"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_11

    move-object v7, v2

    goto :goto_a

    :cond_11
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_12

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    if-nez v7, :cond_13

    move-object v6, v2

    goto :goto_b

    :cond_13
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_b
    iput-object v6, p0, Lo/CarrierFingerPrint;->ICustomTabsService:Ljava/util/List;

    const-string v6, "active_view"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lo/CarrierFingerPrint;->getInterfaceDescriptor:Lorg/json/JSONObject;

    const-string v5, "debug_signals"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lo/CarrierFingerPrint;->newSession:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lo/CarrierFingerPrint;->warmup:Ljava/lang/String;

    invoke-interface {v0, p0, v9}, Lo/getModel;->onNavigationEvent(Lo/CarrierFingerPrint;Lorg/json/JSONObject;)Lo/refreshAuth;

    move-result-object v0

    new-instance v14, Lo/hideNavigationBar;

    iget-object v5, p0, Lo/CarrierFingerPrint;->onNavigationEvent:Landroid/content/Context;

    iget-object v6, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    iget-object v7, p0, Lo/CarrierFingerPrint;->asBinder:Lo/setIdentifier;

    iget-object v8, p0, Lo/CarrierFingerPrint;->onMessageChannelReady:Lo/GameCta;

    iget-object v4, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v4, v4, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v11, v4, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    move-object v4, v14

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Lo/hideNavigationBar;-><init>(Landroid/content/Context;Lo/openRewards;Lo/setIdentifier;Lo/GameCta;Lorg/json/JSONObject;Lo/refreshAuth;Lo/DataListJsonAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v14}, Lo/refreshAuth;->onMessageChannelReady(Lo/logout;)V

    goto :goto_d

    :cond_14
    :goto_c
    move-object v0, v2

    :goto_d
    instance-of v4, v0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    if-eqz v4, :cond_15

    move-object v4, v0

    check-cast v4, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    new-instance v5, Lo/getNetworkClass;

    invoke-direct {v5, p0, v4}, Lo/getNetworkClass;-><init>(Lo/CarrierFingerPrint;Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V

    iget-object v4, p0, Lo/CarrierFingerPrint;->asBinder:Lo/setIdentifier;

    const-string v6, "/nativeAdCustomClick"

    invoke-interface {v4, v6, v5}, Lo/setIdentifier;->ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_15
    invoke-direct {p0, v0, v3}, Lo/CarrierFingerPrint;->extraCallback(Lo/refreshAuth;Z)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    iget-object v3, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    invoke-static {v13}, Lo/CarrierFingerPrint;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/setPanGiven;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "Error occured while doing native ads initialization."

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v3, "Timeout when loading native ad."

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    :goto_e
    const-string v3, "Malformed native JSON response."

    :goto_f
    invoke-static {v3, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lo/CarrierFingerPrint;->onTransact:Z

    if-nez v0, :cond_16

    invoke-direct {p0, v1}, Lo/CarrierFingerPrint;->ICustomTabsCallback(I)V

    :cond_16
    invoke-direct {p0, v2, v1}, Lo/CarrierFingerPrint;->extraCallback(Lo/refreshAuth;Z)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    return-object v0
.end method

.method private static onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onPostMessage()Z
    .locals 2

    iget-object v0, p0, Lo/CarrierFingerPrint;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/CarrierFingerPrint;->onTransact:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lo/CarrierFingerPrint;->onMessageChannelReady()Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "require"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/CarrierFingerPrint;->onMessageChannelReady(Lorg/json/JSONObject;ZZ)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/setOutsideTouchEnabled;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "attribution"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    const-string v2, "text_size"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "text_color"

    invoke-static {v1, v0}, Lo/CarrierFingerPrint;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v0, "bg_color"

    invoke-static {v1, v0}, Lo/CarrierFingerPrint;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x3e8

    const-string v2, "animation_ms"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v0, 0xfa0

    const-string v2, "presentation_ms"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v0, v10, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    iget v0, v0, Lo/activateCredProtect;->extraCallback:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, v10, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    iget v0, v0, Lo/activateCredProtect;->onMessageChannelReady:I

    move v13, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v13, 0x1

    :goto_0
    const-string v0, "allow_pub_rendering"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v15, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "images"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/CarrierFingerPrint;->onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "image"

    invoke-virtual {v10, v1, v2, v15, v15}, Lo/CarrierFingerPrint;->onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v5, Lo/SuggestedAmount;

    invoke-direct {v5}, Lo/SuggestedAmount;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/PaymentModeListResponseJsonAdapter;

    new-instance v15, Lo/getImei;

    invoke-direct {v15, v2, v1, v5, v0}, Lo/getImei;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILo/SuggestedAmount;Ljava/util/List;)V

    move-object/from16 p1, v0

    sget-object v0, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-interface {v4, v15, v0}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p1

    goto :goto_2

    :cond_3
    new-instance v15, Lo/DeviceFingerPrint;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v8

    move-object v9, v5

    move v5, v7

    move v6, v12

    move v7, v11

    move v8, v13

    move-object v11, v9

    move v9, v14

    invoke-direct/range {v0 .. v9}, Lo/DeviceFingerPrint;-><init>(Lo/CarrierFingerPrint;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    sget-object v0, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-static {v11, v15, v0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Lo/getText3;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Lorg/json/JSONObject;Ljava/lang/String;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "vast_xml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Required field \'vast_xml\' is missing"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-static {p2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lo/CarrierFingerPrint;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p0, Lo/CarrierFingerPrint;->onMessageChannelReady:Lo/GameCta;

    iget-object v3, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v4, p0, Lo/CarrierFingerPrint;->onRelationshipValidationResult:Lo/setCanReverse;

    iget-object v5, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    new-instance p2, Lo/getGaid;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lo/getGaid;-><init>(Landroid/content/Context;Lo/GameCta;Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;Lo/setPanGiven;)V

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/access$302;

    invoke-direct {v2, p2, p1, v0}, Lo/access$302;-><init>(Lo/getGaid;Lorg/json/JSONObject;Lo/SuggestedAmount;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final onNavigationEvent(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lo/CarrierFingerPrint;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-direct {p0, v1, p3, p4}, Lo/CarrierFingerPrint;->onMessageChannelReady(Lorg/json/JSONObject;ZZ)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    :goto_2
    invoke-virtual {p0, p3, p3}, Lo/CarrierFingerPrint;->onNavigationEvent(IZ)V

    return-object p2
.end method

.method public final onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lo/PaymentModeListResponseJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lo/CarrierFingerPrint;->onMessageChannelReady(Lorg/json/JSONObject;ZZ)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onPostMessage(Lo/SuggestedAmount;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object v0, p0, Lo/CarrierFingerPrint;->onNavigationEvent:Landroid/content/Context;

    invoke-static {}, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    const-string v2, "native-omid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lo/CarrierFingerPrint;->onMessageChannelReady:Lo/GameCta;

    iget-object v6, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v6, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-object v7, p0, Lo/CarrierFingerPrint;->onRelationshipValidationResult:Lo/setCanReverse;

    const/4 v8, 0x0

    iget-object v9, p0, Lo/CarrierFingerPrint;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v9}, Lo/DeviceAttrResponse;->A_()Lo/StatementPeriod;

    move-result-object v9

    iget-object v10, p0, Lo/CarrierFingerPrint;->asInterface:Lo/GreetingCampaignCodeRequest;

    iget-object v10, v10, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-static/range {v0 .. v10}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    new-instance v2, Lo/setAspectRatioY;

    invoke-direct {v2, p1, v0}, Lo/setAspectRatioY;-><init>(Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-interface {v1, v2}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p2, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    const-string p1, ""

    invoke-static {p1, p2}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
