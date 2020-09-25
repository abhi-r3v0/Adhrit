.class final Lo/warn$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/warn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/io/OutputStream;

.field private synthetic onPostMessage:Lo/logsDebug;


# direct methods
.method constructor <init>(Lo/logsDebug;Ljava/io/OutputStream;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/warn$4;->onPostMessage:Lo/logsDebug;

    iput-object p2, p0, Lo/warn$4;->onMessageChannelReady:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/warn$4;->onPostMessage:Lo/logsDebug;

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/warn$4;->onMessageChannelReady:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lo/warn$4;->onMessageChannelReady:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lo/getPriorityKey;->extraCallback(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 76
    iget-object v0, p0, Lo/warn$4;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->asInterface()V

    .line 77
    iget-object v0, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 78
    iget v1, v0, Lo/shouldLog;->onNavigationEvent:I

    iget v2, v0, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 79
    iget-object v1, p0, Lo/warn$4;->onMessageChannelReady:Ljava/io/OutputStream;

    iget-object v3, v0, Lo/shouldLog;->extraCallback:[B

    iget v4, v0, Lo/shouldLog;->ICustomTabsCallback:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    iget v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 83
    iget-wide v3, p1, Lo/updatePriority;->ICustomTabsCallback:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 85
    iget v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    iget v2, v0, Lo/shouldLog;->onNavigationEvent:I

    if-ne v1, v2, :cond_0

    .line 86
    invoke-virtual {v0}, Lo/shouldLog;->onPostMessage()Lo/shouldLog;

    move-result-object v1

    iput-object v1, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 87
    invoke-static {v0}, Lo/getLeafType;->onMessageChannelReady(Lo/shouldLog;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/warn$4;->onMessageChannelReady:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
