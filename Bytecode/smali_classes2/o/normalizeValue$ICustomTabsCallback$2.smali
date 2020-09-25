.class final Lo/normalizeValue$ICustomTabsCallback$2;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent(Lo/getInitialEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getInitialEvents;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/normalizeValue$ICustomTabsCallback;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;ZLo/getInitialEvents;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lo/normalizeValue$ICustomTabsCallback$2;->onNavigationEvent:Lo/normalizeValue$ICustomTabsCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/normalizeValue$ICustomTabsCallback$2;->onMessageChannelReady:Z

    iput-object p5, p0, Lo/normalizeValue$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/getInitialEvents;

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 14

    .line 707
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback$2;->onNavigationEvent:Lo/normalizeValue$ICustomTabsCallback;

    iget-boolean v1, p0, Lo/normalizeValue$ICustomTabsCallback$2;->onMessageChannelReady:Z

    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/getInitialEvents;

    .line 1718
    iget-object v3, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v3, v3, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    monitor-enter v3

    .line 1719
    :try_start_0
    iget-object v4, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1720
    :try_start_1
    iget-object v5, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v5, v5, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 2114
    iget v6, v5, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v6, v6, 0x80

    const/4 v7, 0x7

    const v8, 0xffff

    if-eqz v6, :cond_0

    iget-object v5, v5, Lo/getInitialEvents;->onPostMessage:[I

    aget v5, v5, v7

    goto :goto_0

    :cond_0
    const v5, 0xffff

    :goto_0
    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1721
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 3054
    iput v6, v1, Lo/getInitialEvents;->ICustomTabsCallback:I

    .line 3055
    iget-object v1, v1, Lo/getInitialEvents;->onPostMessage:[I

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([II)V

    .line 1722
    :cond_1
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0xa

    const/4 v11, 0x1

    if-ge v9, v10, :cond_4

    shl-int v10, v11, v9

    .line 4072
    iget v12, v2, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 4077
    iget-object v10, v2, Lo/getInitialEvents;->onPostMessage:[I

    aget v10, v10, v9

    .line 3124
    invoke-virtual {v1, v9, v10}, Lo/getInitialEvents;->onMessageChannelReady(II)Lo/getInitialEvents;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1723
    :cond_4
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 4114
    iget v2, v1, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    iget-object v1, v1, Lo/getInitialEvents;->onPostMessage:[I

    aget v8, v1, v7

    :cond_5
    const/4 v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    if-eq v8, v1, :cond_6

    if-eq v8, v5, :cond_6

    sub-int/2addr v8, v5

    int-to-long v7, v8

    .line 1726
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1727
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v2, v2, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lo/getServerCache;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/getServerCache;

    move-object v2, v1

    goto :goto_3

    :cond_6
    move-wide v7, v9

    .line 1730
    :cond_7
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1732
    :try_start_2
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    iget-object v4, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v4, v4, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    invoke-virtual {v1, v4}, Lo/updateServerSnap;->ICustomTabsCallback(Lo/getInitialEvents;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 1734
    :catch_0
    :try_start_3
    iget-object v1, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-static {v1}, Lo/normalizeValue;->onNavigationEvent(Lo/normalizeValue;)V

    .line 1736
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_9

    .line 1738
    array-length v1, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_9

    aget-object v4, v2, v3

    .line 1739
    monitor-enter v4

    .line 4634
    :try_start_4
    iget-wide v12, v4, Lo/getServerCache;->onPostMessage:J

    add-long/2addr v12, v7

    iput-wide v12, v4, Lo/getServerCache;->onPostMessage:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_8

    .line 4635
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1741
    :cond_8
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 1744
    :cond_9
    invoke-static {}, Lo/normalizeValue;->extraCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lo/normalizeValue$ICustomTabsCallback$3;

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v4, v4, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "OkHttp %s settings"

    invoke-direct {v2, v0, v4, v3}, Lo/normalizeValue$ICustomTabsCallback$3;-><init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 1730
    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 1736
    monitor-exit v3

    throw v0
.end method
