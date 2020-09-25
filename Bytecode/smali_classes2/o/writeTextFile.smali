.class final Lo/writeTextFile;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzai:Lo/b$b;

.field private final zzgo:Lo/aY;

.field private final zzgv:Lo/aN;

.field private zzgy:J

.field private final zzhd:Ljava/net/HttpURLConnection;

.field private zzhe:J


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lo/writeTextFile;->zzhe:J

    .line 3
    iput-wide v0, p0, Lo/writeTextFile;->zzgy:J

    .line 4
    iput-object p1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    .line 5
    iput-object p3, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    .line 6
    iput-object p2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    .line 7
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/writeTextFile;->zzai:Lo/b$b;

    .line 8
    iget-object p1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object p2, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    return-void
.end method

.method private final zzda()V
    .locals 5

    .line 190
    iget-wide v0, p0, Lo/writeTextFile;->zzhe:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 191
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onPostMessage()V

    .line 192
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/writeTextFile;->zzhe:J

    .line 193
    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v2, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 195
    :cond_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v1, v0}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-wide v0, p0, Lo/writeTextFile;->zzhe:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 11
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onPostMessage()V

    .line 12
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/writeTextFile;->zzhe:J

    .line 13
    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v2, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 18
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 19
    throw v0
.end method

.method public final disconnect()V
    .locals 3

    .line 20
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 21
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    .line 22
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 138
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 25
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 26
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 34
    new-instance v1, Lo/generateEventFilename;

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v3, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-direct {v1, v0, v2, v3}, Lo/generateEventFilename;-><init>(Ljava/io/InputStream;Lo/aN;Lo/aY;)V

    move-object v0, v1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 36
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->asBinder(J)Lo/aN;

    .line 37
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 38
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v1}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 29
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 30
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 31
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 41
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 42
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 50
    new-instance v0, Lo/generateEventFilename;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-direct {v0, p1, v1, v2}, Lo/generateEventFilename;-><init>(Ljava/io/InputStream;Lo/aN;Lo/aY;)V

    move-object p1, v0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 52
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->asBinder(J)Lo/aN;

    .line 53
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 54
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 45
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 46
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v0}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 47
    throw p1
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 125
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 126
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 127
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentLengthLong()J
    .locals 2

    .line 128
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 129
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 131
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 132
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 133
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .line 142
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(I)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    iget-object v0, p0, Lo/writeTextFile;->zzai:Lo/b$b;

    const-string v1, "IOException thrown trying to obtain the response code"

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lo/generateEventFilename;

    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v3, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-direct {v1, v0, v2, v3}, Lo/generateEventFilename;-><init>(Ljava/io/InputStream;Lo/aN;Lo/aY;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .line 100
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 101
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 103
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 104
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 107
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 109
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 110
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 112
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 113
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 118
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 119
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 115
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 116
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 122
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .line 151
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 57
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 58
    iget-object v0, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 59
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 60
    new-instance v1, Lo/generateEventFilename;

    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v3, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-direct {v1, v0, v2, v3}, Lo/generateEventFilename;-><init>(Ljava/io/InputStream;Lo/aN;Lo/aY;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 63
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 64
    throw v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .line 65
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 66
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Lo/isNormalPriorityEventFile;

    iget-object v1, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v3, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-direct {v0, v1, v2, v3}, Lo/isNormalPriorityEventFile;-><init>(Ljava/io/OutputStream;Lo/aN;Lo/aY;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 71
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 72
    throw v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 76
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 77
    throw v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 153
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 79
    iget-wide v0, p0, Lo/writeTextFile;->zzgy:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 80
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    iput-wide v0, p0, Lo/writeTextFile;->zzgy:J

    .line 81
    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v2, v0, v1}, Lo/aN;->ICustomTabsCallback(J)Lo/aN;

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 83
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v1, v0}, Lo/aN;->onPostMessage(I)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 87
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 88
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lo/writeTextFile;->zzda()V

    .line 90
    iget-wide v0, p0, Lo/writeTextFile;->zzgy:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 91
    iget-object v0, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    iput-wide v0, p0, Lo/writeTextFile;->zzgy:J

    .line 92
    iget-object v2, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-virtual {v2, v0, v1}, Lo/aN;->ICustomTabsCallback(J)Lo/aN;

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/aN;->onPostMessage(I)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/writeTextFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 98
    iget-object v1, p0, Lo/writeTextFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 99
    throw v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 159
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 1

    .line 174
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lo/writeTextFile;->zzhd:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
