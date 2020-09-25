.class final Lo/getWireProtocolParams$onNavigationEvent;
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
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Lo/buildLogMessage;

.field private synthetic onMessageChannelReady:Lo/getWireProtocolParams;

.field private onPostMessage:J


# direct methods
.method constructor <init>(Lo/getWireProtocolParams;J)V
    .locals 1

    .line 280
    iput-object p1, p0, Lo/getWireProtocolParams$onNavigationEvent;->onMessageChannelReady:Lo/getWireProtocolParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onMessageChannelReady:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/getWireProtocolParams$onNavigationEvent;->extraCallback:Lo/buildLogMessage;

    .line 281
    iput-wide p2, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->extraCallback:Lo/buildLogMessage;

    return-object v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-boolean v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->ICustomTabsCallback:Z

    .line 307
    iget-wide v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 308
    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->extraCallback:Lo/buildLogMessage;

    invoke-static {v0}, Lo/getWireProtocolParams;->onNavigationEvent(Lo/buildLogMessage;)V

    .line 309
    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onMessageChannelReady:Lo/getWireProtocolParams;

    const/4 v1, 0x3

    iput v1, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    return-void

    .line 307
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-boolean v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onMessageChannelReady:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 1067
    iget-wide v1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 290
    invoke-static/range {v1 .. v6}, Lo/generateEventsForType;->onPostMessage(JJJ)V

    .line 291
    iget-wide v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 295
    iget-object v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onMessageChannelReady:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0, p1, p2, p3}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    .line 296
    iget-wide v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    return-void

    .line 292
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/getWireProtocolParams$onNavigationEvent;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
