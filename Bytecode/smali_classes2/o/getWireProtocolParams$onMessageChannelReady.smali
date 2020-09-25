.class final Lo/getWireProtocolParams$onMessageChannelReady;
.super Lo/getWireProtocolParams$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getWireProtocolParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:J


# direct methods
.method constructor <init>(Lo/getWireProtocolParams;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0}, Lo/getWireProtocolParams$onPostMessage;-><init>(Lo/getWireProtocolParams;B)V

    .line 396
    iput-wide p2, p0, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 398
    invoke-virtual {p0, p1, p2}, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback(ZLjava/io/IOException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    .line 404
    iget-boolean v2, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    if-nez v2, :cond_3

    .line 405
    iget-wide v2, p0, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    return-wide v4

    .line 407
    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2

    .line 414
    iget-wide v2, p0, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, p3, v0}, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback(ZLjava/io/IOException;)V

    :cond_1
    return-wide p1

    .line 409
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 410
    invoke-virtual {p0, p2, p1}, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback(ZLjava/io/IOException;)V

    .line 411
    throw p1

    .line 404
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-boolean v0, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-wide v0, p0, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lo/generateEventsForType;->ICustomTabsCallback(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0, v0, v1}, Lo/getWireProtocolParams$onMessageChannelReady;->ICustomTabsCallback(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method
