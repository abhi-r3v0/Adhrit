.class public final Lo/setImageUriAsync;
.super Lo/setCropRect;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected ICustomTabsCallback$Stub:Lo/PinAccountRequest;

.field private final ICustomTabsService:Lo/setCanReverse;

.field private asBinder:Lo/LockConfigDataJsonAdapter;

.field private asInterface:Lo/SubMenuItem;

.field private final getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private onRelationshipValidationResult:Lo/BankAccountData;

.field private warmup:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lo/setCropRect;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;)V

    iput-object p3, p0, Lo/setImageUriAsync;->onRelationshipValidationResult:Lo/BankAccountData;

    iget-object p1, p2, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    iput-object p1, p0, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iput-object p5, p0, Lo/setImageUriAsync;->ICustomTabsService:Lo/setCanReverse;

    iput-object p6, p0, Lo/setImageUriAsync;->getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setImageUriAsync;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 0

    iget-object p0, p0, Lo/setImageUriAsync;->getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/setImageUriAsync;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/setImageUriAsync;->warmup:Z

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/setImageUriAsync;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lo/setCropRect;->ICustomTabsCallback()V

    iget-object v1, p0, Lo/setImageUriAsync;->asInterface:Lo/SubMenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setImageUriAsync;->asInterface:Lo/SubMenuItem;

    invoke-interface {v1}, Lo/SubMenuItem;->extraCallback()V

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

