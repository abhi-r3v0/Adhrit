.class final Lo/sendSensitive$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendSensitive;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/sendSensitive;

.field private synthetic extraCallback:Lo/handleTimestamp;

.field private synthetic onNavigationEvent:Lo/handleNewFrameCount;

.field private synthetic onPostMessage:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lo/sendSensitive;Ljava/util/concurrent/CountDownLatch;Lo/handleTimestamp;Lo/handleNewFrameCount;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iput-object p2, p0, Lo/sendSensitive$2;->onPostMessage:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lo/sendSensitive$2;->extraCallback:Lo/handleTimestamp;

    iput-object p4, p0, Lo/sendSensitive$2;->onNavigationEvent:Lo/handleNewFrameCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 531
    :try_start_0
    iget-object v0, p0, Lo/sendSensitive$2;->onPostMessage:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 536
    :goto_0
    new-instance v0, Lo/sendSensitive$2$1;

    invoke-direct {v0}, Lo/sendSensitive$2$1;-><init>()V

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 554
    :try_start_1
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v3, v3, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    if-nez v3, :cond_0

    .line 555
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v3}, Lo/sendSensitive;->ICustomTabsCallback$Stub(Lo/sendSensitive;)Ljavax/net/SocketFactory;

    move-result-object v3

    iget-object v4, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v4}, Lo/sendSensitive;->asBinder(Lo/sendSensitive;)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v5}, Lo/sendSensitive;->asBinder(Lo/sendSensitive;)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    :goto_1
    move-object v6, v3

    goto :goto_2

    .line 557
    :cond_0
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v3, v3, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 1081
    iget-object v3, v3, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    .line 557
    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_a

    .line 558
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v4, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v4, v4, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 1088
    iget-object v4, v4, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    .line 559
    iget-object v5, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v5, v5, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 2081
    iget-object v5, v5, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    .line 560
    check-cast v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v6, v6, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 3074
    iget-object v6, v6, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    .line 561
    iget-object v7, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v7, v7, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 4066
    iget-object v7, v7, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    .line 558
    invoke-static {v3, v4, v5, v6, v7}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    .line 570
    :goto_2
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v3}, Lo/sendSensitive;->onRelationshipValidationResult(Lo/sendSensitive;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 571
    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    .line 572
    invoke-static {v1}, Lo/sendSensitive;->onRelationshipValidationResult(Lo/sendSensitive;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->asInterface(Lo/sendSensitive;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    .line 4767
    iget-object v3, v1, Lo/sendSensitive;->onPostMessage:Ljava/lang/String;

    invoke-static {v3}, Lo/getAuthTokenProvider;->extraCallback(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 4768
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4769
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 4772
    :cond_1
    iget-object v1, v1, Lo/sendSensitive;->onPostMessage:Ljava/lang/String;

    :goto_3
    move-object v7, v1

    .line 572
    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    .line 4777
    iget-object v3, v1, Lo/sendSensitive;->onPostMessage:Ljava/lang/String;

    invoke-static {v3}, Lo/getAuthTokenProvider;->extraCallback(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 4778
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 4779
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v1

    goto :goto_4

    .line 4782
    :cond_2
    iget-object v1, v1, Lo/sendSensitive;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    :goto_4
    move v8, v1

    .line 572
    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    .line 573
    invoke-static {v1}, Lo/sendSensitive;->newSession(Lo/sendSensitive;)Lo/access$1302;

    move-result-object v9

    .line 571
    invoke-static/range {v4 .. v9}, Lo/access$1602;->onMessageChannelReady(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILo/access$1302;)Ljavax/net/ssl/SSLSocket;

    move-result-object v6

    .line 574
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    :cond_3
    const/4 v3, 0x1

    .line 577
    invoke-virtual {v6, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 578
    invoke-static {v6}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object v4

    invoke-static {v4}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    .line 579
    iget-object v4, p0, Lo/sendSensitive$2;->extraCallback:Lo/handleTimestamp;

    invoke-static {v6}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object v5

    .line 5072
    iget-object v7, v4, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    const-string v7, "AsyncSink\'s becomeConnected should only be called once."

    if-eqz v3, :cond_9

    .line 5073
    check-cast v5, Lo/exceptionStacktrace;

    iput-object v5, v4, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    const-string v3, "socket"

    if-eqz v6, :cond_8

    .line 5074
    move-object v3, v6

    check-cast v3, Ljava/net/Socket;

    iput-object v3, v4, Lo/handleTimestamp;->asInterface:Ljava/net/Socket;

    .line 582
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v4, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v4}, Lo/sendSensitive;->ICustomTabsCallback$Stub$Proxy(Lo/sendSensitive;)Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v4

    .line 7108
    new-instance v5, Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    invoke-direct {v5, v4, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;B)V

    .line 582
    sget-object v4, Lo/removeNested;->extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 583
    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v4

    sget-object v5, Lo/removeNested;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 584
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v4

    sget-object v5, Lo/removeNested;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 585
    invoke-virtual {v4, v5, v1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v4

    sget-object v5, Lo/getClientSdkVersion;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    if-nez v1, :cond_5

    .line 587
    sget-object v7, Lo/findKey;->onPostMessage:Lo/findKey;

    goto :goto_6

    :cond_5
    sget-object v7, Lo/findKey;->onMessageChannelReady:Lo/findKey;

    .line 586
    :goto_6
    invoke-virtual {v4, v5, v7}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v4

    .line 588
    invoke-virtual {v4}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v4

    .line 582
    invoke-static {v3, v4}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;Lo/serverCacheEstimatedSizeInBytes;)Lo/serverCacheEstimatedSizeInBytes;
    :try_end_1
    .catch Lio/grpc/StatusException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 596
    iget-object v2, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    new-instance v3, Lo/sendSensitive$onMessageChannelReady;

    iget-object v4, p0, Lo/sendSensitive$2;->onNavigationEvent:Lo/handleNewFrameCount;

    invoke-interface {v4, v0}, Lo/handleNewFrameCount;->onMessageChannelReady(Lo/fullLimitUpdateChild;)Lo/getOptInclusiveEnd;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;)V

    invoke-static {v2, v3}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;Lo/sendSensitive$onMessageChannelReady;)Lo/sendSensitive$onMessageChannelReady;

    .line 598
    iget-object v0, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    const-string v2, "socket"

    if-eqz v6, :cond_7

    .line 599
    check-cast v6, Ljava/net/Socket;

    invoke-static {v6}, Lo/sendSensitive;->onMessageChannelReady(Ljava/net/Socket;)Ljava/net/Socket;

    if-eqz v1, :cond_6

    .line 601
    new-instance v2, Lo/serializeObject$ICustomTabsCallback;

    new-instance v3, Lo/serializeObject$onPostMessage;

    invoke-direct {v3, v1}, Lo/serializeObject$onPostMessage;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v2, v3}, Lo/serializeObject$ICustomTabsCallback;-><init>(Lo/serializeObject$onPostMessage;)V

    invoke-static {v2}, Lo/sendSensitive;->onNavigationEvent(Lo/serializeObject$ICustomTabsCallback;)Lo/serializeObject$ICustomTabsCallback;

    .line 603
    :cond_6
    monitor-exit v0

    return-void

    .line 8910
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 603
    monitor-exit v0

    throw v1

    .line 6910
    :cond_8
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5511
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_a
    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported SocketAddress implementation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    iget-object v4, v4, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 4081
    iget-object v4, v4, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    .line 567
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v1, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    .line 4541
    new-instance v3, Lio/grpc/StatusException;

    invoke-direct {v3, v1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 567
    throw v3
    :try_end_3
    .catch Lio/grpc/StatusException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    .line 593
    :try_start_4
    iget-object v2, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-virtual {v2, v1}, Lo/sendSensitive;->ICustomTabsCallback(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 596
    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    new-instance v2, Lo/sendSensitive$onMessageChannelReady;

    iget-object v3, p0, Lo/sendSensitive$2;->onNavigationEvent:Lo/handleNewFrameCount;

    invoke-interface {v3, v0}, Lo/handleNewFrameCount;->onMessageChannelReady(Lo/fullLimitUpdateChild;)Lo/getOptInclusiveEnd;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;)V

    :goto_7
    invoke-static {v1, v2}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;Lo/sendSensitive$onMessageChannelReady;)Lo/sendSensitive$onMessageChannelReady;

    return-void

    :catch_2
    move-exception v1

    .line 590
    :try_start_5
    iget-object v3, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    sget-object v4, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    .line 8075
    iget-object v1, v1, Lio/grpc/StatusException;->onMessageChannelReady:Lo/emptyMap;

    .line 590
    invoke-static {v3, v2, v4, v1}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;ILo/wasSent;Lo/emptyMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 596
    iget-object v1, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    new-instance v2, Lo/sendSensitive$onMessageChannelReady;

    iget-object v3, p0, Lo/sendSensitive$2;->onNavigationEvent:Lo/handleNewFrameCount;

    invoke-interface {v3, v0}, Lo/handleNewFrameCount;->onMessageChannelReady(Lo/fullLimitUpdateChild;)Lo/getOptInclusiveEnd;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;)V

    goto :goto_7

    :goto_8
    iget-object v2, p0, Lo/sendSensitive$2;->ICustomTabsCallback:Lo/sendSensitive;

    new-instance v3, Lo/sendSensitive$onMessageChannelReady;

    iget-object v4, p0, Lo/sendSensitive$2;->onNavigationEvent:Lo/handleNewFrameCount;

    invoke-interface {v4, v0}, Lo/handleNewFrameCount;->onMessageChannelReady(Lo/fullLimitUpdateChild;)Lo/getOptInclusiveEnd;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;)V

    invoke-static {v2, v3}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;Lo/sendSensitive$onMessageChannelReady;)Lo/sendSensitive$onMessageChannelReady;

    throw v1
.end method
