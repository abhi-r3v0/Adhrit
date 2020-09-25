.class public final Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;
.super Lo/PaymentInstrumentRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/net/Uri;

.field private extraCallback:Ljava/io/InputStream;

.field private final onMessageChannelReady:Landroid/content/res/Resources;

.field private onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

.field private onPostMessage:J

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lo/PaymentInstrumentRequest;-><init>(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onMessageChannelReady:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    const-string v1, "rawresource"

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback(Lo/PaymentRequestJsonAdapter;)V

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onMessageChannelReady:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    .line 112
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    iget-wide v1, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 115
    iget-wide v2, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 120
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 121
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    goto :goto_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-wide v2, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    sub-long v2, v0, v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;)V

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    return-wide v0

    .line 118
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 107
    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "URI must use scheme rawresource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 149
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    .line 156
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 158
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 162
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 163
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage:J

    .line 165
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onPostMessage(I)V

    return p1

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final onMessageChannelReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    if-eqz v0, :cond_2

    .line 195
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 191
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    if-eqz v0, :cond_3

    .line 195
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback()V

    .line 198
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 183
    :try_start_3
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->extraCallback:Ljava/io/InputStream;

    .line 187
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 188
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    if-eqz v0, :cond_5

    .line 195
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback()V

    .line 199
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 191
    :try_start_5
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 193
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onNavigationEvent:Landroid/content/res/AssetFileDescriptor;

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    if-eqz v0, :cond_6

    .line 195
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->onTransact:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->ICustomTabsCallback()V

    .line 198
    :cond_6
    throw v2
.end method