.method protected final onMessageChannelReady(J)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabk;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lo/setImageUriAsync;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iget v0, v0, Lo/LockConfigDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Lo/PinAccountRequestJsonAdapter;

    iget-object v5, v1, Lo/setImageUriAsync;->extraCallback:Landroid/content/Context;

    iget-object v3, v1, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v3, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v7, v1, Lo/setImageUriAsync;->onRelationshipValidationResult:Lo/BankAccountData;

    iget-object v8, v1, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iget-object v3, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v9, v3, Lo/setOnCtaClick;->postMessage:Z

    iget-object v3, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v10, v3, Lo/setOnCtaClick;->cancelAll:Z

    iget-object v3, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v11, v3, Lo/setOnCtaClick;->read:Ljava/lang/String;

    sget-object v3, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x2

    iget-object v3, v1, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-boolean v3, v3, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move-object v4, v0

    move-wide/from16 v12, p1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lo/PinAccountRequestJsonAdapter;-><init>(Landroid/content/Context;Lo/setCardBackgroundView;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;ZZLjava/lang/String;JJIZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/BankAccountDataJsonAdapter;

    iget-object v3, v1, Lo/setImageUriAsync;->extraCallback:Landroid/content/Context;

    iget-object v4, v1, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v4, v4, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v5, v1, Lo/setImageUriAsync;->onRelationshipValidationResult:Lo/BankAccountData;

    iget-object v6, v1, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iget-object v7, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v7, v7, Lo/setOnCtaClick;->postMessage:Z

    iget-object v8, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v8, v8, Lo/setOnCtaClick;->cancelAll:Z

    iget-object v9, v1, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v9, v9, Lo/setOnCtaClick;->read:Ljava/lang/String;

    sget-object v10, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v11

    invoke-virtual {v11, v10}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v10, v1, Lo/setImageUriAsync;->ICustomTabsService:Lo/setCanReverse;

    iget-object v11, v1, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-boolean v11, v11, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v25, p1

    move-object/from16 v29, v10

    move/from16 v30, v11

    invoke-direct/range {v17 .. v30}, Lo/BankAccountDataJsonAdapter;-><init>(Landroid/content/Context;Lo/setCardBackgroundView;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;ZZLjava/lang/String;JJLo/setCanReverse;Z)V

    :goto_0
    iput-object v0, v1, Lo/setImageUriAsync;->asInterface:Lo/SubMenuItem;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iget-object v2, v2, Lo/LockConfigDataJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v1, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "_skipMediation"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/TabConfigResponse;

    iget-object v5, v5, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lo/setImageUriAsync;->asInterface:Lo/SubMenuItem;

    invoke-interface {v2, v0}, Lo/SubMenuItem;->onMessageChannelReady(Ljava/util/List;)Lo/PinAccountRequest;

    move-result-object v0

    iput-object v0, v1, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    iget v0, v0, Lo/PinAccountRequest;->extraCallback:I

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabk;

    iget-object v2, v1, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    iget v2, v2, Lo/PinAccountRequest;->extraCallback:I

    const/16 v3, 0x28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected mediation result: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabk;

    const/4 v2, 0x3

    const-string v3, "No fill from any mediation ad networks."

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    iget-object v0, v1, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    iget-object v0, v0, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    iget-object v0, v0, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    iget-object v0, v0, Lo/TabConfigResponse;->newSession:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/setCropWindowChangeListener;

    invoke-direct {v3, v1, v0}, Lo/setCropWindowChangeListener;-><init>(Lo/setImageUriAsync;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, v1, Lo/setImageUriAsync;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-boolean v0, v1, Lo/setImageUriAsync;->warmup:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lo/setImageUriAsync;->getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v2

    return-void

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabk;

    const-string v3, "Assets not loaded, web view is destroyed"

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabk;

    const-string v3, "View could not be prepared"

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Interrupted while waiting for latch : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected final onNavigationEvent(I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 53

    move-object/from16 v0, p0

    iget-object v1, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    new-instance v46, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v3, v1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v4, v0, Lo/setImageUriAsync;->getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v5, v2, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v7, v2, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v8, v2, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget v9, v2, Lo/setOnCtaClick;->warmup:I

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-wide v10, v2, Lo/setOnCtaClick;->asBinder:J

    iget-object v12, v1, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v13, v1, Lo/setOnCtaClick;->asInterface:Z

    iget-object v1, v0, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    move-object v14, v1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lo/PinAccountRequest;->onMessageChannelReady:Lo/Info;

    move-object v15, v1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v1, v0, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lo/PinAccountRequest;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object/from16 v16, v1

    iget-object v1, v0, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    iget-object v6, v0, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lo/PinAccountRequest;->ICustomTabsCallback:Lo/TabConfigResponseJsonAdapter;

    move-object/from16 v18, v6

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    :goto_3
    iget-object v6, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    move-object/from16 v17, v14

    move-object/from16 v19, v15

    iget-wide v14, v6, Lo/setOnCtaClick;->onTransact:J

    iget-object v6, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v6, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    move-wide/from16 v21, v14

    iget-wide v14, v2, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    iget-object v2, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    move-wide/from16 v23, v14

    iget-wide v14, v2, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    move-wide/from16 v25, v14

    iget-wide v14, v2, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    const/16 v30, 0x0

    move-object/from16 v28, v2

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v29, v2

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v31, v2

    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    move-object/from16 v32, v2

    iget-object v2, v0, Lo/setImageUriAsync;->asBinder:Lo/LockConfigDataJsonAdapter;

    move-object/from16 v33, v6

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lo/LockConfigDataJsonAdapter;->getInterfaceDescriptor:Z

    move/from16 v34, v2

    goto :goto_4

    :cond_4
    const/16 v34, 0x0

    :goto_4
    iget-object v2, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    iget-object v6, v0, Lo/setImageUriAsync;->asInterface:Lo/SubMenuItem;

    if-eqz v6, :cond_f

    invoke-interface {v6}, Lo/SubMenuItem;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v6

    const-string v20, ""

    if-nez v6, :cond_5

    move-object/from16 v50, v1

    move-object/from16 v47, v2

    move-object/from16 v52, v12

    move/from16 v51, v13

    move-wide/from16 v48, v14

    move-object/from16 v36, v20

    goto/16 :goto_a

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v36, v20

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    move-object/from16 v47, v2

    if-eqz v20, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Lo/PinAccountRequest;

    if-eqz v2, :cond_d

    move-object/from16 v20, v6

    iget-object v6, v2, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    if-eqz v6, :cond_c

    iget-object v6, v2, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    iget-object v6, v6, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v48, v14

    iget-object v14, v2, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    iget-object v14, v14, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    iget v15, v2, Lo/PinAccountRequest;->extraCallback:I

    move-object/from16 v50, v1

    const/4 v1, -0x1

    if-eq v15, v1, :cond_a

    if-eqz v15, :cond_9

    const/4 v1, 0x1

    if-eq v15, v1, :cond_8

    const/4 v1, 0x3

    if-eq v15, v1, :cond_7

    const/4 v1, 0x4

    if-eq v15, v1, :cond_6

    const/4 v1, 0x5

    if-eq v15, v1, :cond_b

    const/4 v1, 0x6

    goto :goto_6

    :cond_6
    move-object v15, v12

    move/from16 v51, v13

    const/4 v1, 0x3

    goto :goto_7

    :cond_7
    const/4 v1, 0x2

    goto :goto_6

    :cond_8
    move-object v15, v12

    move/from16 v51, v13

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    move-object v15, v12

    move/from16 v51, v13

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/4 v1, 0x4

    :cond_b
    :goto_6
    move-object v15, v12

    move/from16 v51, v13

    :goto_7
    iget-wide v12, v2, Lo/PinAccountRequest;->ICustomTabsCallback$Stub:J

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    move-object/from16 v52, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x1

    add-int/2addr v2, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v2, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto :goto_9

    :cond_c
    move-object/from16 v50, v1

    goto :goto_8

    :cond_d
    move-object/from16 v50, v1

    move-object/from16 v20, v6

    :goto_8
    move-object/from16 v52, v12

    move/from16 v51, v13

    move-wide/from16 v48, v14

    :goto_9
    move-object/from16 v6, v20

    move-object/from16 v2, v47

    move-wide/from16 v14, v48

    move-object/from16 v1, v50

    move/from16 v13, v51

    move-object/from16 v12, v52

    goto/16 :goto_5

    :cond_e
    move-object/from16 v50, v1

    move-object/from16 v52, v12

    move/from16 v51, v13

    move-wide/from16 v48, v14

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v6, v36

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v36, v1

    goto :goto_a

    :cond_f
    move-object/from16 v50, v1

    move-object/from16 v47, v2

    move-object/from16 v52, v12

    move/from16 v51, v13

    move-wide/from16 v48, v14

    const/16 v36, 0x0

    :goto_a
    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v37, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v39, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v40, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-boolean v1, v1, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v41, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v42, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v43, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v44, v1

    iget-object v1, v0, Lo/setImageUriAsync;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v45, v1

    move-object/from16 v1, v27

    move-object/from16 v35, v32

    move-object/from16 v32, v31

    move-object/from16 v31, v29

    move-object/from16 v29, v28

    move-object/from16 v2, v46

    move-object/from16 v27, v33

    move/from16 v6, p1

    move-object/from16 v12, v52

    move/from16 v13, v51

    move-wide/from16 v20, v21

    move-wide/from16 v22, v23

    move-wide/from16 v24, v25

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    move-object/from16 v17, v50

    move-wide/from16 v19, v20

    move-object/from16 v21, v27

    move-wide/from16 v26, v48

    move-object/from16 v28, v1

    move-object/from16 v33, v35

    move-object/from16 v35, v47

    invoke-direct/range {v2 .. v45}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v46
.end method
