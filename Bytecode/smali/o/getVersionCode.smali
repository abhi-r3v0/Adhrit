.class public final Lo/getVersionCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/common/memory/PooledByteBuffer;


# instance fields
.field private extraCallback:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lo/AppsFlyer2dXConversionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/getRootAlpha;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lo/AppsFlyer2dXConversionCallback;",
            ">;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v0}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    .line 33
    iput p2, p0, Lo/getVersionCode;->onPostMessage:I

    return-void

    .line 2111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method private declared-synchronized ICustomTabsCallback()V
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lo/getVersionCode;->onMessageChannelReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;

    invoke-direct {v0}, Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v0}, Lo/AppsFlyer2dXConversionCallback;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(I)B
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lo/getVersionCode;->ICustomTabsCallback()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 52
    iget v2, p0, Lo/getVersionCode;->onPostMessage:I

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v0, p1}, Lo/AppsFlyer2dXConversionCallback;->extraCallback(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 4111
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(I[BII)I
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lo/getVersionCode;->ICustomTabsCallback()V

    add-int v0, p1, p4

    .line 61
    iget v1, p0, Lo/getVersionCode;->onPostMessage:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady(I[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 5111
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady()Z
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()I
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lo/getVersionCode;->ICustomTabsCallback()V

    .line 45
    iget v0, p0, Lo/getVersionCode;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-direct {p0}, Lo/getVersionCode;->ICustomTabsCallback()V

    .line 68
    iget-object v0, p0, Lo/getVersionCode;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v0}, Lo/AppsFlyer2dXConversionCallback;->onPostMessage()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
