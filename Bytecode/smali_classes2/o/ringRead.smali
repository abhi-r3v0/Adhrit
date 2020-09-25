.class public Lo/ringRead;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ringRead$extraCallback;
    }
.end annotation


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final SSL_HANDSHAKE_TIMEOUT_MS:I = 0xea60

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static intializer:Lo/readElement;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final clientId:I

.field private eventHandler:Lo/remainingBytes;

.field private final handshake:Lo/ringWrite;

.field private final innerThread:Ljava/lang/Thread;

.field private final logger:Lo/FileLogStore;

.field private final receiver:Lo/expandIfNecessary;

.field private volatile socket:Ljava/net/Socket;

.field private final sslCacheDirectory:Ljava/lang/String;

.field private volatile state:Lo/ringRead$extraCallback;

.field private final url:Ljava/net/URI;

.field private final writer:Lo/setLength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lo/ringRead;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "UTF-8"

    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/ringRead;->UTF8:Ljava/nio/charset/Charset;

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lo/ringRead;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 85
    new-instance v0, Lo/ringRead$2;

    invoke-direct {v0}, Lo/ringRead$2;-><init>()V

    sput-object v0, Lo/ringRead;->intializer:Lo/readElement;

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lo/ringRead;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, v0}, Lo/ringRead;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCrashlyticsDataCollectionEnabled;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lo/ringRead$extraCallback;->NONE:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;

    .line 72
    iput-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    .line 81
    sget-object v0, Lo/ringRead;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lo/ringRead;->clientId:I

    .line 138
    invoke-static {}, Lo/ringRead;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lo/ringRead$1;

    invoke-direct {v1, p0}, Lo/ringRead$1;-><init>(Lo/ringRead;)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lo/ringRead;->innerThread:Ljava/lang/Thread;

    .line 146
    iput-object p2, p0, Lo/ringRead;->url:Ljava/net/URI;

    .line 147
    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getSslCacheDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ringRead;->sslCacheDirectory:Ljava/lang/String;

    .line 148
    new-instance v0, Lo/FileLogStore;

    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getLogger()Lo/deleteLogFile;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sk_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/ringRead;->clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocket"

    invoke-direct {v0, p1, v2, v1}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ringRead;->logger:Lo/FileLogStore;

    .line 149
    new-instance p1, Lo/ringWrite;

    invoke-direct {p1, p2, p3, p4}, Lo/ringWrite;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lo/ringRead;->handshake:Lo/ringWrite;

    .line 150
    new-instance p1, Lo/expandIfNecessary;

    invoke-direct {p1, p0}, Lo/expandIfNecessary;-><init>(Lo/ringRead;)V

    iput-object p1, p0, Lo/ringRead;->receiver:Lo/expandIfNecessary;

    .line 151
    new-instance p1, Lo/setLength;

    iget p2, p0, Lo/ringRead;->clientId:I

    const-string p3, "TubeSock"

    invoke-direct {p1, p0, p3, p2}, Lo/setLength;-><init>(Lo/ringRead;Ljava/lang/String;I)V

    iput-object p1, p0, Lo/ringRead;->writer:Lo/setLength;

    return-void
.end method

