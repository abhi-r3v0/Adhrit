.class public Lcom/freshchat/consumer/sdk/j/a/g;
.super Lcom/freshchat/consumer/sdk/j/a/e;


# static fields
.field private static jW:Lcom/freshchat/consumer/sdk/j/a/b; = null

.field private static jX:Ljava/io/File; = null

.field private static jY:Z = true

.field private static final jZ:Ljava/lang/Object;

.field private static lv:Lcom/freshchat/consumer/sdk/j/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/e;-><init>(Landroid/content/Context;I)V

    sget-object p2, Lcom/freshchat/consumer/sdk/j/a/g;->lv:Lcom/freshchat/consumer/sdk/j/a/g;

    if-nez p2, :cond_1

    const-class p2, Lcom/freshchat/consumer/sdk/j/a/g;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->lv:Lcom/freshchat/consumer/sdk/j/a/g;

    if-nez v0, :cond_0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/a/g;->lv:Lcom/freshchat/consumer/sdk/j/a/g;

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/g;->d(Landroid/content/Context;)V

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_1
    return-void
.end method

.method private aW(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBitmap - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageFetcher"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/d;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    monitor-enter v1

    :catch_0
    :goto_0
    :try_start_0
    sget-boolean v2, Lcom/freshchat/consumer/sdk/j/a/g;->jY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_3
    sget-object v5, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v5, v0}, Lcom/freshchat/consumer/sdk/j/a/b;->aP(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$c;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "ImageFetcher"

    const-string v6, "processBitmap, not found in http cache, downloading..."

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v5, v0}, Lcom/freshchat/consumer/sdk/j/a/b;->aQ(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/freshchat/consumer/sdk/j/a/b$a;->w(I)Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/freshchat/consumer/sdk/j/a/g;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/j/a/b$a;->commit()V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/j/a/b$a;->abort()V

    :cond_2
    :goto_1
    sget-object p1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/j/a/b;->aP(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$c;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Lcom/freshchat/consumer/sdk/j/a/b$c;->z(I)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v5, p0, Lcom/freshchat/consumer/sdk/j/a/e;->ka:I

    iget v6, p0, Lcom/freshchat/consumer/sdk/j/a/e;->kb:I

    invoke-static {v0, v5, v6}, Lcom/freshchat/consumer/sdk/j/a/g;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_4

    :cond_5
    move-object p1, v3

    :goto_2
    :try_start_5
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, p1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v0, v3

    :goto_3
    :try_start_6
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v0, v3

    :goto_4
    :try_start_8
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v3, v0

    :goto_5
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    throw p1

    :cond_6
    :goto_6
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object v3

    :catchall_3
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private bi(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_not_connected_to_internet:I

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/g;->bi(Landroid/content/Context;)V

    const-string v0, "http"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/a/d;->y(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sput-object p1, Lcom/freshchat/consumer/sdk/j/a/g;->jX:Ljava/io/File;

    return-void
.end method

.method private fn()V
    .locals 6

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jX:Ljava/io/File;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/d;->d(Ljava/io/File;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0xa00000

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jX:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Ljava/io/File;IIJ)Lcom/freshchat/consumer/sdk/j/a/b;

    move-result-object v1

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    const-string v1, "ImageFetcher"

    const-string v2, "HTTP cache initialized"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/freshchat/consumer/sdk/j/a/g;->jY:Z

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fo()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/a/g;->fo()V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, p2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    invoke-virtual {v6, p2}, Ljava/io/OutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    instance-of p1, v4, Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_2

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v5, p1, v1

    aput-object v6, p1, v3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v6, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v5, v2

    move-object v6, v5

    :goto_1
    move-object v2, v4

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v5, v2

    move-object v6, v5

    :goto_2
    move-object v2, v4

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v5, v2

    move-object v6, v5

    goto :goto_4

    :catch_3
    move-exception p2

    move-object v5, v2

    move-object v6, v5

    :goto_3
    :try_start_4
    const-string v4, "FRESHCHAT"

    const-string v7, "Failed to load URL "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_3

    instance-of p1, v2, Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v5, p1, v1

    aput-object v6, p1, v3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return v1

    :catchall_4
    move-exception p1

    :goto_4
    if-eqz v2, :cond_4

    instance-of p2, v2, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_4

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v5, p2, v1

    aput-object v6, p2, v3

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    throw p1
.end method

.method protected d(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/g;->aW(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected fp()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/j/a/e;->fp()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/g;->fn()V

    return-void
.end method

.method protected fr()V
    .locals 3

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/j/a/e;->fr()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->delete()V

    const-string v1, "ImageFetcher"

    const-string v2, "HTTP cache cleared"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/freshchat/consumer/sdk/j/a/g;->jY:Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/g;->fn()V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected fs()V
    .locals 3

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/j/a/e;->fs()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->flush()V

    const-string v1, "ImageFetcher"

    const-string v2, "HTTP cache flushed"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected ft()V
    .locals 3

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/j/a/e;->ft()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/g;->jZ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->close()V

    const/4 v1, 0x0

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/g;->jW:Lcom/freshchat/consumer/sdk/j/a/b;

    const-string v1, "ImageFetcher"

    const-string v2, "HTTP cache closed"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
