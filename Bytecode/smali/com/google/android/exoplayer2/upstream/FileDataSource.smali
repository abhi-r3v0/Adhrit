.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource;
.super Lo/PaymentInstrumentRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/net/Uri;

.field private extraCallback:J

.field private onMessageChannelReady:Ljava/io/RandomAccessFile;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lo/PaymentInstrumentRequest;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback(Lo/PaymentRequestJsonAdapter;)V

    .line 65
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    .line 66
    iget-wide v1, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage:Z

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;)V

    .line 79
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback:J

    return-wide v0

    .line 70
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    .line 91
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    .line 97
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->extraCallback:J

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final onMessageChannelReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 122
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage:Z

    .line 123
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->ICustomTabsCallback()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 118
    :try_start_1
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onMessageChannelReady:Ljava/io/RandomAccessFile;

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage:Z

    if-eqz v0, :cond_2

    .line 122
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->onPostMessage:Z

    .line 123
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->ICustomTabsCallback()V

    .line 125
    :cond_2
    throw v2
.end method
