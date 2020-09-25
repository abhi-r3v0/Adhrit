.class public Lcom/axis/axismerchantsdk/analytics/RestClient;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/axis/axismerchantsdk/model/ApiResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "POST"

    .line 129
    invoke-static {p0, p2, v1}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 130
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 133
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 134
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onNavigationEvent(Ljava/net/HttpURLConnection;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4036
    :try_start_1
    new-instance p1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>()V

    const/4 p2, -0x1

    .line 5025
    iput p2, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 4038
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 5033
    iput-object p0, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    :cond_2
    throw p0
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/axis/axismerchantsdk/model/ApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {p0, p1}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method private static extraCallback([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 191
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 194
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "?"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "&"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/axis/axismerchantsdk/util/TLSSocketFactory;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/util/TLSSocketFactory;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 46
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x7530

    .line 54
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0xea60

    .line 55
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    .line 67
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Only HTTPS connection is allowed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 4

    const/4 v0, 0x0

    .line 154
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 155
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 156
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "POST"

    .line 157
    invoke-static {p0, v1, v2}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 158
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v1, "UTF-8"

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 5206
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5207
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5208
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5209
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 5210
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 5211
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 161
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 162
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onNavigationEvent(Ljava/net/HttpURLConnection;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6036
    :try_start_1
    new-instance p1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>()V

    const/4 v1, -0x1

    .line 7025
    iput v1, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 6038
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 7033
    iput-object p0, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    :cond_2
    throw p0
.end method

.method private static onNavigationEvent(Ljava/net/HttpURLConnection;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_3

    .line 77
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 1175
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 1178
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    .line 1179
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1182
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v2, "Content-Encoding"

    .line 1215
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v2, "gzip"

    .line 1216
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    .line 81
    invoke-static {p0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->extraCallback([B)[B

    move-result-object p0

    .line 83
    :cond_2
    new-instance v0, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {v0, v1, p0}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>(I[B)V

    return-object v0

    .line 86
    :cond_3
    new-instance p0, Lcom/axis/axismerchantsdk/model/ApiResponse;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>(I[B)V

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/axis/axismerchantsdk/model/ApiResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GET"

    .line 102
    invoke-static {p0, p1, v1}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onNavigationEvent(Ljava/net/HttpURLConnection;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3036
    :try_start_1
    new-instance p1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>()V

    const/4 v1, -0x1

    .line 4025
    iput v1, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 3038
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 4033
    iput-object p0, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    :cond_2
    throw p0
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/axis/axismerchantsdk/model/ApiResponse;"
        }
    .end annotation

    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onMessageChannelReady(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2036
    new-instance p1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>()V

    const/4 p2, -0x1

    .line 3025
    iput p2, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 2038
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 3033
    iput-object p0, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    return-object p1
.end method
