.class public Lo/getInstallBeginTimestampServerSeconds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReferrerClickTimestampSeconds$onNavigationEvent;
.implements Lo/exceptionStacktrace;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/zip/Deflater;

.field private final extraCallback:Lo/filtersNodes;

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/setInflatedId;

.field private final onPostMessage:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/exceptionStacktrace;)V
    .locals 3

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->onPostMessage:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    .line 1058
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->ICustomTabsCallback:Ljava/util/zip/Deflater;

    .line 1059
    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    iput-object p1, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    .line 1060
    new-instance p1, Lo/setInflatedId;

    iget-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->ICustomTabsCallback:Ljava/util/zip/Deflater;

    invoke-direct {p1, v0, v1}, Lo/setInflatedId;-><init>(Lo/filtersNodes;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lo/getInstallBeginTimestampServerSeconds;->onNavigationEvent:Lo/setInflatedId;

    .line 1123
    iget-object p1, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object p1

    const/16 v0, 0x1f8b

    .line 1124
    invoke-virtual {p1, v0}, Lo/updatePriority;->ICustomTabsCallback(I)Lo/updatePriority;

    const/16 v0, 0x8

    .line 1125
    invoke-virtual {p1, v0}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    const/4 v0, 0x0

    .line 1126
    invoke-virtual {p1, v0}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1127
    invoke-virtual {p1, v0}, Lo/updatePriority;->onNavigationEvent(I)Lo/updatePriority;

    .line 1128
    invoke-virtual {p1, v0}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1129
    invoke-virtual {p1, v0}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void

    .line 1057
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Lo/updatePriority;J)V
    .locals 4

    .line 2139
    iget-object p1, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 2140
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    iget v1, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 2141
    iget-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->onPostMessage:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lo/shouldLog;->extraCallback:[B

    iget v3, p1, Lo/shouldLog;->ICustomTabsCallback:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 2139
    iget-object p1, p1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 2078
    iget-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2082
    iget-boolean v0, p0, Lo/getInstallBeginTimestampServerSeconds;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2091
    :try_start_0
    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->onNavigationEvent:Lo/setInflatedId;

    .line 2117
    iget-object v2, v1, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    const/4 v2, 0x0

    .line 2118
    invoke-virtual {v1, v2}, Lo/setInflatedId;->onNavigationEvent(Z)V

    .line 2133
    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    iget-object v2, p0, Lo/getInstallBeginTimestampServerSeconds;->onPostMessage:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lo/filtersNodes;->ICustomTabsCallback$Stub(I)Lo/filtersNodes;

    .line 2134
    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    iget-object v2, p0, Lo/getInstallBeginTimestampServerSeconds;->ICustomTabsCallback:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lo/filtersNodes;->ICustomTabsCallback$Stub(I)Lo/filtersNodes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2098
    :goto_0
    :try_start_1
    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->ICustomTabsCallback:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2104
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lo/getInstallBeginTimestampServerSeconds;->extraCallback:Lo/filtersNodes;

    invoke-interface {v1}, Lo/filtersNodes;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 2108
    iput-boolean v1, p0, Lo/getInstallBeginTimestampServerSeconds;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 2110
    invoke-static {v0}, Lo/getPriorityKey;->onMessageChannelReady(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->onNavigationEvent:Lo/setInflatedId;

    invoke-virtual {v0}, Lo/setInflatedId;->flush()V

    return-void
.end method

.method public onPostMessage(Lo/updatePriority;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    return-void

    .line 2069
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/getInstallBeginTimestampServerSeconds;->ICustomTabsCallback(Lo/updatePriority;J)V

    .line 2070
    iget-object v0, p0, Lo/getInstallBeginTimestampServerSeconds;->onNavigationEvent:Lo/setInflatedId;

    invoke-virtual {v0, p1, p2, p3}, Lo/setInflatedId;->onPostMessage(Lo/updatePriority;J)V

    return-void

    .line 2066
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
