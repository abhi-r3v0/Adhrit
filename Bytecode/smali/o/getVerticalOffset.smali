.class public final Lo/getVerticalOffset;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private onMessageChannelReady:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, -0x80000000

    .line 16
    iput p1, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    return-void
.end method

.method private ICustomTabsCallback(J)J
    .locals 4

    .line 77
    iget v0, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    int-to-long p1, v0

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 72
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0

    .line 73
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 25
    iput p1, p0, Lo/getVerticalOffset;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 30
    invoke-direct {p0, v0, v1}, Lo/getVerticalOffset;->ICustomTabsCallback(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v0, -0x1

    return v0

    .line 34
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    .line 1087
    iget v3, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    int-to-long v3, v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 1089
    iput v0, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    :cond_1
    return v2
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 41
    invoke-direct {p0, v0, v1}, Lo/getVerticalOffset;->ICustomTabsCallback(J)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 2087
    iget v0, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-eqz v3, :cond_1

    int-to-long v0, v0

    sub-long/2addr v0, p2

    long-to-int p2, v0

    .line 2089
    iput p2, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    :cond_1
    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    .line 54
    iput v0, p0, Lo/getVerticalOffset;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lo/getVerticalOffset;->ICustomTabsCallback(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 3087
    iget v2, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    cmp-long v3, p1, v0

    if-eqz v3, :cond_1

    int-to-long v0, v2

    sub-long/2addr v0, p1

    long-to-int v1, v0

    .line 3089
    iput v1, p0, Lo/getVerticalOffset;->onMessageChannelReady:I

    :cond_1
    return-wide p1
.end method
