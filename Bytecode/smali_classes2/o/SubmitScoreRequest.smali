.class public final Lo/SubmitScoreRequest;
.super Ljava/lang/Thread;


# static fields
.field private static final ICustomTabsCallback:Z


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/FarmCardResponseJsonAdapter;

.field private volatile asBinder:Z

.field private final extraCallback:Lo/MoshiGradientOrientationAdapter;

.field private final onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/LoanStatusResponse$BreakDownDetails;

.field private final onPostMessage:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    sput-boolean v0, Lo/SubmitScoreRequest;->ICustomTabsCallback:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lo/LoanStatusResponse$BreakDownDetails;Lo/MoshiGradientOrientationAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;",
            "Lo/LoanStatusResponse$BreakDownDetails;",
            "Lo/MoshiGradientOrientationAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/SubmitScoreRequest;->asBinder:Z

    iput-object p1, p0, Lo/SubmitScoreRequest;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lo/SubmitScoreRequest;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lo/SubmitScoreRequest;->onNavigationEvent:Lo/LoanStatusResponse$BreakDownDetails;

    iput-object p4, p0, Lo/SubmitScoreRequest;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    new-instance p1, Lo/FarmCardResponseJsonAdapter;

    invoke-direct {p1, p0}, Lo/FarmCardResponseJsonAdapter;-><init>(Lo/SubmitScoreRequest;)V

    iput-object p1, p0, Lo/SubmitScoreRequest;->ICustomTabsCallback$Stub:Lo/FarmCardResponseJsonAdapter;

    return-void
.end method

.method static synthetic extraCallback(Lo/SubmitScoreRequest;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lo/SubmitScoreRequest;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/SubmitScoreRequest;)Lo/MoshiGradientOrientationAdapter;
    .locals 0

    iget-object p0, p0, Lo/SubmitScoreRequest;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    return-object p0
.end method

.method private final onPostMessage()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lo/SubmitScoreRequest;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder()Z

    iget-object v1, p0, Lo/SubmitScoreRequest;->onNavigationEvent:Lo/LoanStatusResponse$BreakDownDetails;

    invoke-virtual {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/LoanStatusResponse$BreakDownDetails;->extraCallback(Ljava/lang/String;)Lo/GameWebViewFragment$MyJavascriptInterface;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, p0, Lo/SubmitScoreRequest;->ICustomTabsCallback$Stub:Lo/FarmCardResponseJsonAdapter;

    invoke-static {v1, v0}, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback(Lo/FarmCardResponseJsonAdapter;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/SubmitScoreRequest;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lo/GameWebViewFragment$MyJavascriptInterface;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/SubmitScoreRequest;->ICustomTabsCallback$Stub:Lo/FarmCardResponseJsonAdapter;

    invoke-static {v1, v0}, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback(Lo/FarmCardResponseJsonAdapter;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/SubmitScoreRequest;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance v2, Lo/initiateUPI;

    iget-object v3, v1, Lo/GameWebViewFragment$MyJavascriptInterface;->onMessageChannelReady:[B

    iget-object v4, v1, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lo/initiateUPI;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/initiateUPI;)Lo/BankAccountSyncRequestJsonAdapter;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-wide v3, v1, Lo/GameWebViewFragment$MyJavascriptInterface;->onTransact:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-gez v8, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iput-boolean v7, v2, Lo/BankAccountSyncRequestJsonAdapter;->onNavigationEvent:Z

    iget-object v1, p0, Lo/SubmitScoreRequest;->ICustomTabsCallback$Stub:Lo/FarmCardResponseJsonAdapter;

    invoke-static {v1, v0}, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback(Lo/FarmCardResponseJsonAdapter;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/SubmitScoreRequest;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    new-instance v3, Lo/ClaimedLifestyleTemplatePropertiesJsonAdapter;

    invoke-direct {v3, p0, v0}, Lo/ClaimedLifestyleTemplatePropertiesJsonAdapter;-><init>(Lo/SubmitScoreRequest;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V

    invoke-interface {v1, v0, v2, v3}, Lo/MoshiGradientOrientationAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object v1, p0, Lo/SubmitScoreRequest;->extraCallback:Lo/MoshiGradientOrientationAdapter;

    invoke-interface {v1, v0, v2}, Lo/MoshiGradientOrientationAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/SubmitScoreRequest;->asBinder:Z

    invoke-virtual {p0}, Lo/SubmitScoreRequest;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 2

    sget-boolean v0, Lo/SubmitScoreRequest;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start new dispatcher"

    invoke-static {v1, v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lo/SubmitScoreRequest;->onNavigationEvent:Lo/LoanStatusResponse$BreakDownDetails;

    invoke-interface {v0}, Lo/LoanStatusResponse$BreakDownDetails;->onNavigationEvent()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lo/SubmitScoreRequest;->onPostMessage()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lo/SubmitScoreRequest;->asBinder:Z

    if-eqz v0, :cond_1

    return-void
.end method
