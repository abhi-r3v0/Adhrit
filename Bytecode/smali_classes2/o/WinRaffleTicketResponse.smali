.class public final Lo/WinRaffleTicketResponse;
.super Ljava/lang/Thread;


# instance fields
.field private final ICustomTabsCallback:Lo/WinDetailsItemJsonAdapter;

.field private final extraCallback:Lo/MoshiGradientOrientationAdapter;

.field private volatile onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/LoanStatusResponse$BreakDownDetails;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lo/WinDetailsItemJsonAdapter;Lo/LoanStatusResponse$BreakDownDetails;Lo/MoshiGradientOrientationAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;",
            "Lo/WinDetailsItemJsonAdapter;",
            "Lo/LoanStatusResponse$BreakDownDetails;",
            "Lo/MoshiGradientOrientationAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/WinRaffleTicketResponse;->onMessageChannelReady:Z

    iput-object p1, p0, Lo/WinRaffleTicketResponse;->onNavigationEvent:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lo/WinRaffleTicketResponse;->ICustomTabsCallback:Lo/WinDetailsItemJsonAdapter;

    iput-object p3, p0, Lo/WinRaffleTicketResponse;->onPostMessage:Lo/LoanStatusResponse$BreakDownDetails;

    iput-object p4, p0, Lo/WinRaffleTicketResponse;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lo/WinRaffleTicketResponse;->onNavigationEvent:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder()Z

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage()I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lo/WinRaffleTicketResponse;->ICustomTabsCallback:Lo/WinDetailsItemJsonAdapter;

    invoke-interface {v3, v2}, Lo/WinDetailsItemJsonAdapter;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-boolean v4, v3, Lo/initiateUPI;->onPostMessage:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->newSession()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor()V

    return-void

    :cond_0
    invoke-virtual {v2, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/initiateUPI;)Lo/BankAccountSyncRequestJsonAdapter;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo/WinRaffleTicketResponse;->onPostMessage:Lo/LoanStatusResponse$BreakDownDetails;

    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    invoke-interface {v4, v5, v6}, Lo/LoanStatusResponse$BreakDownDetails;->onNavigationEvent(Ljava/lang/String;Lo/GameWebViewFragment$MyJavascriptInterface;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->warmup()V

    iget-object v4, p0, Lo/WinRaffleTicketResponse;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    invoke-interface {v4, v2, v3}, Lo/MoshiGradientOrientationAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V

    invoke-virtual {v2, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/BankAccountSyncRequestJsonAdapter;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzae;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzae;->onPostMessage(J)V

    iget-object v0, p0, Lo/WinRaffleTicketResponse;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    invoke-interface {v0, v2, v4}, Lo/MoshiGradientOrientationAdapter;->ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lcom/google/android/gms/internal/ads/zzae;)V

    :goto_0
    invoke-virtual {v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor()V

    return-void

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzae;->onPostMessage(J)V

    iget-object v0, p0, Lo/WinRaffleTicketResponse;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    invoke-interface {v0, v2, v3}, Lo/MoshiGradientOrientationAdapter;->ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lcom/google/android/gms/internal/ads/zzae;)V

    goto :goto_0
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/WinRaffleTicketResponse;->onMessageChannelReady:Z

    invoke-virtual {p0}, Lo/WinRaffleTicketResponse;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lo/WinRaffleTicketResponse;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lo/WinRaffleTicketResponse;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void
.end method
