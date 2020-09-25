.class final Lo/info;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/filtersNodes;


# instance fields
.field private ICustomTabsCallback:Lo/exceptionStacktrace;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Lo/updatePriority;


# direct methods
.method constructor <init>(Lo/exceptionStacktrace;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    iput-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLog;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    .line 107
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->onMessageChannelReady(Ljava/lang/String;)Lo/updatePriority;

    .line 54
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;II)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    .line 61
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback([BII)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    .line 92
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    invoke-interface {v0}, Lo/exceptionStacktrace;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub(I)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    .line 2194
    invoke-static {p1}, Lo/getPriorityKey;->onPostMessage(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lo/updatePriority;->onNavigationEvent(I)Lo/updatePriority;

    .line 149
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1, p2}, Lo/updatePriority;->ICustomTabsCallback$Stub(J)Lo/updatePriority;

    .line 167
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asBinder(I)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 125
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 240
    :try_start_0
    iget-object v1, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    iget-wide v1, v1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 241
    iget-object v1, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    iget-object v2, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    iget-object v3, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-interface {v1, v2, v3, v4}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 248
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    invoke-interface {v1}, Lo/exceptionStacktrace;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 252
    iput-boolean v1, p0, Lo/info;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 254
    invoke-static {v0}, Lo/getPriorityKey;->onMessageChannelReady(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final extraCallback([B)Lo/filtersNodes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2099
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    .line 86
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 2098
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()Lo/updatePriority;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    return-object v0
.end method

.method public final extraCommand()Lo/filtersNodes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->asBinder()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 179
    iget-object v2, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    iget-object v3, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-interface {v2, v3, v0, v1}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V

    :cond_0
    return-object p0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 224
    iget-object v0, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    iget-object v1, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    iget-wide v2, v1, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-interface {v0, v1, v2, v3}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V

    .line 226
    :cond_0
    iget-object v0, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    invoke-interface {v0}, Lo/exceptionStacktrace;->flush()V

    return-void

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newSession(J)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1, p2}, Lo/updatePriority;->onTransact(J)Lo/updatePriority;

    .line 173
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/matches;)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    if-eqz p1, :cond_0

    .line 1956
    invoke-virtual {p1, v0}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    .line 48
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 1955
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 42
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onRelationshipValidationResult(I)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->ICustomTabsCallback(I)Lo/updatePriority;

    .line 131
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onTransact(I)Lo/filtersNodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->onNavigationEvent(I)Lo/updatePriority;

    .line 143
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/info;->ICustomTabsCallback:Lo/exceptionStacktrace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lo/info;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/info;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 98
    invoke-virtual {p0}, Lo/info;->extraCommand()Lo/filtersNodes;

    return p1

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
