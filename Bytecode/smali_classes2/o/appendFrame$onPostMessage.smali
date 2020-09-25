.class final Lo/appendFrame$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:B

.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:S

.field private final onTransact:Lo/fullLimitUpdateChild;


# direct methods
.method public constructor <init>(Lo/fullLimitUpdateChild;)V
    .locals 0

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

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

    .line 620
    :goto_0
    iget v0, p0, Lo/appendFrame$onPostMessage;->extraCallback:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    .line 621
    iget-object v0, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    iget-short v3, p0, Lo/appendFrame$onPostMessage;->onPostMessage:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lo/fullLimitUpdateChild;->asInterface(J)V

    const/4 v0, 0x0

    .line 622
    iput-short v0, p0, Lo/appendFrame$onPostMessage;->onPostMessage:S

    .line 623
    iget-byte v3, p0, Lo/appendFrame$onPostMessage;->ICustomTabsCallback:B

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    return-wide v1

    .line 1642
    :cond_0
    iget v1, p0, Lo/appendFrame$onPostMessage;->onMessageChannelReady:I

    .line 1644
    iget-object v2, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    invoke-static {v2}, Lo/appendFrame;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v2

    iput v2, p0, Lo/appendFrame$onPostMessage;->extraCallback:I

    iput v2, p0, Lo/appendFrame$onPostMessage;->onNavigationEvent:I

    .line 1645
    iget-object v2, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v2

    int-to-byte v2, v2

    .line 1646
    iget-object v3, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lo/appendFrame$onPostMessage;->ICustomTabsCallback:B

    .line 1647
    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v3

    iget v5, p0, Lo/appendFrame$onPostMessage;->onMessageChannelReady:I

    iget v6, p0, Lo/appendFrame$onPostMessage;->onNavigationEvent:I

    iget-byte v7, p0, Lo/appendFrame$onPostMessage;->ICustomTabsCallback:B

    invoke-static {v4, v5, v6, v2, v7}, Lo/appendFrame$onNavigationEvent;->onPostMessage(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1648
    :cond_1
    iget-object v3, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v3, v5

    iput v3, p0, Lo/appendFrame$onPostMessage;->onMessageChannelReady:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    .line 1650
    invoke-static {p2, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, v4, [Ljava/lang/Object;

    .line 1649
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%s != TYPE_CONTINUATION"

    invoke-static {p2, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 628
    :cond_4
    iget-object v3, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    return-wide v1

    .line 630
    :cond_5
    iget p3, p0, Lo/appendFrame$onPostMessage;->extraCallback:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lo/appendFrame$onPostMessage;->extraCallback:I

    return-wide p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 635
    iget-object v0, p0, Lo/appendFrame$onPostMessage;->onTransact:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
