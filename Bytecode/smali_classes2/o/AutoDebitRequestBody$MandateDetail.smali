.class final Lo/AutoDebitRequestBody$MandateDetail;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/AutoDebitRegistrationStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Landroid/content/Context;

.field private final synthetic onPostMessage:Lo/AutoDebitRequestBodyJsonAdapter;


# direct methods
.method constructor <init>(Lo/AutoDebitRequestBodyJsonAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitRequestBody$MandateDetail;->onPostMessage:Lo/AutoDebitRequestBodyJsonAdapter;

    iput-object p2, p0, Lo/AutoDebitRequestBody$MandateDetail;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/AutoDebitRequestBody$MandateDetail;->onPostMessage:Lo/AutoDebitRequestBodyJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitRequestBodyJsonAdapter;->ICustomTabsCallback(Lo/AutoDebitRequestBodyJsonAdapter;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lo/AutoDebitRequestBody$MandateDetail;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoDebitRequestBody;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lo/AutoDebitRequestBody;->onNavigationEvent:J

    sget-object v3, Lo/WinningTypes;->MediaBrowserCompat$SearchCallback:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lo/WinningTypes;->getDescription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo/AutoDebitRegisterResponseJsonAdapter;

    iget-object v2, p0, Lo/AutoDebitRequestBody$MandateDetail;->onNavigationEvent:Landroid/content/Context;

    iget-object v0, v0, Lo/AutoDebitRequestBody;->ICustomTabsCallback:Lo/AutoDebitRegistrationStatusResponse;

    invoke-direct {v1, v2, v0}, Lo/AutoDebitRegisterResponseJsonAdapter;-><init>(Landroid/content/Context;Lo/AutoDebitRegistrationStatusResponse;)V

    invoke-virtual {v1}, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback()Lo/AutoDebitRegistrationStatusResponse;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lo/AutoDebitRegisterResponseJsonAdapter;

    iget-object v1, p0, Lo/AutoDebitRequestBody$MandateDetail;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/AutoDebitRegisterResponseJsonAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback()Lo/AutoDebitRegistrationStatusResponse;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lo/AutoDebitRequestBody$MandateDetail;->onPostMessage:Lo/AutoDebitRequestBodyJsonAdapter;

    invoke-static {v1}, Lo/AutoDebitRequestBodyJsonAdapter;->ICustomTabsCallback(Lo/AutoDebitRequestBodyJsonAdapter;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lo/AutoDebitRequestBody$MandateDetail;->onNavigationEvent:Landroid/content/Context;

    new-instance v3, Lo/AutoDebitRequestBody;

    iget-object v4, p0, Lo/AutoDebitRequestBody$MandateDetail;->onPostMessage:Lo/AutoDebitRequestBodyJsonAdapter;

    invoke-direct {v3, v4, v0}, Lo/AutoDebitRequestBody;-><init>(Lo/AutoDebitRequestBodyJsonAdapter;Lo/AutoDebitRegistrationStatusResponse;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
