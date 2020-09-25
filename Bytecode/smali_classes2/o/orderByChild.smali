.class public final Lo/orderByChild;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasChild;


# static fields
.field private static ICustomTabsCallback$Stub$Proxy:Lo/orderByPriority;

.field private static warmup:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Z

.field private ICustomTabsService:Lo/toException;

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lo/setLogger$extraCallback$extraCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public asInterface:Lo/fullLimitUpdateChild;

.field public extraCallback:Ljava/net/Socket;

.field private newSession:Ljava/net/Socket;

.field public onMessageChannelReady:Lo/getChildren;

.field public final onNavigationEvent:Lo/onDisconnect;

.field public volatile onPostMessage:Lo/setPersistenceEnabled;

.field public onRelationshipValidationResult:Lo/filtersNodes;

.field public onTransact:J


# direct methods
.method public constructor <init>(Lo/onDisconnect;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/orderByChild;->asBinder:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 86
    iput-wide v0, p0, Lo/orderByChild;->onTransact:J

    .line 89
    iput-object p1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    return-void
.end method

.method private ICustomTabsCallback(II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lo/orderByChild;->onMessageChannelReady()Lo/fromException;

    move-result-object v0

    .line 26048
    iget-object v1, v0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CONNECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26391
    iget-object v3, v1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26400
    iget v1, v1, Lo/fromCode;->onMessageChannelReady:I

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_0
    new-instance v2, Lo/validateNoOrderByCall;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    iget-object v5, p0, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    invoke-direct {v2, v3, v4, v5}, Lo/validateNoOrderByCall;-><init>(Lo/setLogger$extraCallback$extraCallback;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V

    .line 266
    iget-object v3, p0, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 267
    iget-object v3, p0, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    invoke-interface {v3}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 27074
    iget-object v3, v0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 268
    invoke-virtual {v2, v3, v1}, Lo/validateNoOrderByCall;->onPostMessage(Lo/getRef;Ljava/lang/String;)V

    .line 27161
    iget-object v3, v2, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    invoke-interface {v3}, Lo/filtersNodes;->flush()V

    .line 270
    invoke-virtual {v2}, Lo/validateNoOrderByCall;->onMessageChannelReady()Lo/removeValue$onPostMessage;

    move-result-object v3

    .line 27251
    iput-object v0, v3, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 270
    invoke-virtual {v3}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/removeValue;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v5

    if-nez v9, :cond_0

    move-wide v3, v7

    .line 277
    :cond_0
    invoke-virtual {v2, v3, v4}, Lo/validateNoOrderByCall;->extraCallback(J)Lo/toLog;

    move-result-object v2

    const v3, 0x7fffffff

    .line 278
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lo/createForTests;->extraCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z

    .line 279
    invoke-interface {v2}, Lo/toLog;->close()V

    .line 28088
    iget v2, v0, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x197

    if-ne v2, v3, :cond_2

    .line 293
    iget-object v2, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 30055
    iget-object v2, v2, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 30126
    iget-object v2, v2, Lo/serializeSessionApp;->extraCallback:Lo/onChildMoved;

    .line 294
    iget-object v3, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 31066
    iget-object v3, v3, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 293
    invoke-static {v2, v0, v3}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/onChildMoved;Lo/removeValue;Ljava/net/Proxy;)Lo/fromException;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected response code for CONNECT: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31088
    iget v0, v0, Lo/removeValue;->ICustomTabsCallback:I

    .line 300
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_3
    iget-object p1, p0, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object p1

    .line 28109
    iget-wide p1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p1, v7

    if-nez v2, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    .line 287
    iget-object p1, p0, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object p1

    .line 29109
    iget-wide p1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    return-void

    .line 288
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMessageChannelReady()Lo/fromException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Lo/fromException$onNavigationEvent;

    invoke-direct {v0}, Lo/fromException$onNavigationEvent;-><init>()V

    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 32055
    iget-object v1, v1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 32090
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    const-string v2, "url == null"

    if-eqz v1, :cond_1

    .line 32142
    iput-object v1, v0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    .line 314
    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 33055
    iget-object v1, v1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 33090
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 315
    invoke-static {v1}, Lo/createForTests;->ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Host"

    invoke-virtual {v0, v3, v1}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    .line 316
    invoke-virtual {v0, v1, v3}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v3, "okhttp/2.7.5"

    .line 317
    invoke-virtual {v0, v1, v3}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v0

    .line 34277
    iget-object v1, v0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v1, :cond_0

    .line 34278
    new-instance v1, Lo/fromException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    return-object v1

    .line 34277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized onPostMessage(Ljavax/net/ssl/SSLSocketFactory;)Lo/orderByPriority;
    .locals 3

    const-class v0, Lo/orderByChild;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lo/orderByChild;->warmup:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_0

    .line 247
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo/DatabaseRegistrar;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 248
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/DatabaseRegistrar;->onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;

    move-result-object v1

    sput-object v1, Lo/orderByChild;->ICustomTabsCallback$Stub$Proxy:Lo/orderByPriority;

    .line 249
    sput-object p0, Lo/orderByChild;->warmup:Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    :cond_0
    sget-object p0, Lo/orderByChild;->ICustomTabsCallback$Stub$Proxy:Lo/orderByPriority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onDisconnect;
    .locals 1

    .line 327
    iget-object v0, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    return-object v0
.end method

.method public final onMessageChannelReady(IIILjava/util/List;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lo/child;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p4

    .line 94
    iget-object v3, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    if-nez v3, :cond_1a

    .line 97
    new-instance v3, Lo/fireEvent$onNavigationEvent;

    invoke-direct {v3, v0}, Lo/fireEvent$onNavigationEvent;-><init>(Ljava/util/List;)V

    .line 98
    iget-object v4, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 1066
    iget-object v4, v4, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 99
    iget-object v5, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 2055
    iget-object v5, v5, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 101
    iget-object v6, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 3055
    iget-object v6, v6, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 3159
    iget-object v6, v6, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_1

    .line 101
    sget-object v6, Lo/child;->onMessageChannelReady:Lo/child;

    .line 102
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CLEARTEXT communication not supported: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 107
    :cond_2
    :goto_1
    iget-object v0, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    if-nez v0, :cond_19

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 109
    :try_start_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v10, :cond_4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v10, :cond_3

    goto :goto_2

    .line 110
    :cond_3
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_3

    .line 4121
    :cond_4
    :goto_2
    iget-object v0, v5, Lo/serializeSessionApp;->onPostMessage:Ljavax/net/SocketFactory;

    .line 110
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    .line 4139
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 4141
    :try_start_1
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v0

    iget-object v10, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    iget-object v11, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 5070
    iget-object v11, v11, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v12, p1

    .line 4141
    :try_start_2
    invoke-virtual {v0, v10, v11, v12}, Lo/DatabaseRegistrar;->ICustomTabsCallback(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4145
    :try_start_3
    iget-object v0, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    invoke-static {v0}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object v0

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    iput-object v0, v1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    .line 4146
    iget-object v0, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    invoke-static {v0}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object v0

    invoke-static {v0}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0

    iput-object v0, v1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    .line 4148
    iget-object v0, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 7055
    iget-object v0, v0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 7159
    iget-object v0, v0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_e

    .line 7171
    iget-object v0, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 8078
    iget-object v10, v0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    iget-object v10, v10, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v10, :cond_5

    iget-object v0, v0, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v10, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    move/from16 v10, p3

    .line 7172
    :try_start_4
    invoke-direct {v1, v2, v10}, Lo/orderByChild;->ICustomTabsCallback(II)V

    goto :goto_5

    :cond_6
    move/from16 v10, p3

    .line 7175
    :goto_5
    iget-object v0, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 9055
    iget-object v0, v0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 9159
    iget-object v11, v0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 7181
    :try_start_5
    iget-object v13, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    .line 10100
    iget-object v14, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 10391
    iget-object v14, v14, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 11111
    iget-object v15, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 11400
    iget v15, v15, Lo/fromCode;->onMessageChannelReady:I

    .line 7181
    invoke-virtual {v11, v13, v14, v15, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v11

    check-cast v11, Ljavax/net/ssl/SSLSocket;
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7185
    :try_start_6
    invoke-virtual {v3, v11}, Lo/fireEvent$onNavigationEvent;->onNavigationEvent(Ljavax/net/ssl/SSLSocket;)Lo/child;

    move-result-object v13

    .line 12124
    iget-boolean v14, v13, Lo/child;->ICustomTabsCallback:Z

    if-eqz v14, :cond_7

    .line 7187
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v14

    .line 13100
    iget-object v15, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 13391
    iget-object v15, v15, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 14134
    iget-object v8, v0, Lo/serializeSessionApp;->onNavigationEvent:Ljava/util/List;

    .line 7187
    invoke-virtual {v14, v11, v15, v8}, Lo/DatabaseRegistrar;->onPostMessage(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 7192
    :cond_7
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 7193
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-static {v8}, Lo/getChildren;->onPostMessage(Ljavax/net/ssl/SSLSession;)Lo/getChildren;

    move-result-object v8

    .line 14164
    iget-object v14, v0, Lo/serializeSessionApp;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    .line 15100
    iget-object v15, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 15391
    iget-object v15, v15, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 7196
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v14, v15, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 17169
    iget-object v6, v0, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    .line 7205
    sget-object v14, Lo/onChildChanged;->onPostMessage:Lo/onChildChanged;

    if-eq v6, v14, :cond_8

    .line 18159
    iget-object v6, v0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    .line 7206
    invoke-static {v6}, Lo/orderByChild;->onPostMessage(Ljavax/net/ssl/SSLSocketFactory;)Lo/orderByPriority;

    move-result-object v6

    .line 7207
    new-instance v14, Lo/filterTreeNode$onPostMessage;

    invoke-direct {v14, v6}, Lo/filterTreeNode$onPostMessage;-><init>(Lo/orderByPriority;)V

    .line 19083
    iget-object v6, v8, Lo/getChildren;->extraCallback:Ljava/util/List;

    .line 7208
    invoke-virtual {v14, v6}, Lo/filterTreeNode$onPostMessage;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 19169
    iget-object v14, v0, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    .line 20100
    iget-object v0, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 20391
    iget-object v0, v0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 7209
    invoke-virtual {v14, v0, v6}, Lo/onChildChanged;->extraCallback(Ljava/lang/String;Ljava/util/List;)V

    .line 21124
    :cond_8
    iget-boolean v0, v13, Lo/child;->ICustomTabsCallback:Z

    if-eqz v0, :cond_9

    .line 7214
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v0

    invoke-virtual {v0, v11}, Lo/DatabaseRegistrar;->onMessageChannelReady(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 7216
    :goto_6
    iput-object v11, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 7217
    invoke-static {v11}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object v6

    invoke-static {v6}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v6

    iput-object v6, v1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    .line 7218
    iget-object v6, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-static {v6}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object v6

    invoke-static {v6}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v6

    iput-object v6, v1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    .line 7219
    iput-object v8, v1, Lo/orderByChild;->onMessageChannelReady:Lo/getChildren;

    if-eqz v0, :cond_a

    .line 7221
    invoke-static {v0}, Lo/toException;->onMessageChannelReady(Ljava/lang/String;)Lo/toException;

    move-result-object v0

    goto :goto_7

    :cond_a
    sget-object v0, Lo/toException;->extraCallback:Lo/toException;

    :goto_7
    iput-object v0, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v11, :cond_f

    .line 7229
    :try_start_7
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v0

    invoke-virtual {v0, v11}, Lo/DatabaseRegistrar;->onPostMessage(Ljavax/net/ssl/SSLSocket;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 16083
    :cond_b
    :try_start_8
    iget-object v6, v8, Lo/getChildren;->extraCallback:Ljava/util/List;

    .line 7197
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 7198
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Hostname "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16100
    iget-object v0, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 16391
    iget-object v0, v0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 7198
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7199
    invoke-static {v6}, Lo/onChildChanged;->ICustomTabsCallback(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7200
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7201
    invoke-static {v6}, Lo/orderByValue;->onPostMessage(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    .line 7225
    :goto_8
    :try_start_9
    invoke-static {v0}, Lo/createForTests;->ICustomTabsCallback(Ljava/lang/AssertionError;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 7226
    :cond_c
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v11, :cond_d

    .line 7229
    :try_start_a
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    move-result-object v6

    invoke-virtual {v6, v11}, Lo/DatabaseRegistrar;->onPostMessage(Ljavax/net/ssl/SSLSocket;)V

    .line 7232
    :cond_d
    invoke-static {v11}, Lo/createForTests;->extraCallback(Ljava/net/Socket;)V

    throw v0

    :cond_e
    move/from16 v10, p3

    .line 4151
    sget-object v0, Lo/toException;->extraCallback:Lo/toException;

    iput-object v0, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    .line 4152
    iget-object v0, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    iput-object v0, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 4155
    :cond_f
    :goto_a
    iget-object v0, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    sget-object v6, Lo/toException;->ICustomTabsCallback:Lo/toException;

    if-eq v0, v6, :cond_10

    iget-object v0, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    sget-object v6, Lo/toException;->onPostMessage:Lo/toException;

    if-ne v0, v6, :cond_2

    .line 4156
    :cond_10
    iget-object v0, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4158
    new-instance v0, Lo/setPersistenceEnabled$extraCallback;

    invoke-direct {v0}, Lo/setPersistenceEnabled$extraCallback;-><init>()V

    iget-object v6, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    iget-object v8, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 22055
    iget-object v8, v8, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 22090
    iget-object v8, v8, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 22391
    iget-object v8, v8, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 4159
    iget-object v11, v1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    iget-object v13, v1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    .line 22560
    iput-object v6, v0, Lo/setPersistenceEnabled$extraCallback;->ICustomTabsCallback:Ljava/net/Socket;

    .line 22561
    iput-object v8, v0, Lo/setPersistenceEnabled$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 22562
    iput-object v11, v0, Lo/setPersistenceEnabled$extraCallback;->extraCallback:Lo/fullLimitUpdateChild;

    .line 22563
    iput-object v13, v0, Lo/setPersistenceEnabled$extraCallback;->onPostMessage:Lo/filtersNodes;

    .line 4159
    iget-object v6, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    .line 22573
    iput-object v6, v0, Lo/setPersistenceEnabled$extraCallback;->onTransact:Lo/toException;

    .line 22583
    new-instance v6, Lo/setPersistenceEnabled;

    invoke-direct {v6, v0, v9}, Lo/setPersistenceEnabled;-><init>(Lo/setPersistenceEnabled$extraCallback;B)V

    .line 23514
    iget-object v0, v6, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v0}, Lo/getReference;->onNavigationEvent()V

    .line 23515
    iget-object v0, v6, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    iget-object v8, v6, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    invoke-interface {v0, v8}, Lo/getReference;->ICustomTabsCallback(Lo/isZombied$onPostMessage;)V

    .line 23516
    iget-object v0, v6, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    .line 24198
    iget v8, v0, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 v8, v8, 0x80

    const/high16 v11, 0x10000

    if-eqz v8, :cond_11

    iget-object v0, v0, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    const/4 v8, 0x7

    aget v0, v0, v8

    goto :goto_b

    :cond_11
    const/high16 v0, 0x10000

    :goto_b
    if-eq v0, v11, :cond_12

    .line 23518
    iget-object v8, v6, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    sub-int/2addr v0, v11

    int-to-long v13, v0

    invoke-interface {v8, v9, v13, v14}, Lo/getReference;->onMessageChannelReady(IJ)V

    .line 4165
    :cond_12
    iput-object v6, v1, Lo/orderByChild;->onPostMessage:Lo/setPersistenceEnabled;

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move/from16 v12, p1

    :catch_4
    move/from16 v10, p3

    .line 4143
    new-instance v0, Ljava/net/ConnectException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to connect to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 6070
    iget-object v8, v8, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    .line 4143
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    move/from16 v12, p1

    :goto_c
    move/from16 v10, p3

    .line 114
    :goto_d
    iget-object v6, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-static {v6}, Lo/createForTests;->extraCallback(Ljava/net/Socket;)V

    .line 115
    iget-object v6, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    invoke-static {v6}, Lo/createForTests;->extraCallback(Ljava/net/Socket;)V

    const/4 v6, 0x0

    .line 116
    iput-object v6, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 117
    iput-object v6, v1, Lo/orderByChild;->newSession:Ljava/net/Socket;

    .line 118
    iput-object v6, v1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    .line 119
    iput-object v6, v1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    .line 120
    iput-object v6, v1, Lo/orderByChild;->onMessageChannelReady:Lo/getChildren;

    .line 121
    iput-object v6, v1, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    if-nez v7, :cond_13

    .line 124
    new-instance v7, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v7, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_e

    .line 25049
    :cond_13
    iget-object v8, v7, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    .line 25054
    sget-object v11, Lcom/squareup/okhttp/internal/http/RouteException;->onNavigationEvent:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_14

    .line 25056
    :try_start_b
    sget-object v11, Lcom/squareup/okhttp/internal/http/RouteException;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v9

    invoke-virtual {v11, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_7

    .line 25050
    :catch_7
    :cond_14
    iput-object v0, v7, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    :goto_e
    if-eqz p5, :cond_18

    const/4 v8, 0x1

    .line 25092
    iput-boolean v8, v3, Lo/fireEvent$onNavigationEvent;->extraCallback:Z

    .line 25094
    iget-boolean v11, v3, Lo/fireEvent$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v11, :cond_16

    .line 25099
    instance-of v11, v0, Ljava/net/ProtocolException;

    if-nez v11, :cond_16

    .line 25106
    instance-of v11, v0, Ljava/io/InterruptedIOException;

    if-nez v11, :cond_16

    .line 25112
    instance-of v11, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v11, :cond_15

    .line 25115
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    instance-of v13, v13, Ljava/security/cert/CertificateException;

    if-nez v13, :cond_16

    .line 25119
    :cond_15
    instance-of v13, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v13, :cond_16

    if-nez v11, :cond_17

    .line 25127
    instance-of v0, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    const/4 v8, 0x0

    :cond_17
    :goto_f
    if-eqz v8, :cond_18

    goto/16 :goto_1

    .line 130
    :cond_18
    throw v7

    :cond_19
    return-void

    .line 94
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Z)Z
    .locals 4

    .line 348
    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lo/orderByChild;->onPostMessage:Lo/setPersistenceEnabled;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 358
    :try_start_0
    iget-object p1, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :try_start_1
    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 361
    iget-object v0, p0, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 366
    :try_start_2
    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 35055
    iget-object v1, v1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 35090
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 35391
    iget-object v1, v1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 36055
    iget-object v1, v1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 36090
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 36400
    iget v1, v1, Lo/fromCode;->onMessageChannelReady:I

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 37066
    iget-object v1, v1, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 37070
    iget-object v1, v1, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/orderByChild;->onMessageChannelReady:Lo/getChildren;

    if-eqz v1, :cond_0

    .line 37078
    iget-object v1, v1, Lo/getChildren;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 402
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/orderByChild;->ICustomTabsService:Lo/toException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
