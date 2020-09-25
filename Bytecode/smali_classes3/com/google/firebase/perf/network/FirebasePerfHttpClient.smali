.class public Lcom/google/firebase/perf/network/FirebasePerfHttpClient;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v4, Lo/aY;

    invoke-direct {v4}, Lo/aY;-><init>()V

    .line 15
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v5, Lo/aY;

    invoke-direct {v5}, Lo/aY;-><init>()V

    .line 18
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    .line 5
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    .line 6
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v4, Lo/aY;

    invoke-direct {v4}, Lo/aY;-><init>()V

    .line 8
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v4, Lo/aY;

    invoke-direct {v4}, Lo/aY;-><init>()V

    .line 12
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lo/aY;",
            "Lo/deleteAllReports;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p5}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p5

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p5, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    .line 157
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 159
    invoke-static {p2}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 162
    :cond_1
    invoke-virtual {p4}, Lo/aY;->onPostMessage()V

    .line 163
    invoke-virtual {p4}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 164
    new-instance v0, Lo/getAllFilesInDirectory;

    invoke-direct {v0, p3, p4, p5}, Lo/getAllFilesInDirectory;-><init>(Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/aN;)V

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p4}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 167
    invoke-static {p5}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 168
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lo/aY;",
            "Lo/deleteAllReports;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p6}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p6

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p6, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    .line 172
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 174
    invoke-static {p2}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 177
    :cond_1
    invoke-virtual {p5}, Lo/aY;->onPostMessage()V

    .line 178
    invoke-virtual {p5}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 179
    new-instance v0, Lo/getAllFilesInDirectory;

    invoke-direct {v0, p3, p5, p6}, Lo/getAllFilesInDirectory;-><init>(Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/aN;)V

    invoke-interface {p0, p1, p2, v0, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p5}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p6, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 182
    invoke-static {p6}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 183
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lo/aY;",
            "Lo/deleteAllReports;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {p4}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p4

    .line 73
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 75
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 78
    :cond_0
    invoke-virtual {p3}, Lo/aY;->onPostMessage()V

    .line 79
    invoke-virtual {p3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 80
    new-instance v0, Lo/getAllFilesInDirectory;

    invoke-direct {v0, p2, p3, p4}, Lo/getAllFilesInDirectory;-><init>(Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/aN;)V

    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 83
    invoke-static {p4}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 84
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lo/aY;",
            "Lo/deleteAllReports;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {p5}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p5

    .line 86
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 88
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 91
    :cond_0
    invoke-virtual {p4}, Lo/aY;->onPostMessage()V

    .line 92
    invoke-virtual {p4}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 93
    new-instance v0, Lo/getAllFilesInDirectory;

    invoke-direct {v0, p2, p4, p5}, Lo/getAllFilesInDirectory;-><init>(Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/aN;)V

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p4}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 96
    invoke-static {p5}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 97
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {p4}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p4

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    .line 101
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 103
    invoke-static {p2}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 106
    :cond_1
    invoke-virtual {p3}, Lo/aY;->onPostMessage()V

    .line 107
    invoke-virtual {p3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 108
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 109
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 110
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 112
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->asBinder(J)Lo/aN;

    .line 116
    :cond_2
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p4, p1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 119
    :cond_3
    invoke-virtual {p4}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 123
    invoke-static {p4}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 124
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-static {p5}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p5

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p5, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    .line 129
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 131
    invoke-static {p2}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 134
    :cond_1
    invoke-virtual {p4}, Lo/aY;->onPostMessage()V

    .line 135
    invoke-virtual {p4}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 136
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 137
    invoke-virtual {p4}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 138
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p5, p1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 140
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lo/aN;->asBinder(J)Lo/aN;

    .line 144
    :cond_2
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p5, p1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 147
    :cond_3
    invoke-virtual {p5}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p4}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 151
    invoke-static {p5}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 152
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {p3}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p3

    .line 21
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 23
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 26
    :cond_0
    invoke-virtual {p2}, Lo/aY;->onPostMessage()V

    .line 27
    invoke-virtual {p2}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 28
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 29
    invoke-virtual {p2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 30
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p3, p1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 32
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lo/aN;->asBinder(J)Lo/aN;

    .line 36
    :cond_1
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p3, p1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 39
    :cond_2
    invoke-virtual {p3}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p2}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 43
    invoke-static {p3}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 44
    throw p0
.end method

.method private static zza(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lo/aY;Lo/deleteAllReports;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p4}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p4

    .line 47
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 49
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 52
    :cond_0
    invoke-virtual {p3}, Lo/aY;->onPostMessage()V

    .line 53
    invoke-virtual {p3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 54
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 55
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 56
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 58
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->asBinder(J)Lo/aN;

    .line 62
    :cond_1
    invoke-static {p0}, Lo/extraCallback;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p4, p1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 65
    :cond_2
    invoke-virtual {p4}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 69
    invoke-static {p4}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 70
    throw p0
.end method
