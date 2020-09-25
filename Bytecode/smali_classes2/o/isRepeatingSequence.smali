.class public final Lo/isRepeatingSequence;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mixpanel/android/util/RemoteService;


# static fields
.field static extraCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 179
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/onPostMessage$extraCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    invoke-interface {p0}, Lo/onPostMessage$extraCallback;->onPostMessage()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MixpanelAPI.Message"

    const-string v2, "Client State should not throw exception, will assume is not on offline mode"

    .line 87
    invoke-static {v1, v2, p0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/isRepeatingSequence$4;

    invoke-direct {v1}, Lo/isRepeatingSequence$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onNavigationEvent(Landroid/content/Context;Lo/onPostMessage$extraCallback;)Z
    .locals 3

    const-string v0, "MixpanelAPI.Message"

    .line 58
    sget-boolean v1, Lo/isRepeatingSequence;->extraCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 59
    :cond_0
    invoke-static {p2}, Lo/isRepeatingSequence;->onMessageChannelReady(Lo/onPostMessage$extraCallback;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const/4 p2, 0x1

    :try_start_0
    const-string v1, "connectivity"

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 65
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "A default network has not been set so we cannot be certain whether we are offline"

    .line 68
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectivityManager says we "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v2, "are"

    goto :goto_0

    :cond_3
    const-string v2, "are not"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " online"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p1

    goto :goto_1

    :catch_0
    const-string p1, "Don\'t have permission to check connectivity, will assume we are online"

    .line 75
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p2
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempting request to "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MixpanelAPI.Message"

    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v6, 0x3

    if-ge v0, v6, :cond_d

    if-nez v4, :cond_d

    .line 112
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URLConnection;

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p3, :cond_1

    .line 114
    :try_start_1
    instance-of v7, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_1

    .line 115
    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, p3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    const/16 v7, 0x7d0

    .line 118
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x7530

    .line 119
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p2, :cond_3

    .line 121
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 122
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 128
    invoke-virtual {v6, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v8, "POST"

    .line 129
    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 131
    :try_start_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v10, "UTF-8"

    .line 132
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/OutputStream;->write([B)V

    .line 133
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 134
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v7, v3

    goto/16 :goto_7

    :catch_0
    move-exception p1

    move-object v7, v3

    goto :goto_4

    :catch_1
    move-object v7, v3

    goto/16 :goto_a

    :catchall_1
    move-exception p1

    move-object v7, v3

    goto/16 :goto_e

    :catch_2
    move-exception p1

    move-object v7, v3

    move-object v9, v7

    goto :goto_4

    :catch_3
    move-object v7, v3

    move-object v9, v7

    goto/16 :goto_a

    .line 139
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 140
    :try_start_6
    invoke-static {v7}, Lo/isRepeatingSequence;->extraCallback(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 141
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v6, :cond_4

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    move-object v8, v3

    goto/16 :goto_e

    :catch_4
    move-exception p1

    move-object v8, v3

    goto :goto_3

    :catch_5
    move-object v8, v3

    goto :goto_9

    :catchall_3
    move-exception p1

    move-object v7, v3

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v7, v3

    move-object v8, v7

    :goto_3
    move-object v9, v8

    :goto_4
    move-object v3, v6

    goto :goto_6

    :catch_7
    move-object v7, v3

    goto :goto_8

    :catchall_4
    move-exception p1

    move-object v6, v3

    move-object v7, v6

    :goto_5
    move-object v8, v7

    goto :goto_e

    :catch_8
    move-exception p1

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    .line 148
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0x1f4

    if-lt p2, p3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0x257

    if-gt p2, p3, :cond_5

    .line 149
    new-instance p1, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;

    const-string p2, "Service Unavailable"

    const-string p3, "Retry-After"

    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    move-object v6, v3

    :goto_7
    move-object v3, v9

    goto :goto_e

    :catch_9
    move-object v6, v3

    move-object v7, v6

    :goto_8
    move-object v8, v7

    :goto_9
    move-object v9, v8

    :goto_a
    :try_start_8
    const-string v10, "Failure to connect, likely caused by a known issue with Android lib. Retrying."

    .line 145
    invoke-static {v1, v10}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    add-int/lit8 v0, v0, 0x1

    if-eqz v9, :cond_6

    .line 156
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    nop

    :cond_6
    :goto_b
    if-eqz v8, :cond_7

    .line 158
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    nop

    :cond_7
    :goto_c
    if-eqz v7, :cond_8

    .line 160
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    nop

    :cond_8
    :goto_d
    if-eqz v6, :cond_0

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_6
    move-exception p1

    goto :goto_7

    :goto_e
    if-eqz v3, :cond_9

    .line 156
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    nop

    :cond_9
    :goto_f
    if-eqz v8, :cond_a

    .line 158
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_10

    :catch_e
    nop

    :cond_a
    :goto_10
    if-eqz v7, :cond_b

    .line 160
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    nop

    :cond_b
    :goto_11
    if-eqz v6, :cond_c

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    :cond_c
    throw p1

    :cond_d
    if-lt v0, v6, :cond_e

    const-string p1, "Could not connect to Mixpanel service after three retries."

    .line 166
    invoke-static {v1, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v5
.end method
