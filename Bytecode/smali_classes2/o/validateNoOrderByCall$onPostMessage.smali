.class final Lo/validateNoOrderByCall$onPostMessage;
.super Lo/validateNoOrderByCall$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateNoOrderByCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/removeEventListener;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:J

.field private synthetic onPostMessage:Lo/validateNoOrderByCall;


# direct methods
.method constructor <init>(Lo/validateNoOrderByCall;Lo/removeEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/validateNoOrderByCall$onMessageChannelReady;-><init>(Lo/validateNoOrderByCall;B)V

    const-wide/16 v0, -0x1

    .line 421
    iput-wide v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    const/4 p1, 0x1

    .line 422
    iput-boolean p1, p0, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady:Z

    .line 426
    iput-object p2, p0, Lo/validateNoOrderByCall$onPostMessage;->ICustomTabsCallback:Lo/removeEventListener;

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

    if-ltz v2, :cond_a

    .line 431
    iget-boolean v2, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-nez v2, :cond_9

    .line 432
    iget-boolean v2, p0, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 434
    :cond_0
    iget-wide v5, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    .line 1450
    :cond_1
    iget-wide v5, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    .line 1451
    iget-object v2, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    .line 2061
    iget-object v2, v2, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 1451
    invoke-interface {v2}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    .line 1454
    :cond_2
    :try_start_0
    iget-object v2, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    .line 3061
    iget-object v2, v2, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 1454
    invoke-interface {v2}, Lo/fullLimitUpdateChild;->newSession()J

    move-result-wide v5

    iput-wide v5, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    .line 1455
    iget-object v2, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    .line 4061
    iget-object v2, v2, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 1455
    invoke-interface {v2}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1456
    iget-wide v5, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    cmp-long v7, v5, v0

    if-ltz v7, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_8

    .line 1463
    :cond_3
    iget-wide v5, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    cmp-long v2, v5, v0

    if-nez v2, :cond_5

    const/4 v0, 0x0

    .line 1464
    iput-boolean v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady:Z

    .line 1465
    iget-object v0, p0, Lo/validateNoOrderByCall$onPostMessage;->ICustomTabsCallback:Lo/removeEventListener;

    iget-object v1, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    invoke-virtual {v1}, Lo/validateNoOrderByCall;->extraCallback()Lo/getRef;

    move-result-object v1

    .line 4876
    iget-object v2, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 5284
    iget-object v2, v2, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    if-eqz v2, :cond_4

    .line 4878
    iget-object v0, v0, Lo/removeEventListener;->asInterface:Lo/fromException;

    invoke-virtual {v0}, Lo/fromException;->ICustomTabsCallback()Ljava/net/URI;

    move-result-object v0

    invoke-static {v1}, Lo/removeEventRegistration;->onNavigationEvent(Lo/getRef;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 1466
    :cond_4
    invoke-virtual {p0}, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady()V

    .line 436
    :cond_5
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_6

    return-wide v3

    .line 439
    :cond_6
    iget-object v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage:Lo/validateNoOrderByCall;

    .line 6061
    iget-object v0, v0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 439
    iget-wide v1, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_7

    .line 444
    iget-wide v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    return-wide p1

    .line 441
    :cond_7
    invoke-virtual {p0}, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage()V

    .line 442
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1457
    :cond_8
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onNavigationEvent:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 1461
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 431
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_a
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lo/createForTests;->onPostMessage(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lo/validateNoOrderByCall$onPostMessage;->onPostMessage()V

    :cond_1
    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    return-void
.end method
