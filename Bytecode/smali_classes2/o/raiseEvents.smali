.class public final Lo/raiseEvents;
.super Lo/normalizeValue$extraCallback;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public ICustomTabsCallback:Lo/isSetterOverride;

.field ICustomTabsCallback$Stub:Lo/filtersNodes;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Lo/valueChange;

.field asBinder:Lo/fullLimitUpdateChild;

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lo/getIndexEndValue;",
            ">;>;"
        }
    .end annotation
.end field

.field public extraCallback:Ljava/net/Socket;

.field public getInterfaceDescriptor:J

.field private final newSession:Lo/deserialize;

.field public onMessageChannelReady:Lo/normalizeValue;

.field public final onNavigationEvent:Lo/changeWithPrevName;

.field public onPostMessage:Ljava/net/Socket;

.field public onRelationshipValidationResult:I

.field public onTransact:Z


# direct methods
.method public constructor <init>(Lo/deserialize;Lo/changeWithPrevName;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lo/normalizeValue$extraCallback;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput v0, p0, Lo/raiseEvents;->ICustomTabsCallback$Stub$Proxy:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/raiseEvents;->asInterface:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 117
    iput-wide v0, p0, Lo/raiseEvents;->getInterfaceDescriptor:J

    .line 120
    iput-object p1, p0, Lo/raiseEvents;->newSession:Lo/deserialize;

    .line 121
    iput-object p2, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    return-void
.end method

.method private onNavigationEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 294
    new-instance v0, Lo/normalizeValue$onPostMessage;

    invoke-direct {v0}, Lo/normalizeValue$onPostMessage;-><init>()V

    iget-object v1, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    iget-object v2, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 44058
    iget-object v2, v2, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 44093
    iget-object v2, v2, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 44486
    iget-object v2, v2, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 295
    iget-object v3, p0, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    iget-object v4, p0, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    .line 44565
    iput-object v1, v0, Lo/normalizeValue$onPostMessage;->extraCallback:Ljava/net/Socket;

    .line 44566
    iput-object v2, v0, Lo/normalizeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 44567
    iput-object v3, v0, Lo/normalizeValue$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 44568
    iput-object v4, v0, Lo/normalizeValue$onPostMessage;->ICustomTabsCallback:Lo/filtersNodes;

    .line 44573
    iput-object p0, v0, Lo/normalizeValue$onPostMessage;->onNavigationEvent:Lo/normalizeValue$extraCallback;

    .line 44583
    iput p1, v0, Lo/normalizeValue$onPostMessage;->asInterface:I

    .line 44588
    new-instance p1, Lo/normalizeValue;

    invoke-direct {p1, v0}, Lo/normalizeValue;-><init>(Lo/normalizeValue$onPostMessage;)V

    .line 298
    iput-object p1, p0, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    .line 45504
    invoke-virtual {p1}, Lo/normalizeValue;->onMessageChannelReady()V

    return-void
.end method

.method private onPostMessage(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 39068
    iget-object v0, v0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 238
    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 40058
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 240
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 40103
    :cond_1
    :goto_0
    iget-object v0, v1, Lo/deserializeToType;->onMessageChannelReady:Ljavax/net/SocketFactory;

    .line 241
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 242
    :goto_1
    iput-object v1, p0, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    .line 245
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 247
    :try_start_0
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object p2

    iget-object v0, p0, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 42072
    iget-object v1, v1, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 247
    invoke-virtual {p2, v0, v1, p1}, Lo/getChildAfterChild;->onNavigationEvent(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :try_start_1
    iget-object p1, p0, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    invoke-static {p1}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object p1

    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    .line 260
    iget-object p1, p0, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    invoke-static {p1}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object p1

    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    iput-object p1, p0, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "throw with null exception"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 263
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 249
    new-instance p2, Ljava/net/ConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to connect to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 43072
    iget-object v1, v1, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/normalizeValue;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lo/raiseEvents;->newSession:Lo/deserialize;

    monitor-enter v0

    .line 594
    :try_start_0
    invoke-virtual {p1}, Lo/normalizeValue;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/raiseEvents;->ICustomTabsCallback$Stub$Proxy:I

    .line 595
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Lo/isFullyInitialized;)Z
    .locals 4

    .line 50081
    iget v0, p1, Lo/isFullyInitialized;->onPostMessage:I

    .line 508
    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50082
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 50083
    iget-object v1, v1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 50084
    iget v1, v1, Lo/isFullyInitialized;->onPostMessage:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 50085
    :cond_0
    iget-object v0, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50086
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 50087
    iget-object v1, v1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 50088
    iget-object v1, v1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 514
    iget-object v0, p0, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    if-eqz v0, :cond_2

    sget-object v0, Lo/updateFullNode;->onNavigationEvent:Lo/updateFullNode;

    .line 50089
    iget-object p1, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    .line 50090
    iget-object v0, v0, Lo/isSetterOverride;->ICustomTabsCallback:Ljava/util/List;

    .line 515
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 50091
    invoke-static {p1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50092
    invoke-static {p1, v0}, Lo/updateFullNode;->extraCallback(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    goto :goto_0

    .line 50093
    :cond_1
    invoke-static {p1, v0}, Lo/updateFullNode;->ICustomTabsCallback(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final onMessageChannelReady(Lo/getServerCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    sget-object v0, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    .line 50094
    invoke-virtual {p1, v0}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50097
    iget-object v1, p1, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget p1, p1, Lo/getServerCache;->onMessageChannelReady:I

    .line 50099
    iget-object v1, v1, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v1, p1, v0}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Z)Z
    .locals 4

    .line 556
    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {v0}, Lo/normalizeValue;->ICustomTabsCallback()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_4

    .line 566
    :try_start_0
    iget-object p1, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :try_start_1
    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 569
    iget-object v0, p0, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 574
    :try_start_2
    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_3
    iget-object v0, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public final onPostMessage(IIIIZLo/convertInteger;Lo/resolveType;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p4

    .line 135
    iget-object v0, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    if-nez v0, :cond_23

    .line 138
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 1058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 1120
    iget-object v0, v0, Lo/deserializeToType;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 139
    new-instance v3, Lo/getFixedWidthMinor$ICustomTabsCallback;

    invoke-direct {v3, v0}, Lo/getFixedWidthMinor$ICustomTabsCallback;-><init>(Ljava/util/List;)V

    .line 141
    iget-object v4, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 2058
    iget-object v4, v4, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 2141
    iget-object v4, v4, Lo/deserializeToType;->onTransact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_2

    .line 142
    sget-object v4, Lo/convertString;->extraCallback:Lo/convertString;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 3058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 3093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 3486
    iget-object v0, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 147
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo/getChildAfterChild;->onPostMessage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v2, Lokhttp3/internal/connection/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CLEARTEXT communication to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 143
    :cond_1
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication not enabled for client"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 152
    :cond_2
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 4058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 4116
    iget-object v0, v0, Lo/deserializeToType;->extraCallback:Ljava/util/List;

    .line 152
    sget-object v4, Lo/valueChange;->extraCallback:Lo/valueChange;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_0
    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 160
    :try_start_0
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 5080
    iget-object v8, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    iget-object v8, v8, Lo/deserializeToType;->onTransact:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v8, :cond_3

    iget-object v0, v0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v8, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_c

    .line 5434
    new-instance v0, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    iget-object v8, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 6058
    iget-object v8, v8, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 6093
    iget-object v8, v8, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v8, :cond_b

    .line 6145
    iput-object v8, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    const-string v8, "CONNECT"

    .line 5436
    invoke-virtual {v0, v8, v4}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    const-string v8, "Host"

    iget-object v9, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 7058
    iget-object v9, v9, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 7093
    iget-object v9, v9, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 5437
    invoke-static {v9, v7}, Lo/generateEventsForType;->onMessageChannelReady(Lo/isFullyInitialized;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    const-string v8, "Proxy-Connection"

    const-string v9, "Keep-Alive"

    .line 5438
    invoke-virtual {v0, v8, v9}, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    const-string v8, "User-Agent"

    const-string v9, "okhttp/3.12.6"

    .line 5439
    invoke-virtual {v0, v8, v9}, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    .line 8292
    iget-object v8, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v8, :cond_a

    .line 8293
    new-instance v8, Lo/isCompleteForChild;

    invoke-direct {v8, v0}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 5442
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0}, Lo/childAddedChange$ICustomTabsCallback;-><init>()V

    .line 8337
    iput-object v8, v0, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 5443
    sget-object v9, Lo/valueChange;->onPostMessage:Lo/valueChange;

    .line 8342
    iput-object v9, v0, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    const/16 v9, 0x197

    .line 8347
    iput v9, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    const-string v10, "Preemptive Authenticate"

    .line 8352
    iput-object v10, v0, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 5446
    sget-object v10, Lo/generateEventsForType;->extraCallback:Lo/getChildKey;

    .line 8391
    iput-object v10, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    const-wide/16 v10, -0x1

    .line 8432
    iput-wide v10, v0, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 8437
    iput-wide v10, v0, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    const-string v12, "Proxy-Authenticate"

    const-string v13, "OkHttp-Preemptive"

    .line 9366
    iget-object v14, v0, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v14, v12, v13}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 5451
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    .line 11049
    iget-object v0, v8, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 5219
    invoke-direct/range {p0 .. p2}, Lo/raiseEvents;->onPostMessage(II)V

    .line 11377
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CONNECT "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7}, Lo/generateEventsForType;->onMessageChannelReady(Lo/isFullyInitialized;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HTTP/1.1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11379
    new-instance v12, Lo/getWireProtocolParams;

    iget-object v13, v1, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    iget-object v14, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-direct {v12, v4, v4, v13, v14}, Lo/getWireProtocolParams;-><init>(Lo/propertyName;Lo/getIndexEndValue;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V

    .line 11380
    iget-object v13, v1, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v13}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v14, p2

    move-object/from16 p7, v5

    int-to-long v4, v14

    :try_start_1
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v4, v5, v15}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 11381
    iget-object v4, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {v4}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v5, p3

    int-to-long v9, v5

    :try_start_2
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 12057
    iget-object v4, v8, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 11382
    invoke-virtual {v12, v4, v0}, Lo/getWireProtocolParams;->onMessageChannelReady(Lo/shouldIncludeField;Ljava/lang/String;)V

    .line 12166
    iget-object v0, v12, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    .line 11384
    invoke-virtual {v12, v6}, Lo/getWireProtocolParams;->onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;

    move-result-object v0

    .line 12337
    iput-object v8, v0, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 11386
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    .line 11389
    invoke-static {v0}, Lo/hasAnchoredLimit;->onPostMessage(Lo/childAddedChange;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v15, -0x1

    cmp-long v4, v8, v15

    if-nez v4, :cond_4

    move-wide v8, v10

    .line 11393
    :cond_4
    invoke-virtual {v12, v8, v9}, Lo/getWireProtocolParams;->onNavigationEvent(J)Lo/toLog;

    move-result-object v4

    const v8, 0x7fffffff

    .line 11394
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v8, v9}, Lo/generateEventsForType;->ICustomTabsCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z

    .line 11395
    invoke-interface {v4}, Lo/toLog;->close()V

    .line 13098
    iget v4, v0, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v8, 0xc8

    if-eq v4, v8, :cond_6

    const/16 v8, 0x197

    if-eq v4, v8, :cond_5

    .line 11418
    new-instance v4, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected response code for CONNECT: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16098
    iget v0, v0, Lo/childAddedChange;->onNavigationEvent:I

    .line 11419
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11410
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Failed to authenticate with proxy"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11403
    :cond_6
    iget-object v0, v1, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v0

    .line 13109
    iget-wide v8, v0, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 11403
    iget-object v0, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object v0

    .line 14109
    iget-wide v8, v0, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 162
    iget-object v0, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    if-nez v0, :cond_d

    goto/16 :goto_7

    .line 11404
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v4, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_a
    move/from16 v14, p2

    move-object/from16 p7, v5

    move/from16 v5, p3

    .line 8292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "url == null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move/from16 v14, p2

    move-object/from16 p7, v5

    move/from16 v5, p3

    .line 6144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "url == null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move/from16 v14, p2

    move-object/from16 p7, v5

    move/from16 v5, p3

    .line 167
    invoke-direct/range {p0 .. p2}, Lo/raiseEvents;->onPostMessage(II)V

    .line 18270
    :cond_d
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 19058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 19141
    iget-object v0, v0, Lo/deserializeToType;->onTransact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_f

    .line 18271
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 20058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 20116
    iget-object v0, v0, Lo/deserializeToType;->extraCallback:Ljava/util/List;

    .line 18271
    sget-object v4, Lo/valueChange;->extraCallback:Lo/valueChange;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18272
    iget-object v0, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    iput-object v0, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    .line 18273
    sget-object v0, Lo/valueChange;->extraCallback:Lo/valueChange;

    iput-object v0, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    .line 18274
    invoke-direct {v1, v2}, Lo/raiseEvents;->onNavigationEvent(I)V

    goto/16 :goto_7

    .line 18278
    :cond_e
    iget-object v0, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    iput-object v0, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    .line 18279
    sget-object v0, Lo/valueChange;->onPostMessage:Lo/valueChange;

    iput-object v0, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    goto/16 :goto_7

    .line 20303
    :cond_f
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 21058
    iget-object v0, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 21141
    iget-object v4, v0, Lo/deserializeToType;->onTransact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 20309
    :try_start_3
    iget-object v8, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    .line 22093
    iget-object v9, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 22486
    iget-object v9, v9, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 23093
    iget-object v10, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 23502
    iget v10, v10, Lo/isFullyInitialized;->onPostMessage:I

    .line 20309
    invoke-virtual {v4, v8, v9, v10, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20313
    :try_start_4
    invoke-virtual {v3, v4}, Lo/getFixedWidthMinor$ICustomTabsCallback;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Lo/convertString;

    move-result-object v8

    .line 24147
    iget-boolean v9, v8, Lo/convertString;->onNavigationEvent:Z

    if-eqz v9, :cond_10

    .line 20315
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v9

    .line 25093
    iget-object v10, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 25486
    iget-object v10, v10, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 26116
    iget-object v11, v0, Lo/deserializeToType;->extraCallback:Ljava/util/List;

    .line 20315
    invoke-virtual {v9, v4, v10, v11}, Lo/getChildAfterChild;->extraCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 20320
    :cond_10
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 20322
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    .line 20323
    invoke-static {v9}, Lo/isSetterOverride;->extraCallback(Ljavax/net/ssl/SSLSession;)Lo/isSetterOverride;

    move-result-object v10

    .line 26146
    iget-object v11, v0, Lo/deserializeToType;->asBinder:Ljavax/net/ssl/HostnameVerifier;

    .line 27093
    iget-object v12, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 27486
    iget-object v12, v12, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 20326
    invoke-interface {v11, v12, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 28104
    iget-object v8, v10, Lo/isSetterOverride;->ICustomTabsCallback:Ljava/util/List;

    .line 20328
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 20329
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 20330
    new-instance v9, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Hostname "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 29486
    iget-object v0, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 20331
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20332
    invoke-static {v8}, Lo/expectMap;->onNavigationEvent(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20333
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20334
    invoke-static {v8}, Lo/updateFullNode;->ICustomTabsCallback(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 20336
    :cond_11
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Hostname "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 30486
    iget-object v0, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 20337
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 31151
    :cond_12
    iget-object v9, v0, Lo/deserializeToType;->ICustomTabsCallback$Stub$Proxy:Lo/expectMap;

    .line 32093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 32486
    iget-object v0, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 33104
    iget-object v11, v10, Lo/isSetterOverride;->ICustomTabsCallback:Ljava/util/List;

    .line 20342
    invoke-virtual {v9, v0, v11}, Lo/expectMap;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)V

    .line 33147
    iget-boolean v0, v8, Lo/convertString;->onNavigationEvent:Z

    if-eqz v0, :cond_13

    .line 20347
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/getChildAfterChild;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    .line 20349
    :goto_5
    iput-object v4, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    .line 20350
    invoke-static {v4}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object v8

    invoke-static {v8}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v8

    iput-object v8, v1, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    .line 20351
    iget-object v8, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-static {v8}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object v8

    invoke-static {v8}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v8

    iput-object v8, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    .line 20352
    iput-object v10, v1, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    if-eqz v0, :cond_14

    .line 20354
    invoke-static {v0}, Lo/valueChange;->onPostMessage(Ljava/lang/String;)Lo/valueChange;

    move-result-object v0

    goto :goto_6

    .line 20355
    :cond_14
    sget-object v0, Lo/valueChange;->onPostMessage:Lo/valueChange;

    :goto_6
    iput-object v0, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_15

    .line 20362
    :try_start_5
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/getChildAfterChild;->extraCallback(Ljavax/net/ssl/SSLSocket;)V

    .line 18287
    :cond_15
    iget-object v0, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    sget-object v4, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    if-ne v0, v4, :cond_16

    .line 18288
    invoke-direct {v1, v2}, Lo/raiseEvents;->onNavigationEvent(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 197
    :cond_16
    :goto_7
    iget-object v0, v1, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 38080
    iget-object v2, v0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    iget-object v2, v2, Lo/deserializeToType;->onTransact:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_17

    iget-object v0, v0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_17

    const/4 v6, 0x1

    :cond_17
    if-eqz v6, :cond_19

    .line 197
    iget-object v0, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    if-eqz v0, :cond_18

    goto :goto_8

    .line 198
    :cond_18
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v2, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 203
    :cond_19
    :goto_8
    iget-object v0, v1, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-eqz v0, :cond_1a

    .line 204
    iget-object v2, v1, Lo/raiseEvents;->newSession:Lo/deserialize;

    monitor-enter v2

    .line 205
    :try_start_6
    iget-object v0, v1, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    invoke-virtual {v0}, Lo/normalizeValue;->onNavigationEvent()I

    move-result v0

    iput v0, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub$Proxy:I

    .line 206
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1a
    return-void

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    .line 20358
    :goto_9
    :try_start_7
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/AssertionError;)Z

    move-result v8

    if-eqz v8, :cond_1b

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 20359
    :cond_1b
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v4, :cond_1c

    .line 20362
    :try_start_8
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v8

    invoke-virtual {v8, v4}, Lo/getChildAfterChild;->extraCallback(Ljavax/net/ssl/SSLSocket;)V

    .line 20365
    :cond_1c
    invoke-static {v4}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    move/from16 v14, p2

    move-object/from16 p7, v5

    :goto_b
    move/from16 v5, p3

    .line 173
    :goto_c
    iget-object v4, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-static {v4}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    .line 174
    iget-object v4, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    invoke-static {v4}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    const/4 v4, 0x0

    .line 175
    iput-object v4, v1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    .line 176
    iput-object v4, v1, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    .line 177
    iput-object v4, v1, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    .line 178
    iput-object v4, v1, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    .line 179
    iput-object v4, v1, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    .line 180
    iput-object v4, v1, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    .line 181
    iput-object v4, v1, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-nez p7, :cond_1d

    .line 186
    new-instance v8, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v8, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_d

    :cond_1d
    move-object/from16 v8, p7

    .line 37045
    iget-object v9, v8, Lokhttp3/internal/connection/RouteException;->extraCallback:Ljava/io/IOException;

    invoke-static {v9, v0}, Lo/generateEventsForType;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 37046
    iput-object v0, v8, Lokhttp3/internal/connection/RouteException;->onNavigationEvent:Ljava/io/IOException;

    :goto_d
    if-eqz p5, :cond_21

    .line 37093
    iput-boolean v7, v3, Lo/getFixedWidthMinor$ICustomTabsCallback;->extraCallback:Z

    .line 37095
    iget-boolean v9, v3, Lo/getFixedWidthMinor$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v9, :cond_20

    .line 37100
    instance-of v9, v0, Ljava/net/ProtocolException;

    if-nez v9, :cond_20

    .line 37107
    instance-of v9, v0, Ljava/io/InterruptedIOException;

    if-nez v9, :cond_20

    .line 37113
    instance-of v9, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v9, :cond_1e

    .line 37116
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v10, v10, Ljava/security/cert/CertificateException;

    if-nez v10, :cond_20

    .line 37120
    :cond_1e
    instance-of v10, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v10, :cond_20

    if-nez v9, :cond_1f

    .line 37127
    instance-of v9, v0, Ljavax/net/ssl/SSLProtocolException;

    if-nez v9, :cond_1f

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_20

    :cond_1f
    const/4 v6, 0x1

    :cond_20
    if-eqz v6, :cond_21

    move-object v5, v8

    goto/16 :goto_1

    .line 192
    :cond_21
    throw v8

    .line 153
    :cond_22
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 135
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Lo/deserializeToType;Lo/changeWithPrevName;)Z
    .locals 4

    .line 467
    iget-object v0, p0, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lo/raiseEvents;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lo/raiseEvents;->onTransact:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 46058
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 470
    invoke-virtual {v0, v1, p1}, Lo/childChangedChange;->onPostMessage(Lo/deserializeToType;Lo/deserializeToType;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 46093
    :cond_1
    iget-object v0, p1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 46486
    iget-object v0, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 46542
    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 47058
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 47093
    iget-object v1, v1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 47486
    iget-object v1, v1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 483
    :cond_2
    iget-object v0, p0, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 48068
    :cond_4
    iget-object v0, p2, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 489
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 490
    :cond_5
    iget-object v0, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 49068
    iget-object v0, v0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 490
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 491
    :cond_6
    iget-object v0, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 49072
    iget-object v0, v0, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 50072
    iget-object v3, p2, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 50073
    :cond_7
    iget-object p2, p2, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 50074
    iget-object p2, p2, Lo/deserializeToType;->asBinder:Ljavax/net/ssl/HostnameVerifier;

    .line 494
    sget-object v0, Lo/updateFullNode;->onNavigationEvent:Lo/updateFullNode;

    if-eq p2, v0, :cond_8

    return v2

    .line 50075
    :cond_8
    iget-object p2, p1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 495
    invoke-virtual {p0, p2}, Lo/raiseEvents;->extraCallback(Lo/isFullyInitialized;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 50076
    :cond_9
    :try_start_0
    iget-object p2, p1, Lo/deserializeToType;->ICustomTabsCallback$Stub$Proxy:Lo/expectMap;

    .line 50077
    iget-object p1, p1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 50078
    iget-object p1, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 50079
    iget-object v0, p0, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    .line 50080
    iget-object v0, v0, Lo/isSetterOverride;->ICustomTabsCallback:Ljava/util/List;

    .line 499
    invoke-virtual {p2, p1, v0}, Lo/expectMap;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50101
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 50102
    iget-object v1, v1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 50103
    iget-object v1, v1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50104
    iget-object v1, v1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 50105
    iget-object v1, v1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 50106
    iget v1, v1, Lo/isFullyInitialized;->onPostMessage:I

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50107
    iget-object v1, v1, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 50108
    iget-object v1, v1, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    if-eqz v1, :cond_0

    .line 50109
    iget-object v1, v1, Lo/isSetterOverride;->onPostMessage:Lo/convertLong;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 622
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/raiseEvents;->ICustomTabsService:Lo/valueChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
