.class public final Lo/getGaid;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Landroid/util/DisplayMetrics;

.field private asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private asInterface:Lo/getColorSectionPos;

.field private final extraCallback:Lo/GreetingCampaignCodeRequest;

.field private newSession:I

.field private final onMessageChannelReady:Lo/setCanReverse;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Lo/GameCta;

.field private onRelationshipValidationResult:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final onTransact:Lo/setPanGiven;

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/GameCta;Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;Lo/setPanGiven;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getGaid;->onNavigationEvent:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lo/getGaid;->warmup:I

    iput v0, p0, Lo/getGaid;->newSession:I

    iput-object p1, p0, Lo/getGaid;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/getGaid;->onPostMessage:Lo/GameCta;

    iput-object p3, p0, Lo/getGaid;->extraCallback:Lo/GreetingCampaignCodeRequest;

    iput-object p4, p0, Lo/getGaid;->onMessageChannelReady:Lo/setCanReverse;

    iput-object p5, p0, Lo/getGaid;->onTransact:Lo/setPanGiven;

    new-instance p2, Lo/getColorSectionPos;

    const-wide/16 p3, 0xc8

    invoke-direct {p2, p3, p4}, Lo/getColorSectionPos;-><init>(J)V

    iput-object p2, p0, Lo/getGaid;->asInterface:Lo/getColorSectionPos;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lo/getGaid;->ICustomTabsCallback$Stub:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getGaid;)Lo/setPanGiven;
    .locals 0

    iget-object p0, p0, Lo/getGaid;->onTransact:Lo/setPanGiven;

    return-object p0
.end method

.method private final onPostMessage(Ljava/lang/ref/WeakReference;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lo/getGaid;->asInterface:Lo/getColorSectionPos;

    invoke-virtual {v0}, Lo/getColorSectionPos;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/getGaid;->ICustomTabsCallback$Stub:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v0, v3}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v3, p0, Lo/getGaid;->ICustomTabsCallback$Stub:Landroid/util/DisplayMetrics;

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v3, v1}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iget-object v3, p0, Lo/getGaid;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v5, p0, Lo/getGaid;->warmup:I

    if-ne v5, v0, :cond_3

    iget v5, p0, Lo/getGaid;->newSession:I

    if-eq v5, v1, :cond_5

    :cond_3
    iput v0, p0, Lo/getGaid;->warmup:I

    iput v1, p0, Lo/getGaid;->newSession:I

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object p1

    iget v0, p0, Lo/getGaid;->warmup:I

    iget v1, p0, Lo/getGaid;->newSession:I

    if-nez p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-interface {p1, v0, v1, v2}, Lo/SizeFilter;->onPostMessage(IIZ)V

    :cond_5
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic onPostMessage(Lo/getGaid;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getGaid;->onPostMessage(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method


# virtual methods
.method final synthetic extraCallback(Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V
    .locals 0

    iget-object p3, p0, Lo/getGaid;->onTransact:Lo/setPanGiven;

    invoke-virtual {p3}, Lo/setPanGiven;->getServiceComponent()V

    invoke-virtual {p1, p2}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Lorg/json/JSONObject;Lo/SuggestedAmount;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object v0, p0, Lo/getGaid;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {}, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    const-string v2, "native-video"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lo/getGaid;->onPostMessage:Lo/GameCta;

    iget-object v6, p0, Lo/getGaid;->extraCallback:Lo/GreetingCampaignCodeRequest;

    iget-object v6, v6, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-object v7, p0, Lo/getGaid;->onMessageChannelReady:Lo/setCanReverse;

    const/4 v8, 0x0

    iget-object v9, p0, Lo/getGaid;->onTransact:Lo/setPanGiven;

    invoke-virtual {v9}, Lo/DeviceAttrResponse;->A_()Lo/StatementPeriod;

    move-result-object v9

    iget-object v10, p0, Lo/getGaid;->extraCallback:Lo/GreetingCampaignCodeRequest;

    iget-object v10, v10, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-static/range {v0 .. v10}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-static {}, Lo/SizeFilterJsonAdapter;->onNavigationEvent()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    iget-object v1, p0, Lo/getGaid;->onTransact:Lo/setPanGiven;

    invoke-virtual {v1, v0}, Lo/setPanGiven;->onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v2

    iget-object v3, p0, Lo/getGaid;->onRelationshipValidationResult:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v3, :cond_0

    new-instance v3, Lo/AppFingerprint;

    invoke-direct {v3, p0, v1}, Lo/AppFingerprint;-><init>(Lo/getGaid;Ljava/lang/ref/WeakReference;)V

    iput-object v3, p0, Lo/getGaid;->onRelationshipValidationResult:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v3, p0, Lo/getGaid;->onRelationshipValidationResult:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v4, p0, Lo/getGaid;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v4, :cond_1

    new-instance v4, Lo/getIdentifier;

    invoke-direct {v4, p0, v1}, Lo/getIdentifier;-><init>(Lo/getGaid;Ljava/lang/ref/WeakReference;)V

    iput-object v4, p0, Lo/getGaid;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    iget-object v1, p0, Lo/getGaid;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v2, v3, v1}, Lo/SizeFilter;->extraCallback(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const-string v1, "/video"

    sget-object v2, Lo/StatementResponse$Waiver;->ICustomTabsService:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/precache"

    new-instance v2, Lo/getCandidateInstrument;

    invoke-direct {v2}, Lo/getCandidateInstrument;-><init>()V

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lo/StatementResponse$Waiver;->updateVisuals:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/instrument"

    sget-object v2, Lo/StatementResponse$Waiver;->warmup:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/log"

    sget-object v2, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/videoClicked"

    sget-object v2, Lo/StatementResponse$Waiver;->onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/trackActiveViewUnit"

    new-instance v2, Lo/ApplicationAttributes;

    invoke-direct {v2, p0}, Lo/ApplicationAttributes;-><init>(Lo/getGaid;)V

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "/untrackActiveViewUnit"

    new-instance v2, Lo/setName;

    invoke-direct {v2, p0}, Lo/setName;-><init>(Lo/getGaid;)V

    invoke-interface {v0, v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    new-instance v2, Lo/LocationFingerPrint;

    invoke-direct {v2, v0, p1}, Lo/LocationFingerPrint;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lo/SizeFilter;->onMessageChannelReady(Lo/FileUploadResponseJsonAdapter;)V

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object p1

    new-instance v1, Lo/access$102;

    invoke-direct {v1, p0, p2, v0}, Lo/access$102;-><init>(Lo/getGaid;Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-interface {p1, v1}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    sget-object p1, Lo/WinningTypes;->setMediaId:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception occurred while getting video view"

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