.method static synthetic access$000(Lo/ringRead;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lo/ringRead;->runReader()V

    return-void
.end method

.method private declared-synchronized closeSocket()V
    .locals 2

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    sget-object v1, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 257
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ringRead;->receiver:Lo/expandIfNecessary;

    invoke-virtual {v0}, Lo/expandIfNecessary;->stopit()V

    .line 260
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v0}, Lo/setLength;->stopIt()V

    .line 261
    iget-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 263
    :try_start_2
    iget-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 265
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 268
    :cond_1
    :goto_0
    sget-object v0, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    .line 270
    iget-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    invoke-interface {v0}, Lo/remainingBytes;->onClose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 8

    .line 286
    iget-object v0, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const-string v3, "unknown host: "

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    const-string v5, "ws"

    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, v4, :cond_0

    const/16 v2, 0x50

    .line 297
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error while creating socket to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 299
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    if-eqz v0, :cond_5

    const-string v5, "wss"

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v2, v4, :cond_2

    const/16 v2, 0x1bb

    :cond_2
    const/4 v0, 0x0

    .line 309
    :try_start_1
    iget-object v4, p0, Lo/ringRead;->sslCacheDirectory:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 310
    new-instance v4, Landroid/net/SSLSessionCache;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lo/ringRead;->sslCacheDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/net/SSLSessionCache;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v4

    goto :goto_0

    :catch_2
    move-exception v4

    .line 313
    iget-object v5, p0, Lo/ringRead;->logger:Lo/FileLogStore;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Failed to initialize SSL session cache"

    invoke-virtual {v5, v7, v4, v6}, Lo/FileLogStore;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const v4, 0xea60

    .line 318
    :try_start_2
    invoke-static {v4, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 323
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 324
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 326
    invoke-interface {v2, v1, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-object v0

    .line 327
    :cond_4
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error while verifying secure socket to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v0

    .line 334
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error while creating secure socket to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/ringRead;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 332
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 337
    :cond_5
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unsupported protocol: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getIntializer()Lo/readElement;
    .locals 1

    .line 98
    sget-object v0, Lo/ringRead;->intializer:Lo/readElement;

    return-object v0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 94
    sget-object v0, Lo/ringRead;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private runReader()V
    .locals 11

    .line 360
    :try_start_0
    invoke-direct {p0}, Lo/ringRead;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 361
    monitor-enter p0
    :try_end_0
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    iput-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;

    .line 363
    iget-object v1, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    sget-object v2, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_0

    .line 367
    :try_start_2
    iget-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 371
    :try_start_3
    iput-object v0, p0, Lo/ringRead;->socket:Ljava/net/Socket;

    .line 372
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    invoke-virtual {p0}, Lo/ringRead;->close()V

    return-void

    :catch_0
    move-exception v0

    .line 369
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    :cond_0
    :try_start_5
    monitor-exit p0

    .line 376
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lo/ringRead;->handshake:Lo/ringWrite;

    invoke-virtual {v2}, Lo/ringWrite;->getHandshake()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0x3e8

    new-array v3, v2, [B

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-nez v6, :cond_5

    .line 388
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    int-to-byte v9, v9

    .line 392
    aput-byte v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v7, -0x1

    .line 395
    aget-byte v9, v3, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2

    add-int/lit8 v9, v7, -0x2

    aget-byte v9, v3, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 396
    new-instance v7, Ljava/lang/String;

    sget-object v9, Lo/ringRead;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 397
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .line 400
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_2
    new-array v3, v2, [B

    goto :goto_0

    :cond_2
    if-eq v7, v2, :cond_3

    goto :goto_1

    .line 407
    :cond_3
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/ringRead;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 408
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Unexpected long line in handshake: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_4
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Connection closed before handshake was complete"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_5
    iget-object v2, p0, Lo/ringRead;->handshake:Lo/ringWrite;

    invoke-virtual {v4, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/ringWrite;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v4, v5}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 415
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 416
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ": "

    const/4 v7, 0x2

    .line 417
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 418
    aget-object v6, v4, v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 419
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v8

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual {v2, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 421
    :cond_6
    iget-object v3, p0, Lo/ringRead;->handshake:Lo/ringWrite;

    invoke-virtual {v3, v2}, Lo/ringWrite;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 423
    iget-object v2, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v2, v0}, Lo/setLength;->setOutput(Ljava/io/OutputStream;)V

    .line 424
    iget-object v0, p0, Lo/ringRead;->receiver:Lo/expandIfNecessary;

    invoke-virtual {v0, v1}, Lo/expandIfNecessary;->setInput(Ljava/io/DataInputStream;)V

    .line 425
    sget-object v0, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    .line 426
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v0}, Lo/setLength;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 427
    iget-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    invoke-interface {v0}, Lo/remainingBytes;->onOpen()V

    .line 428
    iget-object v0, p0, Lo/ringRead;->receiver:Lo/expandIfNecessary;

    invoke-virtual {v0}, Lo/expandIfNecessary;->run()V
    :try_end_5
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 434
    invoke-virtual {p0}, Lo/ringRead;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 374
    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 432
    :try_start_7
    iget-object v1, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error while connecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 434
    invoke-virtual {p0}, Lo/ringRead;->close()V

    return-void

    :catch_1
    move-exception v0

    .line 430
    :try_start_8
    iget-object v1, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    invoke-interface {v1, v0}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 434
    invoke-virtual {p0}, Lo/ringRead;->close()V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lo/ringRead;->close()V

    .line 435
    throw v0
.end method

.method private declared-synchronized send(B[B)V
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    sget-object v1, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    if-eq v0, v1, :cond_0

    .line 207
    iget-object p1, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    new-instance p2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v0, "error while sending data: not connected"

    invoke-direct {p2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lo/setLength;->send(BZ[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 212
    :try_start_2
    iget-object p2, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Failed to send frame"

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 213
    invoke-virtual {p0}, Lo/ringRead;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendCloseHandshake()V
    .locals 4

    .line 275
    :try_start_0
    sget-object v0, Lo/ringRead$extraCallback;->DISCONNECTING:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    .line 278
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v0}, Lo/setLength;->stopIt()V

    .line 279
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Lo/setLength;->send(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 281
    iget-object v1, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    return-void
.end method

.method public static setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lo/readElement;)V
    .locals 0

    .line 102
    sput-object p0, Lo/ringRead;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 103
    sput-object p1, Lo/ringRead;->intializer:Lo/readElement;

    return-void
.end method


# virtual methods
.method public blockClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v0}, Lo/setLength;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lo/ringRead;->writer:Lo/setLength;

    invoke-virtual {v0}, Lo/setLength;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lo/ringRead;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    sget-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    iget-object v1, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :cond_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    monitor-exit p0

    return-void

    .line 242
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lo/ringRead;->sendCloseHandshake()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 237
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lo/ringRead;->closeSocket()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 233
    :cond_4
    :try_start_3
    sget-object v0, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()V
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    sget-object v1, Lo/ringRead$extraCallback;->NONE:Lo/ringRead$extraCallback;

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 174
    invoke-virtual {p0}, Lo/ringRead;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-static {}, Lo/ringRead;->getIntializer()Lo/readElement;

    move-result-object v0

    invoke-virtual {p0}, Lo/ringRead;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TubeSockReader-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lo/ringRead;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/readElement;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lo/ringRead$extraCallback;->CONNECTING:Lo/ringRead$extraCallback;

    iput-object v0, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    .line 179
    invoke-virtual {p0}, Lo/ringRead;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventHandler()Lo/remainingBytes;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    return-object v0
.end method

.method getInnerThread()Ljava/lang/Thread;
    .locals 1

    .line 439
    iget-object v0, p0, Lo/ringRead;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    invoke-interface {v0, p1}, Lo/remainingBytes;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 220
    iget-object p1, p0, Lo/ringRead;->state:Lo/ringRead$extraCallback;

    sget-object v0, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    if-ne p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lo/ringRead;->close()V

    .line 223
    :cond_0
    invoke-direct {p0}, Lo/ringRead;->closeSocket()V

    return-void
.end method

.method onCloseOpReceived()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lo/ringRead;->closeSocket()V

    return-void
.end method

.method declared-synchronized pong([B)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    .line 201
    :try_start_0
    invoke-direct {p0, v0, p1}, Lo/ringRead;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 188
    :try_start_0
    sget-object v1, Lo/ringRead;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/ringRead;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send([B)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 197
    :try_start_0
    invoke-direct {p0, v0, p1}, Lo/ringRead;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEventHandler(Lo/remainingBytes;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/ringRead;->eventHandler:Lo/remainingBytes;

    return-void
.end method
