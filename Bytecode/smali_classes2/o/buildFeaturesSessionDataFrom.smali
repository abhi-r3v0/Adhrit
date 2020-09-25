.class public abstract Lo/buildFeaturesSessionDataFrom;
.super Lo/DefaultSettingsJsonTransform;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/readCachedSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildFeaturesSessionDataFrom$onNavigationEvent;
    }
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback$Stub$Proxy:Z


# instance fields
.field private ICustomTabsCallback:Ljava/net/URI;

.field private ICustomTabsCallback$Stub:Ljava/io/InputStream;

.field private asBinder:Ljava/net/Proxy;

.field private asInterface:Ljava/io/OutputStream;

.field public extraCallback:Ljava/util/concurrent/CountDownLatch;

.field private onMessageChannelReady:Ljava/net/Socket;

.field public onNavigationEvent:Lo/getSettingsFile;

.field public onPostMessage:Ljava/lang/Thread;

.field private onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

.field private onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lo/buildFeaturesSessionDataFrom;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lo/getExpiresAtFrom;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lo/getExpiresAtFrom;",
            "I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lo/DefaultSettingsJsonTransform;-><init>()V

    const/4 p3, 0x0

    .line 40
    iput-object p3, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    .line 42
    iput-object p3, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 44
    iput-object p3, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    .line 50
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lo/buildFeaturesSessionDataFrom;->asBinder:Ljava/net/Proxy;

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/buildFeaturesSessionDataFrom;->extraCallback:Ljava/util/concurrent/CountDownLatch;

    .line 60
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lo/buildFeaturesSessionDataFrom;->warmup:I

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    .line 86
    iput-object p3, p0, Lo/buildFeaturesSessionDataFrom;->onTransact:Ljava/util/Map;

    const/16 p1, 0x1388

    .line 87
    iput p1, p0, Lo/buildFeaturesSessionDataFrom;->warmup:I

    .line 88
    new-instance p1, Lo/getSettingsFile;

    invoke-direct {p1, p0, p2}, Lo/getSettingsFile;-><init>(Lo/buildFromJson;Lo/getExpiresAtFrom;)V

    iput-object p1, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/buildFeaturesSessionDataFrom;)Lo/getSettingsFile;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    return-object p0
.end method

