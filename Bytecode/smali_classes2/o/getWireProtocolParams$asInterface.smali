.class final Lo/getWireProtocolParams$asInterface;
.super Lo/getWireProtocolParams$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getWireProtocolParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "asInterface"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z


# direct methods
.method constructor <init>(Lo/getWireProtocolParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, p1, v0}, Lo/getWireProtocolParams$onPostMessage;-><init>(Lo/getWireProtocolParams;B)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 504
    iget-boolean v0, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_2

    .line 505
    iget-boolean v0, p0, Lo/getWireProtocolParams$asInterface;->ICustomTabsCallback:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 507
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 509
    iput-boolean p1, p0, Lo/getWireProtocolParams$asInterface;->ICustomTabsCallback:Z

    const/4 p2, 0x0

    .line 510
    invoke-virtual {p0, p1, p2}, Lo/getWireProtocolParams$asInterface;->ICustomTabsCallback(ZLjava/io/IOException;)V

    return-wide v1

    :cond_1
    return-wide p1

    .line 504
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_3
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-boolean v0, p0, Lo/getWireProtocolParams$asInterface;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0, v0, v1}, Lo/getWireProtocolParams$asInterface;->ICustomTabsCallback(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lo/getWireProtocolParams$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method
