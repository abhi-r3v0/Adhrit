.class final Lo/validateNoOrderByCall$ICustomTabsCallback;
.super Lo/validateNoOrderByCall$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateNoOrderByCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/validateNoOrderByCall;

.field private onNavigationEvent:J


# direct methods
.method public constructor <init>(Lo/validateNoOrderByCall;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->ICustomTabsCallback:Lo/validateNoOrderByCall;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/validateNoOrderByCall$onMessageChannelReady;-><init>(Lo/validateNoOrderByCall;B)V

    .line 382
    iput-wide p2, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback;->onMessageChannelReady()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    .line 390
    iget-boolean v2, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-nez v2, :cond_3

    .line 391
    iget-wide v2, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    return-wide v4

    .line 393
    :cond_0
    iget-object v2, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->ICustomTabsCallback:Lo/validateNoOrderByCall;

    .line 1061
    iget-object v2, v2, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 393
    iget-wide v6, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v2, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2

    .line 399
    iget-wide v2, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 401
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback;->onMessageChannelReady()V

    :cond_1
    return-wide p1

    .line 395
    :cond_2
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback;->onPostMessage()V

    .line 396
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
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

    .line 407
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-wide v0, p0, Lo/validateNoOrderByCall$ICustomTabsCallback;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 410
    invoke-static {p0, v0}, Lo/createForTests;->onPostMessage(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback;->onPostMessage()V

    :cond_1
    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    return-void
.end method
