.class final Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getConfig;


# direct methods
.method constructor <init>(Lo/getConfig;)V
    .locals 0

    iput-object p1, p0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getConfig;

    iget-object v0, v0, Lo/getConfig;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo/getConfig;->onMessageChannelReady()Landroid/os/ConditionVariable;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getConfig;

    iget-object v1, v1, Lo/getConfig;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lo/WinningTypes;->isEmpty:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v2, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v3, p0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getConfig;

    invoke-static {v3}, Lo/getConfig;->extraCallback(Lo/getConfig;)Lo/SubmitScoreRequestJsonAdapter;

    move-result-object v3

    iget-object v3, v3, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lo/getConfig;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :cond_2
    :goto_0
    :try_start_2
    iget-object v2, p0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getConfig;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lo/getConfig;->onPostMessage:Ljava/lang/Boolean;

    invoke-static {}, Lo/getConfig;->onMessageChannelReady()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
