.class public Lo/PayoutClaimResponse;
.super Lo/getRewardType;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:Lo/getRewardType;

.field private final onMessageChannelReady:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getRewardType;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    invoke-virtual {v1}, Lo/getRewardType;->ICustomTabsCallback()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    invoke-virtual {v1, p1}, Lo/getRewardType;->ICustomTabsCallback(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    invoke-virtual {v1}, Lo/getRewardType;->extraCallback()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    invoke-virtual {v1}, Lo/getRewardType;->onNavigationEvent()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/getRewardType;)V
    .locals 1

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPostMessage()V
    .locals 2

    iget-object v0, p0, Lo/PayoutClaimResponse;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PayoutClaimResponse;->extraCallback:Lo/getRewardType;

    invoke-virtual {v1}, Lo/getRewardType;->onPostMessage()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
