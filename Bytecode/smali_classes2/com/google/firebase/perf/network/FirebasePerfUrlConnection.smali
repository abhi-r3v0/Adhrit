.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Lo/aX;

    invoke-direct {v0, p0}, Lo/aX;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object p0

    new-instance v1, Lo/aY;

    invoke-direct {v1}, Lo/aY;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zzb(Lo/aX;Lo/deleteAllReports;Lo/aY;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Lo/aX;

    invoke-direct {v0, p0}, Lo/aX;-><init>(Ljava/net/URL;)V

    .line 24
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object p0

    new-instance v1, Lo/aY;

    invoke-direct {v1}, Lo/aY;-><init>()V

    .line 25
    invoke-static {v0, p1, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zza(Lo/aX;[Ljava/lang/Class;Lo/deleteAllReports;Lo/aY;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lo/oldestEventFileFirst;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lo/aY;

    invoke-direct {v1}, Lo/aY;-><init>()V

    .line 66
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v2

    invoke-static {v2}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lo/oldestEventFileFirst;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lo/aY;Lo/aN;)V

    return-object v0

    .line 68
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lo/makeDirectory;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lo/aY;

    invoke-direct {v1}, Lo/aY;-><init>()V

    .line 70
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v2

    invoke-static {v2}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lo/makeDirectory;-><init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lo/aX;

    invoke-direct {v0, p0}, Lo/aX;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object p0

    new-instance v1, Lo/aY;

    invoke-direct {v1}, Lo/aY;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zza(Lo/aX;Lo/deleteAllReports;Lo/aY;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lo/aX;Lo/deleteAllReports;Lo/aY;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lo/aY;->onPostMessage()V

    .line 4
    invoke-virtual {p2}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    .line 5
    invoke-static {p1}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lo/aX;->onMessageChannelReady()Ljava/net/URLConnection;

    move-result-object v2

    .line 7
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Lo/oldestEventFileFirst;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lo/oldestEventFileFirst;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lo/aY;Lo/aN;)V

    .line 9
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 12
    new-instance v3, Lo/makeDirectory;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lo/makeDirectory;-><init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V

    .line 13
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {p1, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 18
    invoke-virtual {p2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 20
    invoke-static {p1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 21
    throw v2
.end method

.method private static zza(Lo/aX;[Ljava/lang/Class;Lo/deleteAllReports;Lo/aY;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p3}, Lo/aY;->onPostMessage()V

    .line 46
    invoke-virtual {p3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    .line 47
    invoke-static {p2}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p2

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lo/aX;->onMessageChannelReady()Ljava/net/URLConnection;

    move-result-object v2

    .line 49
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Lo/oldestEventFileFirst;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lo/oldestEventFileFirst;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lo/aY;Lo/aN;)V

    .line 51
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 54
    new-instance v3, Lo/makeDirectory;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lo/makeDirectory;-><init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V

    .line 55
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p2, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 60
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 62
    invoke-static {p2}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 63
    throw p1
.end method

.method private static zzb(Lo/aX;Lo/deleteAllReports;Lo/aY;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Lo/aY;->onPostMessage()V

    .line 27
    invoke-virtual {p2}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    .line 28
    invoke-static {p1}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lo/aX;->onMessageChannelReady()Ljava/net/URLConnection;

    move-result-object v2

    .line 30
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 31
    new-instance v3, Lo/oldestEventFileFirst;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lo/oldestEventFileFirst;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lo/aY;Lo/aN;)V

    .line 32
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 35
    new-instance v3, Lo/makeDirectory;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lo/makeDirectory;-><init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V

    .line 36
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {p1, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 41
    invoke-virtual {p2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 43
    invoke-static {p1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 44
    throw v2
.end method
