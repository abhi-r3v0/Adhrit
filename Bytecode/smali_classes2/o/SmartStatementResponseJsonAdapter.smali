.class public final Lo/SmartStatementResponseJsonAdapter;
.super Lo/ContactReverseSyncResponse;

# interfaces
.implements Lo/Badge;
.implements Lo/CardProgress;
.implements Lo/Cta_DataJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsService:I

.field private asBinder:I

.field private final asInterface:Lo/TabConfigResponse;

.field private final extraCallback:Lo/CardProgress;

.field private getInterfaceDescriptor:Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

.field private volatile newSession:Lo/getTxnCurrency;

.field private final onMessageChannelReady:Lo/Cta$Deeplink;

.field private final onNavigationEvent:Lo/GreetingCampaignCodeRequest;

.field public final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:J

.field private final onTransact:Ljava/lang/Object;

.field private warmup:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/TabConfigResponse;Lo/GreetingCampaignCodeRequest;Lo/Cta$Deeplink;Lo/CardProgress;J)V
    .locals 1

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    const/4 v0, 0x3

    iput v0, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    iput-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p4, p0, Lo/SmartStatementResponseJsonAdapter;->asInterface:Lo/TabConfigResponse;

    iput-object p5, p0, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iput-object p6, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    iput-object p7, p0, Lo/SmartStatementResponseJsonAdapter;->extraCallback:Lo/CardProgress;

    iput-wide p8, p0, Lo/SmartStatementResponseJsonAdapter;->onRelationshipValidationResult:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/SmartStatementResponseJsonAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback:Landroid/content/Context;

    return-object p0
.end method

.method private final ICustomTabsCallback(J)Z
    .locals 4

    iget-wide v0, p0, Lo/SmartStatementResponseJsonAdapter;->onRelationshipValidationResult:J

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->onPostMessage()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const/4 p2, 0x5

    goto :goto_0
.end method

.method private final extraCallback(Lo/setLastItem;Lo/Info;)V
    .locals 2

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onNavigationEvent()Lo/CardFooter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/CardFooter;->extraCallback(Lo/CardProgress;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->asInterface:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lo/Info;->onPostMessage(Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lo/Info;->extraCallback(Lo/setLastItem;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lo/SmartStatementResponseJsonAdapter;->onPostMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/SmartStatementResponseJsonAdapter;Lo/setLastItem;Lo/Info;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/SmartStatementResponseJsonAdapter;->extraCallback(Lo/setLastItem;Lo/Info;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/SmartStatementResponseJsonAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 1

    iget-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/SmartStatementResponseJsonAdapter;->onPostMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/SmartStatementResponseJsonAdapter;->extraCallback(Lo/setLastItem;Lo/Info;)V

    return-void
.end method

.method public final asInterface()Lo/TabConfigResponse;
    .locals 1

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->asInterface:Lo/TabConfigResponse;

    return-object v0
.end method

.method public final extraCallback()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->warmup:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentModeListResponseJsonAdapter;

    iput-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->warmup:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onNavigationEvent()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    .locals 2

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->getInterfaceDescriptor:Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/getTxnCurrency;)V
    .locals 0

    iput-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->newSession:Lo/getTxnCurrency;

    return-void
.end method

.method public final onPostMessage()V
    .locals 9

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onNavigationEvent()Lo/CardFooter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onNavigationEvent()Lo/CardFooter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/CardFooter;->extraCallback(Lo/CardProgress;)V

    invoke-virtual {v0, p0}, Lo/CardFooter;->ICustomTabsCallback(Lo/Badge;)V

    invoke-virtual {v0, p0}, Lo/CardFooter;->extraCallback(Lo/Cta_DataJsonAdapter;)V

    iget-object v2, p0, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    iget-object v2, v2, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v3, p0, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady:Lo/Cta$Deeplink;

    invoke-virtual {v3}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lo/Info;->onRelationshipValidationResult()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v5, Lo/PropertyDataInfoJsonAdapter;

    invoke-direct {v5, p0, v2, v3}, Lo/PropertyDataInfoJsonAdapter;-><init>(Lo/SmartStatementResponseJsonAdapter;Lo/setLastItem;Lo/Info;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v5, Lo/SmartStatementResponse;

    invoke-direct {v5, p0, v3, v2, v0}, Lo/SmartStatementResponse;-><init>(Lo/SmartStatementResponseJsonAdapter;Lo/Info;Lo/setLastItem;Lo/CardFooter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lo/SmartStatementResponseJsonAdapter;->onPostMessage(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->onPostMessage()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v5, Lo/HighlightsListViewHolder$layoutManager$1;

    invoke-direct {v5}, Lo/HighlightsListViewHolder$layoutManager$1;-><init>()V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v7

    invoke-interface {v7}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(J)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    iget v3, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    if-ne v6, v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :cond_2
    iget v3, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    :goto_3
    invoke-virtual {v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(I)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    iget-object v3, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->extraCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    iget-object v3, p0, Lo/SmartStatementResponseJsonAdapter;->asInterface:Lo/TabConfigResponse;

    iget-object v3, v3, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v2

    iput-object v2, p0, Lo/SmartStatementResponseJsonAdapter;->getInterfaceDescriptor:Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    :goto_4
    monitor-exit v4

    goto :goto_5

    :cond_3
    invoke-direct {p0, v2, v3}, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback(J)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lo/HighlightsListViewHolder$layoutManager$1;

    invoke-direct {v5}, Lo/HighlightsListViewHolder$layoutManager$1;-><init>()V

    iget v7, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    invoke-virtual {v5, v7}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(I)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v5

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v7

    invoke-interface {v7}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(J)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    iget-object v3, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->extraCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    iget-object v3, p0, Lo/SmartStatementResponseJsonAdapter;->asInterface:Lo/TabConfigResponse;

    iget-object v3, v3, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v2

    iput-object v2, p0, Lo/SmartStatementResponseJsonAdapter;->getInterfaceDescriptor:Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lo/CardFooter;->extraCallback(Lo/CardProgress;)V

    invoke-virtual {v0, v1}, Lo/CardFooter;->ICustomTabsCallback(Lo/Badge;)V

    iget v0, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->extraCallback:Lo/CardProgress;

    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/CardProgress;->extraCallback(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->extraCallback:Lo/CardProgress;

    iget-object v1, p0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    invoke-interface {v0, v1, v2}, Lo/CardProgress;->onPostMessage(Ljava/lang/String;I)V

    return-void

    :cond_5
    :try_start_2
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_6
    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/SmartStatementResponseJsonAdapter;->newSession:Lo/getTxnCurrency;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lo/getTxnCurrency;->onNavigationEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lo/SmartStatementResponseJsonAdapter;->asBinder:I

    iput p2, p0, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsService:I

    iget-object p2, p0, Lo/SmartStatementResponseJsonAdapter;->onTransact:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
