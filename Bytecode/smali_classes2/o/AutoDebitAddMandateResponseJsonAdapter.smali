.class public final Lo/AutoDebitAddMandateResponseJsonAdapter;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/push;

.field private static ICustomTabsCallback$Stub:Lo/getTxnDate;

.field private static asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:J

.field private static onMessageChannelReady:Z

.field private static onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

.field private static final onPostMessage:Ljava/lang/Object;


# instance fields
.field private final asBinder:Lo/setBankNameTopMargin;

.field private getInterfaceDescriptor:Lo/applyTo;

.field private final newSession:Landroid/content/Context;

.field private final onRelationshipValidationResult:Lo/Colors;

.field private final onTransact:Ljava/lang/Object;

.field private warmup:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->extraCallback:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onMessageChannelReady:Z

    const/4 v0, 0x0

    sput-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback:Lo/push;

    sput-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    sput-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    sput-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/setBankNameTopMargin;Lo/Colors;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ContactReverseSyncResponse;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    iput-object p3, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onRelationshipValidationResult:Lo/Colors;

    iput-object p1, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    iput-object p2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asBinder:Lo/setBankNameTopMargin;

    iput-object p4, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->warmup:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    sget-object p3, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-boolean p4, Lo/AutoDebitAddMandateResponseJsonAdapter;->onMessageChannelReady:Z

    if-nez p4, :cond_0

    new-instance p4, Lo/getTxnDate;

    invoke-direct {p4}, Lo/getTxnDate;-><init>()V

    sput-object p4, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    invoke-direct {p4, p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    sput-object p4, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    new-instance p1, Lo/AutoDebitBankInfoResponse;

    invoke-direct {p1}, Lo/AutoDebitBankInfoResponse;-><init>()V

    sput-object p1, Lo/AutoDebitAddMandateResponseJsonAdapter;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance p1, Lo/push;

    iget-object p2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asBinder:Lo/setBankNameTopMargin;

    iget-object v3, p2, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    sget-object p2, Lo/WinningTypes;->onNavigationEvent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lo/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;

    invoke-direct {v5}, Lo/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;-><init>()V

    new-instance v6, Lo/AutoDebitBankInfoResponseJsonAdapter;

    invoke-direct {v6}, Lo/AutoDebitBankInfoResponseJsonAdapter;-><init>()V

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/push;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/CardValidationResponse;Lo/CardValidationResponse;)V

    sput-object p1, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback:Lo/push;

    sput-boolean v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onMessageChannelReady:Z

    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected static ICustomTabsCallback(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 2

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    const-string v1, "/loadAd"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    const-string v1, "/fetchHttpRequest"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/invalidRequest"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method static synthetic extraCallback()Lo/getTxnDate;
    .locals 1

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    return-object v0
.end method

.method private final extraCallback(Lo/setCardBackgroundView;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lo/getParcel;->postMessage()Lo/AutoDebitRequestBodyJsonAdapter;

    move-result-object v2

    iget-object v3, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lo/AutoDebitRequestBodyJsonAdapter;->onMessageChannelReady(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoDebitRegistrationStatusResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    new-instance v4, Lo/AutoDebitInstrumentSetupRequestBody;

    invoke-direct {v4}, Lo/AutoDebitInstrumentSetupRequestBody;-><init>()V

    iput-object p1, v4, Lo/AutoDebitInstrumentSetupRequestBody;->onTransact:Lo/setCardBackgroundView;

    iput-object v2, v4, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsService:Lo/AutoDebitRegistrationStatusResponse;

    invoke-static {v3, v4}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Landroid/content/Context;Lo/AutoDebitInstrumentSetupRequestBody;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-static {v2}, Lo/getTotalAmountDue;->getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    :goto_1
    const-string v3, "Cannot get advertising id info"

    invoke-static {v3, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "request_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "request_param"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "adid"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lo/getTotalAmountDue$onNavigationEvent;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "lat"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    return-object p1

    :catch_5
    return-object v1
.end method

.method protected static extraCallback(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 2

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    const-string v1, "/loadAd"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    const-string v1, "/fetchHttpRequest"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/invalidRequest"

    invoke-interface {p0, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/Colors;
    .locals 0

    iget-object p0, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onRelationshipValidationResult:Lo/Colors;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Lo/push;
    .locals 1

    sget-object v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback:Lo/push;

    return-object v0
.end method

.method private final onNavigationEvent(Lo/setCardBackgroundView;)Lo/setOnCtaClick;
    .locals 8

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {}, Lo/AuthSupportedResponse$MetaData;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->extraCallback(Lo/setCardBackgroundView;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lo/setOnCtaClick;

    invoke-direct {p1, v2}, Lo/setOnCtaClick;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->onPostMessage()J

    move-result-wide v3

    sget-object v5, Lo/AutoDebitAddMandateResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getTxnDate;

    invoke-virtual {v5, v0}, Lo/getTxnDate;->onNavigationEvent(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    sget-object v6, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v7, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {v7, p0, v1, v0}, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;-><init>(Lo/AutoDebitAddMandateResponseJsonAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lo/AutoDebitAddMandateResponseJsonAdapter;->extraCallback:J

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v6

    invoke-interface {v6}, Lo/component15;->onPostMessage()J

    move-result-wide v6

    sub-long/2addr v6, v3

    sub-long/2addr v0, v6

    const/4 v3, -0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    new-instance p1, Lo/setOnCtaClick;

    invoke-direct {p1, v3}, Lo/setOnCtaClick;-><init>(I)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Lo/setCardBackgroundView;Ljava/lang/String;)Lo/setOnCtaClick;

    move-result-object p1

    iget v0, p1, Lo/setOnCtaClick;->onNavigationEvent:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lo/setOnCtaClick;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lo/setOnCtaClick;-><init>(I)V

    :cond_2
    return-object p1

    :catch_0
    new-instance p1, Lo/setOnCtaClick;

    invoke-direct {p1, v2}, Lo/setOnCtaClick;-><init>(I)V

    return-object p1

    :catch_1
    new-instance p1, Lo/setOnCtaClick;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lo/setOnCtaClick;-><init>(I)V

    return-object p1

    :catch_2
    new-instance p1, Lo/setOnCtaClick;

    invoke-direct {p1, v3}, Lo/setOnCtaClick;-><init>(I)V

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;
    .locals 0

    iget-object p0, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->getInterfaceDescriptor:Lo/applyTo;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/applyTo;)Lo/applyTo;
    .locals 0

    iput-object p1, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->getInterfaceDescriptor:Lo/applyTo;

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/AutoDebitConfigResponse;

    invoke-direct {v2, p0}, Lo/AutoDebitConfigResponse;-><init>(Lo/AutoDebitAddMandateResponseJsonAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    .locals 14

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    iget-object v1, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lo/setCardBackgroundView;

    iget-object v3, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->asBinder:Lo/setBankNameTopMargin;

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->asBinder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->onRelationshipValidationResult(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, -0x1

    move-object v2, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lo/setCardBackgroundView;-><init>(Lo/setBankNameTopMargin;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->newSession:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lo/Template;->asInterface(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent(Lo/setCardBackgroundView;)Lo/setOnCtaClick;

    move-result-object v3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    new-instance v0, Lo/GreetingCampaignCodeRequest;

    iget v6, v3, Lo/setOnCtaClick;->onNavigationEvent:I

    iget-wide v10, v3, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    iget-object v12, p0, Lo/AutoDebitAddMandateResponseJsonAdapter;->warmup:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    move-object v2, v9

    move-wide v9, v10

    move-object v11, v13

    invoke-direct/range {v1 .. v12}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    sget-object v1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/AddMandateRequestBodyJsonAdapter;

    invoke-direct {v2, p0, v0}, Lo/AddMandateRequestBodyJsonAdapter;-><init>(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/GreetingCampaignCodeRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