.method private ICustomTabsCallback$Stub()I
    .locals 3

    .line 201
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 209
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unkonow scheme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method static synthetic onMessageChannelReady(Lo/buildFeaturesSessionDataFrom;)Ljava/io/OutputStream;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/buildFeaturesSessionDataFrom;->asInterface:Ljava/io/OutputStream;

    return-object p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public final ICustomTabsCallback(ILjava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->extraCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 279
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 280
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onPostMessage:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7296
    invoke-virtual {p0, v0}, Lo/buildFeaturesSessionDataFrom;->extraCallback(Ljava/lang/Exception;)V

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady(ILjava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lo/buildFeaturesSessionDataFrom;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/toFeaturesJson$onMessageChannelReady;Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .line 386
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 7578
    iget-object v1, v0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v1, p1, p2, p3}, Lo/getExpiresAtFrom;->onPostMessage(Lo/toFeaturesJson$onMessageChannelReady;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    .line 8569
    invoke-virtual {v0}, Lo/getSettingsFile;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8571
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/toFeaturesJson;

    .line 8585
    iget-object p3, v0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {p3, p2}, Lo/getExpiresAtFrom;->ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8639
    iget-object p3, v0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p3, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 8570
    :cond_1
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/toFeaturesJson;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 9585
    iget-object v1, v0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v1, p1}, Lo/getExpiresAtFrom;->ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9639
    iget-object v0, v0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 269
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->extraCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    invoke-virtual {p0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback()V

    return-void
.end method

.method public abstract extraCallback(Ljava/lang/Exception;)V
.end method

.method public final extraCallback(Ljava/net/Socket;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 381
    iput-object p1, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    return-void

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()Ljava/net/InetSocketAddress;
    .locals 1

    .line 446
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 9716
    iget-object v0, v0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v0}, Lo/buildFromJson;->onPostMessage()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract onMessageChannelReady(ILjava/lang/String;)V
.end method

.method public final onNavigationEvent(Ljava/lang/Exception;)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lo/buildFeaturesSessionDataFrom;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onPostMessage()Ljava/net/InetSocketAddress;
    .locals 1

    .line 326
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onPostMessage(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lo/buildFeaturesSessionDataFrom;->asBinder:Ljava/net/Proxy;

    invoke-direct {v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_19

    .line 168
    :goto_0
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v4, p0, Lo/buildFeaturesSessionDataFrom;->warmup:I

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 170
    :cond_1
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/io/InputStream;

    .line 171
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lo/buildFeaturesSessionDataFrom;->asInterface:Ljava/io/OutputStream;

    .line 1217
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1218
    iget-object v3, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1219
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v2, "/"

    :cond_3
    if-eqz v3, :cond_4

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1225
    :cond_4
    invoke-direct {p0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub()I

    move-result v3

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    if-eq v3, v5, :cond_5

    const-string v5, ":"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1228
    new-instance v4, Lo/getCachedSettingsData;

    invoke-direct {v4}, Lo/getCachedSettingsData;-><init>()V

    if-eqz v2, :cond_18

    .line 2012
    iput-object v2, v4, Lo/getCachedSettingsData;->onPostMessage:Ljava/lang/String;

    const-string v2, "Host"

    .line 2053
    iget-object v5, v4, Lo/translate;->extraCallback:Ljava/util/TreeMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 2612
    sget-boolean v3, Lo/getSettingsFile;->newSession:Z

    if-nez v3, :cond_7

    iget-object v3, v2, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v5, Lo/readCachedSettings$onNavigationEvent;->onNavigationEvent:Lo/readCachedSettings$onNavigationEvent;

    if-eq v3, v5, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "shall only be called once"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2615
    :cond_7
    :goto_2
    iget-object v3, v2, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v3, v4}, Lo/getExpiresAtFrom;->onPostMessage(Lo/getSettings;)Lo/getSettings;

    move-result-object v3

    iput-object v3, v2, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;

    .line 2617
    invoke-interface {v4}, Lo/getSettings;->extraCallback()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lo/getSettingsFile;->onTransact:Ljava/lang/String;

    .line 2618
    sget-boolean v3, Lo/getSettingsFile;->newSession:Z

    if-nez v3, :cond_9

    iget-object v3, v2, Lo/getSettingsFile;->onTransact:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2632
    :cond_9
    :goto_3
    iget-object v3, v2, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;

    invoke-static {v3}, Lo/getExpiresAtFrom;->ICustomTabsCallback(Lo/getAppSettings;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/getSettingsFile;->onPostMessage(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 180
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;

    invoke-direct {v3, p0, v1}, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;-><init>(Lo/buildFeaturesSessionDataFrom;B)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onPostMessage:Ljava/lang/Thread;

    .line 181
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 183
    sget v2, Lo/getSettingsFile;->ICustomTabsCallback:I

    new-array v2, v2, [B

    .line 4401
    :cond_a
    :goto_4
    :try_start_1
    iget-object v3, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 4691
    iget-object v3, v3, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v4, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_15

    .line 187
    iget-object v3, p0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_15

    .line 188
    iget-object v4, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-static {v2, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 5149
    sget-boolean v6, Lo/getSettingsFile;->newSession:Z

    if-nez v6, :cond_d

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5154
    :cond_d
    :goto_6
    iget-object v6, v4, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v7, Lo/readCachedSettings$onNavigationEvent;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    if-eq v6, v7, :cond_e

    .line 5155
    invoke-virtual {v4, v3}, Lo/getSettingsFile;->onMessageChannelReady(Ljava/nio/ByteBuffer;)V

    goto :goto_8

    .line 5157
    :cond_e
    invoke-virtual {v4, v3}, Lo/getSettingsFile;->ICustomTabsCallback(Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5158
    sget-boolean v6, Lo/getSettingsFile;->newSession:Z

    if-nez v6, :cond_10

    iget-object v6, v4, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5160
    :cond_10
    :goto_7
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 5161
    invoke-virtual {v4, v3}, Lo/getSettingsFile;->onMessageChannelReady(Ljava/nio/ByteBuffer;)V

    goto :goto_8

    .line 5162
    :cond_11
    iget-object v6, v4, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5163
    iget-object v6, v4, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Lo/getSettingsFile;->onMessageChannelReady(Ljava/nio/ByteBuffer;)V

    .line 5167
    :cond_12
    :goto_8
    sget-boolean v6, Lo/getSettingsFile;->newSession:Z

    if-nez v6, :cond_a

    .line 5681
    iget-object v6, v4, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v7, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    if-ne v6, v7, :cond_13

    goto :goto_9

    :cond_13
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_a

    .line 5686
    iget-boolean v4, v4, Lo/getSettingsFile;->onNavigationEvent:Z

    if-nez v4, :cond_a

    .line 5167
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_4

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_15
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v0}, Lo/getSettingsFile;->onPostMessage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {p0, v0}, Lo/buildFeaturesSessionDataFrom;->extraCallback(Ljava/lang/Exception;)V

    .line 196
    iget-object v2, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    const/16 v3, 0x3ee

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 6487
    invoke-virtual {v2, v3, v0, v1}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    goto :goto_a

    .line 192
    :catch_1
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v0}, Lo/getSettingsFile;->onPostMessage()V

    .line 198
    :goto_a
    sget-boolean v0, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_b
    return-void

    .line 2011
    :cond_18
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "http resource descriptor must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_19
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v2

    .line 3296
    invoke-virtual {p0, v2}, Lo/buildFeaturesSessionDataFrom;->extraCallback(Ljava/lang/Exception;)V

    .line 176
    iget-object v3, p0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 3487
    invoke-virtual {v3, v0, v2, v1}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void
.end method
