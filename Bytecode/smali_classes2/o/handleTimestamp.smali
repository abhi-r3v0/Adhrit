.class final Lo/handleTimestamp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/handleTimestamp$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:Z

.field asInterface:Ljava/net/Socket;

.field final extraCallback:Lo/updatePriority;

.field onMessageChannelReady:Z

.field final onNavigationEvent:Lo/sendListen$onPostMessage;

.field onPostMessage:Z

.field private final onRelationshipValidationResult:Lo/onListenRevoked;

.field onTransact:Lo/exceptionStacktrace;


# direct methods
.method constructor <init>(Lo/onListenRevoked;Lo/sendListen$onPostMessage;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/handleTimestamp;->ICustomTabsCallback:Ljava/lang/Object;

    .line 41
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    iput-object v0, p0, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/handleTimestamp;->onPostMessage:Z

    .line 47
    iput-boolean v0, p0, Lo/handleTimestamp;->onMessageChannelReady:Z

    .line 49
    iput-boolean v0, p0, Lo/handleTimestamp;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_0

    .line 56
    check-cast p1, Lo/onListenRevoked;

    iput-object p1, p0, Lo/handleTimestamp;->onRelationshipValidationResult:Lo/onListenRevoked;

    .line 57
    check-cast p2, Lo/sendListen$onPostMessage;

    iput-object p2, p0, Lo/handleTimestamp;->onNavigationEvent:Lo/sendListen$onPostMessage;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 154
    sget-object v0, Lo/logsDebug;->ICustomTabsCallback:Lo/logsDebug;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lo/handleTimestamp;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lo/handleTimestamp;->ICustomTabsCallback$Stub:Z

    .line 163
    iget-object v0, p0, Lo/handleTimestamp;->onRelationshipValidationResult:Lo/onListenRevoked;

    invoke-virtual {v0, p0}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lo/handleTimestamp;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 120
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lo/handleTimestamp;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-boolean v1, p0, Lo/handleTimestamp;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 124
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 126
    :try_start_2
    iput-boolean v1, p0, Lo/handleTimestamp;->onMessageChannelReady:Z

    .line 127
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    iget-object v0, p0, Lo/handleTimestamp;->onRelationshipValidationResult:Lo/onListenRevoked;

    new-instance v1, Lo/handleTimestamp$3;

    invoke-direct {v1, p0}, Lo/handleTimestamp$3;-><init>(Lo/handleTimestamp;)V

    invoke-virtual {v0, v1}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception v1

    .line 127
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 148
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 80
    iget-boolean v0, p0, Lo/handleTimestamp;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_2

    .line 83
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/handleTimestamp;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    iget-object v1, p0, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    invoke-virtual {v1, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 87
    iget-boolean p1, p0, Lo/handleTimestamp;->onPostMessage:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/handleTimestamp;->onMessageChannelReady:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    invoke-virtual {p1}, Lo/updatePriority;->asBinder()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lo/handleTimestamp;->onPostMessage:Z

    .line 91
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object p1, p0, Lo/handleTimestamp;->onRelationshipValidationResult:Lo/onListenRevoked;

    new-instance p2, Lo/handleTimestamp$2;

    invoke-direct {p2, p0}, Lo/handleTimestamp$2;-><init>(Lo/handleTimestamp;)V

    invoke-virtual {p1, p2}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    .line 88
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_4
    monitor-exit v0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 111
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw p1

    .line 81
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final run()V
    .locals 2

    .line 5038
    iget-object v0, p0, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    .line 4166
    invoke-virtual {v0}, Lo/updatePriority;->close()V

    .line 6038
    :try_start_0
    iget-object v0, p0, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    if-eqz v0, :cond_0

    .line 7038
    iget-object v0, p0, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    .line 4169
    invoke-interface {v0}, Lo/exceptionStacktrace;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8038
    iget-object v1, p0, Lo/handleTimestamp;->onNavigationEvent:Lo/sendListen$onPostMessage;

    .line 4172
    invoke-interface {v1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 9038
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo/handleTimestamp;->asInterface:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 10038
    iget-object v0, p0, Lo/handleTimestamp;->asInterface:Ljava/net/Socket;

    .line 4176
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 11038
    iget-object v1, p0, Lo/handleTimestamp;->onNavigationEvent:Lo/sendListen$onPostMessage;

    .line 4179
    invoke-interface {v1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method
