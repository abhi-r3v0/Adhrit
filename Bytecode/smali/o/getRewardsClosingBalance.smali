.class public final Lo/getRewardsClosingBalance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRewardsClosingBalance$extraCallback;
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:Lo/getRewardsClosingBalance$extraCallback;

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getRewardsClosingBalance;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/TrophySectionsResponseJsonAdapter;
    .locals 2

    iget-object v0, p0, Lo/getRewardsClosingBalance;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getRewardsClosingBalance;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onNavigationEvent(Lo/TrophySectionsResponseJsonAdapter;)V
    .locals 4

    iget-object v0, p0, Lo/getRewardsClosingBalance;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/getRewardsClosingBalance;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    iget-object p1, p0, Lo/getRewardsClosingBalance;->extraCallback:Lo/getRewardsClosingBalance$extraCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/getRewardsClosingBalance;->extraCallback:Lo/getRewardsClosingBalance$extraCallback;

    const-string v1, "VideoLifecycleCallbacks may not be null."

    if-eqz p1, :cond_1

    .line 1000
    iget-object v1, p0, Lo/getRewardsClosingBalance;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lo/getRewardsClosingBalance;->extraCallback:Lo/getRewardsClosingBalance$extraCallback;

    iget-object v2, p0, Lo/getRewardsClosingBalance;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Lo/getRewardsClosingBalance;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    new-instance v3, Lo/WinMachineCard;

    invoke-direct {v3, p1}, Lo/WinMachineCard;-><init>(Lo/getRewardsClosingBalance$extraCallback;)V

    invoke-interface {v2, v3}, Lo/TrophySectionsResponseJsonAdapter;->onNavigationEvent(Lo/TrophySectionJsonAdapter;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string v2, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v1

    throw p1

    .line 1011
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1000
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
