.class final Lo/setImageResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private ICustomTabsCallback:I

.field final extraCallback:Ljava/nio/charset/Charset;

.field private onMessageChannelReady:[B

.field onNavigationEvent:I

.field private final onPostMessage:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lo/setImageResource;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 93
    sget-object p3, Lo/setImageBitmap;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    iput-object p1, p0, Lo/setImageResource;->onPostMessage:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Lo/setImageResource;->extraCallback:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 99
    iput-object p1, p0, Lo/setImageResource;->onMessageChannelReady:[B

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 88
    throw p1
.end method

.method private onPostMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lo/setImageResource;->onPostMessage:Ljava/io/InputStream;

    iget-object v1, p0, Lo/setImageResource;->onMessageChannelReady:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    iput v3, p0, Lo/setImageResource;->ICustomTabsCallback:I

    .line 193
    iput v0, p0, Lo/setImageResource;->onNavigationEvent:I

    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/setImageResource;->onPostMessage:Ljava/io/InputStream;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lo/setImageResource;->onMessageChannelReady:[B

    if-eqz v1, :cond_7

    .line 134
    iget v1, p0, Lo/setImageResource;->ICustomTabsCallback:I

    iget v2, p0, Lo/setImageResource;->onNavigationEvent:I

    if-lt v1, v2, :cond_0

    .line 135
    invoke-direct {p0}, Lo/setImageResource;->onPostMessage()V

    .line 138
    :cond_0
    iget v1, p0, Lo/setImageResource;->ICustomTabsCallback:I

    :goto_0
    iget v2, p0, Lo/setImageResource;->onNavigationEvent:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 139
    iget-object v2, p0, Lo/setImageResource;->onMessageChannelReady:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_2

    .line 140
    iget v2, p0, Lo/setImageResource;->ICustomTabsCallback:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lo/setImageResource;->onMessageChannelReady:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 141
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lo/setImageResource;->onMessageChannelReady:[B

    iget v5, p0, Lo/setImageResource;->ICustomTabsCallback:I

    sub-int/2addr v3, v5

    iget-object v6, p0, Lo/setImageResource;->extraCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Lo/setImageResource;->ICustomTabsCallback:I

    .line 143
    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_3
    new-instance v1, Lo/setImageResource$3;

    iget v2, p0, Lo/setImageResource;->onNavigationEvent:I

    iget v4, p0, Lo/setImageResource;->ICustomTabsCallback:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lo/setImageResource$3;-><init>(Lo/setImageResource;I)V

    .line 161
    :cond_4
    iget-object v2, p0, Lo/setImageResource;->onMessageChannelReady:[B

    iget v4, p0, Lo/setImageResource;->ICustomTabsCallback:I

    iget v5, p0, Lo/setImageResource;->onNavigationEvent:I

    iget v6, p0, Lo/setImageResource;->ICustomTabsCallback:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 163
    iput v2, p0, Lo/setImageResource;->onNavigationEvent:I

    .line 164
    invoke-direct {p0}, Lo/setImageResource;->onPostMessage()V

    .line 166
    iget v2, p0, Lo/setImageResource;->ICustomTabsCallback:I

    :goto_2
    iget v4, p0, Lo/setImageResource;->onNavigationEvent:I

    if-eq v2, v4, :cond_4

    .line 167
    iget-object v4, p0, Lo/setImageResource;->onMessageChannelReady:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_6

    .line 168
    iget v3, p0, Lo/setImageResource;->ICustomTabsCallback:I

    if-eq v2, v3, :cond_5

    .line 169
    iget-object v3, p0, Lo/setImageResource;->onMessageChannelReady:[B

    iget v4, p0, Lo/setImageResource;->ICustomTabsCallback:I

    sub-int v5, v2, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 171
    iput v2, p0, Lo/setImageResource;->ICustomTabsCallback:I

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 128
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 176
    monitor-exit v0

    throw v1
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/setImageResource;->onPostMessage:Ljava/io/InputStream;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lo/setImageResource;->onMessageChannelReady:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lo/setImageResource;->onMessageChannelReady:[B

    .line 112
    iget-object v1, p0, Lo/setImageResource;->onPostMessage:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
