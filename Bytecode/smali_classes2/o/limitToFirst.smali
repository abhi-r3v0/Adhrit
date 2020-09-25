.class public final Lo/limitToFirst;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# instance fields
.field private final ICustomTabsCallback:I

.field public final onMessageChannelReady:Lo/updatePriority;

.field private onNavigationEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, v0}, Lo/limitToFirst;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    iput-object v0, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 38
    iput p1, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 67
    sget-object v0, Lo/logsDebug;->ICustomTabsCallback:Lo/logsDebug;

    return-object v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lo/limitToFirst;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lo/limitToFirst;->onNavigationEvent:Z

    .line 48
    iget-object v0, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 1067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    .line 48
    iget v2, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content-length promised "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 2067
    iget-wide v2, v2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(Lo/exceptionStacktrace;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v6, Lo/updatePriority;

    invoke-direct {v6}, Lo/updatePriority;-><init>()V

    .line 77
    iget-object v0, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 5067
    iget-wide v4, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    move-object v1, v6

    .line 77
    invoke-virtual/range {v0 .. v5}, Lo/updatePriority;->extraCallback(Lo/updatePriority;JJ)Lo/updatePriority;

    .line 6067
    iget-wide v0, v6, Lo/updatePriority;->ICustomTabsCallback:J

    .line 78
    invoke-interface {p1, v6, v0, v1}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V

    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lo/limitToFirst;->onNavigationEvent:Z

    if-nez v0, :cond_2

    .line 3067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 56
    invoke-static {v0, v1, p2, p3}, Lo/createForTests;->onNavigationEvent(JJ)V

    .line 57
    iget v0, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 4067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    .line 57
    iget v2, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exceeded content-length limit of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lo/limitToFirst;->ICustomTabsCallback:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
