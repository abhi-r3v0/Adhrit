.class public final Lo/push;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/CardValidationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/CardValidationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:I

.field private final extraCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Lo/DataListJsonAdapter;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Lo/updateRangeInNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/push;->extraCallback:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lo/push;->asBinder:I

    iput-object p3, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/push;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/push;->onMessageChannelReady:Lo/DataListJsonAdapter;

    new-instance p1, Lo/Biller;

    invoke-direct {p1}, Lo/Biller;-><init>()V

    iput-object p1, p0, Lo/push;->ICustomTabsCallback:Lo/CardValidationResponse;

    new-instance p1, Lo/Biller;

    invoke-direct {p1}, Lo/Biller;-><init>()V

    iput-object p1, p0, Lo/push;->ICustomTabsCallback$Stub:Lo/CardValidationResponse;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/CardValidationResponse;Lo/CardValidationResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/DataListJsonAdapter;",
            "Ljava/lang/String;",
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;",
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lo/push;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;)V

    iput-object p4, p0, Lo/push;->ICustomTabsCallback:Lo/CardValidationResponse;

    iput-object p5, p0, Lo/push;->ICustomTabsCallback$Stub:Lo/CardValidationResponse;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/push;)I
    .locals 0

    iget p0, p0, Lo/push;->asBinder:I

    return p0
.end method

.method static synthetic ICustomTabsCallback(Lo/push;Lo/updateRangeInNode;)Lo/updateRangeInNode;
    .locals 0

    iput-object p1, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/push;)Lo/CardValidationResponse;
    .locals 0

    iget-object p0, p0, Lo/push;->ICustomTabsCallback:Lo/CardValidationResponse;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/push;I)I
    .locals 0

    iput p1, p0, Lo/push;->asBinder:I

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/push;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/push;->extraCallback:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/push;)Lo/updateRangeInNode;
    .locals 0

    iget-object p0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/GameCta;)Lo/applyTo;
    .locals 4

    iget-object p1, p0, Lo/push;->extraCallback:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/getSelected;->onPostMessage()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/push;->asBinder:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/updateRangeInNode;->extraCallback()Lo/applyTo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_1
    iget v0, p0, Lo/push;->asBinder:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iput v2, p0, Lo/push;->asBinder:I

    invoke-virtual {p0, v1}, Lo/push;->onMessageChannelReady(Lo/GameCta;)Lo/updateRangeInNode;

    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/updateRangeInNode;->extraCallback()Lo/applyTo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    iget v0, p0, Lo/push;->asBinder:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/updateRangeInNode;->extraCallback()Lo/applyTo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/updateRangeInNode;->extraCallback()Lo/applyTo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_0
    iput v2, p0, Lo/push;->asBinder:I

    invoke-virtual {p0, v1}, Lo/push;->onMessageChannelReady(Lo/GameCta;)Lo/updateRangeInNode;

    move-result-object v0

    iput-object v0, p0, Lo/push;->onRelationshipValidationResult:Lo/updateRangeInNode;

    invoke-virtual {v0}, Lo/updateRangeInNode;->extraCallback()Lo/applyTo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic extraCallback(Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 3

    iget-object v0, p0, Lo/push;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lo/getSelected;->onPostMessage()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lo/getSelected;->onPostMessage()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/getSelected;->ICustomTabsCallback()V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;->onNavigationEvent(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final onMessageChannelReady(Lo/GameCta;)Lo/updateRangeInNode;
    .locals 3

    new-instance v0, Lo/updateRangeInNode;

    iget-object v1, p0, Lo/push;->ICustomTabsCallback$Stub:Lo/CardValidationResponse;

    invoke-direct {v0, v1}, Lo/updateRangeInNode;-><init>(Lo/CardValidationResponse;)V

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/checkValid;

    invoke-direct {v2, p0, p1, v0}, Lo/checkValid;-><init>(Lo/push;Lo/GameCta;Lo/updateRangeInNode;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lo/RemoteControlDataResponseJsonAdapter;

    invoke-direct {p1, p0, v0}, Lo/RemoteControlDataResponseJsonAdapter;-><init>(Lo/push;Lo/updateRangeInNode;)V

    new-instance v1, Lo/fire;

    invoke-direct {v1, p0, v0}, Lo/fire;-><init>(Lo/push;Lo/updateRangeInNode;)V

    invoke-virtual {v0, p1, v1}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    return-object v0
.end method

.method final synthetic onMessageChannelReady(Lo/GameCta;Lo/updateRangeInNode;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lo/push;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/push;->onMessageChannelReady:Lo/DataListJsonAdapter;

    sget-object v2, Lo/WinningTypes;->MediaBrowserCompat$ItemReceiver:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lo/Badges;

    invoke-direct {v2, v0, v1}, Lo/Badges;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lo/SeenNotification;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lo/SeenNotification;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/GameCta;Lo/StatementPeriod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p2, v2}, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;-><init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    invoke-interface {v2, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Lo/OnboardCardsData;)V

    new-instance v0, Lo/utf8Bytes;

    invoke-direct {v0, p0, p2, v2}, Lo/utf8Bytes;-><init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    const-string v1, "/jsLoaded"

    invoke-interface {v2, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v0, Lo/ControlAggregatorResponse;

    invoke-direct {v0}, Lo/ControlAggregatorResponse;-><init>()V

    new-instance v1, Lo/toErrorString;

    invoke-direct {v1, p0, p1, v2, v0}, Lo/toErrorString;-><init>(Lo/push;Lo/GameCta;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/ControlAggregatorResponse;)V

    invoke-virtual {v0, v1}, Lo/ControlAggregatorResponse;->onPostMessage(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    invoke-interface {v2, p1, v1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object p1, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v2, p1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v2, p1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lo/push;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v2, p1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p2, v2}, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;-><init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    sget p2, Lo/getPath;->onMessageChannelReady:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/getSelected;->ICustomTabsCallback()V

    return-void
.end method
