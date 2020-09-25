.class final Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback:[J

.field final extraCallback:[I

.field onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field final onPostMessage:[Z


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-array v0, p1, [J

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    .line 746
    new-array v1, p1, [Z

    iput-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onPostMessage:[Z

    .line 747
    new-array p1, p1, [I

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback:[I

    const-wide/16 v1, 0x0

    .line 748
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 749
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onPostMessage:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method final varargs extraCallback([I)Z
    .locals 9

    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    .line 759
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    aget-wide v5, v4, v3

    .line 760
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    aput-wide v7, v4, v3

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    cmp-long v8, v5, v3

    if-nez v8, :cond_0

    .line 762
    iput-boolean v7, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onNavigationEvent:Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final extraCallback()[I
    .locals 9

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 800
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 802
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 803
    :goto_1
    iget-object v5, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onPostMessage:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 804
    iget-object v5, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v5, v2

    goto :goto_3

    .line 806
    :cond_3
    iget-object v3, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback:[I

    aput v1, v3, v2

    .line 808
    :goto_3
    iget-object v3, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onPostMessage:[Z

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_4
    iput-boolean v3, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onMessageChannelReady:Z

    .line 811
    iput-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onNavigationEvent:Z

    .line 812
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback:[I

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 798
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 813
    monitor-exit p0

    throw v0
.end method

.method final varargs onMessageChannelReady([I)Z
    .locals 11

    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    .line 777
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    aget-wide v5, v4, v3

    .line 778
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->ICustomTabsCallback:[J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    aput-wide v9, v4, v3

    const/4 v3, 0x1

    cmp-long v4, v5, v7

    if-nez v4, :cond_0

    .line 780
    iput-boolean v3, p0, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onNavigationEvent:Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
