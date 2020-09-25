.class final Lo/validateNoOrderByCall$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateNoOrderByCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/validateNoOrderByCall;

.field private final onNavigationEvent:Lo/buildLogMessage;

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/validateNoOrderByCall;)V
    .locals 1

    .line 311
    iput-object p1, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 1061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 312
    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/validateNoOrderByCall$extraCallback;->onNavigationEvent:Lo/buildLogMessage;

    return-void
.end method

.method synthetic constructor <init>(Lo/validateNoOrderByCall;B)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lo/validateNoOrderByCall$extraCallback;-><init>(Lo/validateNoOrderByCall;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 316
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->onNavigationEvent:Lo/buildLogMessage;

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

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lo/validateNoOrderByCall$extraCallback;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 336
    :try_start_1
    iput-boolean v0, p0, Lo/validateNoOrderByCall$extraCallback;->onPostMessage:Z

    .line 337
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 7061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    const-string v1, "0\r\n\r\n"

    .line 337
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 338
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->onNavigationEvent:Lo/buildLogMessage;

    invoke-static {v0}, Lo/validateNoOrderByCall;->extraCallback(Lo/buildLogMessage;)V

    .line 339
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    const/4 v1, 0x3

    .line 8061
    iput v1, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
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

    .line 330
    :try_start_0
    iget-boolean v0, p0, Lo/validateNoOrderByCall$extraCallback;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 6061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 331
    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
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

    .line 320
    iget-boolean v0, p0, Lo/validateNoOrderByCall$extraCallback;->onPostMessage:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 2061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 323
    invoke-interface {v0, p2, p3}, Lo/filtersNodes;->newSession(J)Lo/filtersNodes;

    .line 324
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 3061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    const-string v1, "\r\n"

    .line 324
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 325
    iget-object v0, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 4061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 325
    invoke-interface {v0, p1, p2, p3}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    .line 326
    iget-object p1, p0, Lo/validateNoOrderByCall$extraCallback;->extraCallback:Lo/validateNoOrderByCall;

    .line 5061
    iget-object p1, p1, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 326
    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    return-void

    .line 320
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
