.class public abstract Lo/setShowProgressBar;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setSwipedDirection;
.implements Lo/FileUploadConfigJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setSwipedDirection<",
        "Ljava/lang/Void;",
        ">;",
        "Lo/FileUploadConfigJsonAdapter;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

.field private final asBinder:Ljava/lang/Object;

.field protected final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

.field protected final onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field protected onPostMessage:Lo/setOnCtaClick;

.field private onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private onTransact:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setShowProgressBar;->asBinder:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/setShowProgressBar;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lo/setShowProgressBar;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object p1, p2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iput-object p1, p0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iput-object p3, p0, Lo/setShowProgressBar;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p4, p0, Lo/setShowProgressBar;->ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

    return-void
.end method

.method static synthetic extraCallback(Lo/setShowProgressBar;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lo/setShowProgressBar;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 2

    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setShowProgressBar;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, -0x2

    :cond_1
    invoke-virtual {p0, v1}, Lo/setShowProgressBar;->onMessageChannelReady(I)V

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v0, p0, Lo/setShowProgressBar;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/setShowProgressBar;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/setShowProgressBar;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->stopLoading()V

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/setShowProgressBar;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/setShowProgressBar;->onMessageChannelReady(I)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v1, p0, Lo/setShowProgressBar;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onMessageChannelReady(I)V
    .locals 47

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/4 v1, -0x2

    if-eq v5, v1, :cond_0

    new-instance v1, Lo/setOnCtaClick;

    iget-object v2, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v2, v2, Lo/setOnCtaClick;->asBinder:J

    invoke-direct {v1, v5, v2, v3}, Lo/setOnCtaClick;-><init>(IJ)V

    iput-object v1, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    :cond_0
    iget-object v1, v0, Lo/setShowProgressBar;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->postMessage()V

    iget-object v15, v0, Lo/setShowProgressBar;->ICustomTabsCallback:Lo/setOnCropWindowChangedListener;

    iget-object v1, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v11, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    new-instance v14, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-object v1, v14

    iget-object v2, v11, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v3, v0, Lo/setShowProgressBar;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v4, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget-object v6, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v6, v6, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v7, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v7, v7, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v8, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget v8, v8, Lo/setOnCtaClick;->warmup:I

    iget-object v9, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v9, v9, Lo/setOnCtaClick;->asBinder:J

    iget-object v11, v11, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v12, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v12, v12, Lo/setOnCtaClick;->asInterface:Z

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v45, v14

    move-object/from16 v14, v16

    move-object/from16 v46, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v14, v13, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v18, v14

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v20, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v13, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v21, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-wide v13, v13, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v23, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v13, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-wide/from16 v25, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v27, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    move-object/from16 v28, v13

    const/16 v29, 0x0

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v30, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v31, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    move-object/from16 v32, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v13, v13, Lo/setOnCtaClick;->notify:Z

    move/from16 v33, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v34, v13

    const/16 v35, 0x0

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v36, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v37, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v38, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v13, v13, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v39, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-boolean v13, v13, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v40, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v13, v13, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v41, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v42, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v13, v13, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v43, v13

    iget-object v13, v0, Lo/setShowProgressBar;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v13, v13, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v13, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v44, v13

    move/from16 v5, p1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v44}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    move-object/from16 v2, v45

    move-object/from16 v1, v46

    invoke-interface {v1, v2}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method protected abstract onNavigationEvent()V
.end method

.method public final synthetic s_()Ljava/lang/Object;
    .locals 4

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance v0, Lo/setSnapRadius;

    invoke-direct {v0, p0}, Lo/setSnapRadius;-><init>(Lo/setShowProgressBar;)V

    iput-object v0, p0, Lo/setShowProgressBar;->onTransact:Ljava/lang/Runnable;

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v1, p0, Lo/setShowProgressBar;->onTransact:Ljava/lang/Runnable;

    sget-object v2, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lo/setShowProgressBar;->onNavigationEvent()V

    const/4 v0, 0x0

    return-object v0
.end method
