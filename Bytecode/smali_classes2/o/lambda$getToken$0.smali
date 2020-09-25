.class final Lo/lambda$getToken$0;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private ICustomTabsCallback:J

.field private final extraCallback:Ljava/io/InputStream;

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private onPostMessage:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lo/lambda$getToken$0;-><init>(Ljava/io/InputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lo/lambda$getToken$0;->ICustomTabsCallback:J

    .line 42
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, p2

    .line 45
    :cond_0
    iput-object p1, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    return-void
.end method

.method private extraCallback(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 109
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x1

    :cond_0
    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(J)V
    .locals 5

    .line 77
    :try_start_0
    iget-wide v0, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    iget-wide v2, p0, Lo/lambda$getToken$0;->onPostMessage:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    iget-wide v2, p0, Lo/lambda$getToken$0;->onMessageChannelReady:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 78
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 79
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    iget-wide v1, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 80
    iget-wide v0, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    iget-wide v2, p0, Lo/lambda$getToken$0;->onPostMessage:J

    invoke-direct {p0, v0, v1, v2, v3}, Lo/lambda$getToken$0;->extraCallback(JJ)V

    goto :goto_0

    .line 82
    :cond_0
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    iput-wide v0, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    .line 83
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    iget-wide v1, p0, Lo/lambda$getToken$0;->onPostMessage:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 85
    :goto_0
    iput-wide p1, p0, Lo/lambda$getToken$0;->onMessageChannelReady:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to mark: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    iget-wide v2, p0, Lo/lambda$getToken$0;->onMessageChannelReady:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 101
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 102
    iget-wide v0, p0, Lo/lambda$getToken$0;->onNavigationEvent:J

    invoke-direct {p0, v0, v1, p1, p2}, Lo/lambda$getToken$0;->extraCallback(JJ)V

    .line 103
    iput-wide p1, p0, Lo/lambda$getToken$0;->onPostMessage:J

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot reset"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 2

    .line 50
    invoke-virtual {p0, p1}, Lo/lambda$getToken$0;->onPostMessage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/lambda$getToken$0;->ICustomTabsCallback:J

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)J
    .locals 4

    .line 60
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 61
    iget-wide v2, p0, Lo/lambda$getToken$0;->onMessageChannelReady:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 62
    invoke-direct {p0, v0, v1}, Lo/lambda$getToken$0;->onMessageChannelReady(J)V

    .line 64
    :cond_0
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    return-wide v0
.end method

.method public final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 124
    iget-wide v1, p0, Lo/lambda$getToken$0;->onPostMessage:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/lambda$getToken$0;->onPostMessage:J

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 132
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    :cond_0
    return p1
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 140
    iget-wide p2, p0, Lo/lambda$getToken$0;->onPostMessage:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/lambda$getToken$0;->onPostMessage:J

    :cond_0
    return p1
.end method

.method public final reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lo/lambda$getToken$0;->ICustomTabsCallback:J

    invoke-virtual {p0, v0, v1}, Lo/lambda$getToken$0;->ICustomTabsCallback(J)V

    return-void
.end method

.method public final skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lo/lambda$getToken$0;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 147
    iget-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/lambda$getToken$0;->onPostMessage:J

    return-wide p1
.end method
