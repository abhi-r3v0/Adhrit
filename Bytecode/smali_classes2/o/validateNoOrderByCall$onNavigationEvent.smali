.class final Lo/validateNoOrderByCall$onNavigationEvent;
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
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/validateNoOrderByCall;

.field private final onMessageChannelReady:Lo/buildLogMessage;

.field private onNavigationEvent:J

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/validateNoOrderByCall;J)V
    .locals 1

    .line 273
    iput-object p1, p0, Lo/validateNoOrderByCall$onNavigationEvent;->extraCallback:Lo/validateNoOrderByCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->extraCallback:Lo/validateNoOrderByCall;

    .line 1061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 269
    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onMessageChannelReady:Lo/buildLogMessage;

    .line 274
    iput-wide p2, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    return-void
.end method

.method synthetic constructor <init>(Lo/validateNoOrderByCall;JB)V
    .locals 0

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lo/validateNoOrderByCall$onNavigationEvent;-><init>(Lo/validateNoOrderByCall;J)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 278
    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onMessageChannelReady:Lo/buildLogMessage;

    return-object v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onPostMessage:Z

    .line 300
    iget-wide v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 301
    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onMessageChannelReady:Lo/buildLogMessage;

    invoke-static {v0}, Lo/validateNoOrderByCall;->extraCallback(Lo/buildLogMessage;)V

    .line 302
    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->extraCallback:Lo/validateNoOrderByCall;

    const/4 v1, 0x3

    .line 4061
    iput v1, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    return-void

    .line 300
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

    .line 293
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->extraCallback:Lo/validateNoOrderByCall;

    .line 3061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 294
    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onPostMessage:Z

    if-nez v0, :cond_1

    .line 1067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 283
    invoke-static {v0, v1, p2, p3}, Lo/createForTests;->onNavigationEvent(JJ)V

    .line 284
    iget-wide v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 288
    iget-object v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->extraCallback:Lo/validateNoOrderByCall;

    .line 2061
    iget-object v0, v0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    .line 288
    invoke-interface {v0, p1, p2, p3}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    .line 289
    iget-wide v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    return-void

    .line 285
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/validateNoOrderByCall$onNavigationEvent;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
