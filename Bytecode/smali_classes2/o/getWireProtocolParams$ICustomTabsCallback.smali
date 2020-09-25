.class final Lo/getWireProtocolParams$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getWireProtocolParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/buildLogMessage;

.field private onNavigationEvent:Z

.field private synthetic onPostMessage:Lo/getWireProtocolParams;


# direct methods
.method constructor <init>(Lo/getWireProtocolParams;)V
    .locals 1

    .line 321
    iput-object p1, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->ICustomTabsCallback:Lo/buildLogMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 325
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->ICustomTabsCallback:Lo/buildLogMessage;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 345
    :try_start_1
    iput-boolean v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onNavigationEvent:Z

    .line 346
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 347
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->ICustomTabsCallback:Lo/buildLogMessage;

    invoke-static {v0}, Lo/getWireProtocolParams;->onNavigationEvent(Lo/buildLogMessage;)V

    .line 348
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    const/4 v1, 0x3

    iput v1, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-boolean v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onNavigationEvent:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0, p2, p3}, Lo/filtersNodes;->newSession(J)Lo/filtersNodes;

    .line 333
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 334
    iget-object v0, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0, p1, p2, p3}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    .line 335
    iget-object p1, p0, Lo/getWireProtocolParams$ICustomTabsCallback;->onPostMessage:Lo/getWireProtocolParams;

    iget-object p1, p1, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    return-void

    .line 329
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
