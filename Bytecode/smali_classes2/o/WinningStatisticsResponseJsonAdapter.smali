.class public final Lo/WinningStatisticsResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Z

.field private extraCallback:Landroid/content/SharedPreferences;

.field private onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->extraCallback:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic onPostMessage(Lo/WinningStatisticsResponseJsonAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lo/WinningStatisticsResponseJsonAdapter;->extraCallback:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lo/getTotalAmount;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    move-object v1, p1

    :cond_4
    if-nez v1, :cond_5

    :try_start_2
    iget-object p1, p0, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_5
    :try_start_3
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onPostMessage()Lo/WinningTypesJsonAdapter;

    const-string p1, "google_ads_flags"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/WinningStatisticsResponseJsonAdapter;->extraCallback:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/WinningStatisticsResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/WinningStatisticsResponseJsonAdapter;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    new-instance v1, Lo/WinningStatisticsResponse;

    invoke-direct {v1, p0, p1}, Lo/WinningStatisticsResponse;-><init>(Lo/WinningStatisticsResponseJsonAdapter;Lo/WinRaffleTicketResponseJsonAdapter;)V

    invoke-static {v0, v1}, Lo/getCategorised;->onPostMessage(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Flags.initialize() was not called!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
