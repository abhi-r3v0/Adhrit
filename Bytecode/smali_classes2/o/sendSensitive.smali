.class Lo/sendSensitive;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resume;
.implements Lo/sendListen$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendSensitive$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final getInterfaceDescriptor:Ljava/util/logging/Logger;

.field private static final mayLaunchUrl:[Lo/nextRequestNumber;

.field private static final warmup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/wasSent;",
            "Lo/emptyMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AudioAttributesCompatParcelizer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final AudioAttributesImplApi21Parcelizer:Z

.field private final AudioAttributesImplBaseParcelizer:Lo/putInternal;

.field final ICustomTabsCallback:Ljava/net/InetSocketAddress;

.field ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Z

.field final ICustomTabsService:Lo/joinBytes;

.field private ICustomTabsService$Stub:Lo/resume$extraCallback;

.field private final ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

.field private final INotificationSideChannel:Lo/onListenRevoked;

.field private INotificationSideChannel$Default:Z

.field private INotificationSideChannel$Stub:Z

.field private INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:Lo/access$1308;

.field private final IPostMessageService$Stub:Lo/buildAncestorWhereClause;

.field private final IPostMessageService$Stub$Proxy:Ljava/util/concurrent/Executor;

.field private final IconCompatParcelizer:Lo/access$1302;

.field private final MediaBrowserCompat:I

.field private RemoteActionCompatParcelizer:Ljavax/net/ssl/HostnameVerifier;

.field final asBinder:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/nextRequestNumber;",
            ">;"
        }
    .end annotation
.end field

.field asInterface:Ljavax/net/ssl/SSLSocketFactory;

.field private cancel:I

.field private final cancelAll:I

.field private final connect:Ljava/lang/Runnable;

.field private final disconnect:Lo/getConnectionUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getConnectionUrl<",
            "Lo/nextRequestNumber;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Lo/serverCacheEstimatedSizeInBytes;

.field private final extraCommand:I

.field private getDefaultImpl:Lo/sendSensitive$onMessageChannelReady;

.field newSession:J

.field private notify:I

.field onMessageChannelReady:Lo/emptyMap;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/nextRequestNumber;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:Z

.field onTransact:J

.field private final postMessage:Ljava/util/Random;

.field private read:Lo/refreshAuthToken;

.field private final requestPostMessageChannel:Lo/getIdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getIdManager<",
            "Lo/Onboarding$3;",
            ">;"
        }
    .end annotation
.end field

.field private setDefaultImpl:Lo/isSecure;

.field private final updateVisuals:Ljava/lang/String;

.field private validateRelationship:Lo/sendListen;

.field private final write:Ljavax/net/SocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37114
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lo/wasSent;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 37115
    sget-object v1, Lo/wasSent;->onMessageChannelReady:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    .line 37116
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37117
    sget-object v1, Lo/wasSent;->extraCallback:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Protocol error"

    .line 37118
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37119
    sget-object v1, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Internal error"

    .line 37120
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37121
    sget-object v1, Lo/wasSent;->onPostMessage:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Flow control error"

    .line 37122
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37123
    sget-object v1, Lo/wasSent;->onTransact:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Stream closed"

    .line 37124
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37125
    sget-object v1, Lo/wasSent;->asBinder:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Frame too large"

    .line 37126
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37127
    sget-object v1, Lo/wasSent;->asInterface:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v3, "Refused stream"

    .line 37128
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37129
    sget-object v1, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v3, "Cancelled"

    .line 37130
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37131
    sget-object v1, Lo/wasSent;->ICustomTabsCallback$Stub:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Compression error"

    .line 37132
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37133
    sget-object v1, Lo/wasSent;->getInterfaceDescriptor:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Connect error"

    .line 37134
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37135
    sget-object v1, Lo/wasSent;->ICustomTabsCallback$Stub$Proxy:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const-string v3, "Enhance your calm"

    .line 37136
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37137
    sget-object v1, Lo/wasSent;->warmup:Lo/wasSent;

    sget-object v2, Lo/emptyMap;->onPostMessage:Lo/emptyMap;

    const-string v3, "Inadequate security"

    .line 37138
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    .line 37137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37139
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 109
    sput-object v0, Lo/sendSensitive;->warmup:Ljava/util/Map;

    .line 110
    const-class v0, Lo/sendSensitive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/sendSensitive;->getInterfaceDescriptor:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lo/nextRequestNumber;

    .line 111
    sput-object v0, Lo/sendSensitive;->mayLaunchUrl:[Lo/nextRequestNumber;

    return-void
.end method

.method constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lo/serverCacheEstimatedSizeInBytes;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IILo/joinBytes;Ljava/lang/Runnable;ILo/putInternal;Z)V
    .locals 4

    move-object v0, p0

    move-object v1, p5

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lo/sendSensitive;->postMessage:Ljava/util/Random;

    .line 155
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    const/4 v2, 0x0

    .line 187
    iput v2, v0, Lo/sendSensitive;->ICustomTabsCallback$Stub:I

    .line 189
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    .line 205
    new-instance v2, Lo/sendSensitive$4;

    invoke-direct {v2, p0}, Lo/sendSensitive$4;-><init>(Lo/sendSensitive;)V

    iput-object v2, v0, Lo/sendSensitive;->disconnect:Lo/getConnectionUrl;

    if-eqz p1, :cond_3

    .line 246
    move-object v2, p1

    check-cast v2, Ljava/net/InetSocketAddress;

    iput-object v2, v0, Lo/sendSensitive;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    move-object v2, p2

    .line 247
    iput-object v2, v0, Lo/sendSensitive;->onPostMessage:Ljava/lang/String;

    move v2, p10

    .line 248
    iput v2, v0, Lo/sendSensitive;->cancelAll:I

    move v2, p11

    .line 249
    iput v2, v0, Lo/sendSensitive;->extraCommand:I

    if-eqz v1, :cond_2

    .line 250
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lo/sendSensitive;->IPostMessageService$Stub$Proxy:Ljava/util/concurrent/Executor;

    .line 251
    new-instance v2, Lo/onListenRevoked;

    invoke-direct {v2, p5}, Lo/onListenRevoked;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, v0, Lo/sendSensitive;->INotificationSideChannel:Lo/onListenRevoked;

    const/4 v1, 0x3

    .line 254
    iput v1, v0, Lo/sendSensitive;->cancel:I

    if-nez p6, :cond_0

    .line 255
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p6

    :goto_0
    iput-object v1, v0, Lo/sendSensitive;->write:Ljavax/net/SocketFactory;

    move-object v1, p7

    .line 256
    iput-object v1, v0, Lo/sendSensitive;->asInterface:Ljavax/net/ssl/SSLSocketFactory;

    move-object v1, p8

    .line 257
    iput-object v1, v0, Lo/sendSensitive;->RemoteActionCompatParcelizer:Ljavax/net/ssl/HostnameVerifier;

    if-eqz p9, :cond_1

    .line 258
    move-object v1, p9

    check-cast v1, Lo/access$1302;

    iput-object v1, v0, Lo/sendSensitive;->IconCompatParcelizer:Lo/access$1302;

    .line 259
    sget-object v1, Lo/getAuthTokenProvider;->warmup:Lo/getIdManager;

    iput-object v1, v0, Lo/sendSensitive;->requestPostMessageChannel:Lo/getIdManager;

    const-string v1, "okhttp"

    move-object v2, p3

    .line 260
    invoke-static {v1, p3}, Lo/getAuthTokenProvider;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/sendSensitive;->updateVisuals:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 261
    iput-object v1, v0, Lo/sendSensitive;->ICustomTabsService:Lo/joinBytes;

    .line 263
    move-object/from16 v1, p13

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, v0, Lo/sendSensitive;->connect:Ljava/lang/Runnable;

    move/from16 v1, p14

    .line 264
    iput v1, v0, Lo/sendSensitive;->MediaBrowserCompat:I

    .line 265
    move-object/from16 v1, p15

    check-cast v1, Lo/putInternal;

    iput-object v1, v0, Lo/sendSensitive;->AudioAttributesImplBaseParcelizer:Lo/putInternal;

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/buildAncestorWhereClause;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Lo/buildAncestorWhereClause;

    move-result-object v1

    iput-object v1, v0, Lo/sendSensitive;->IPostMessageService$Stub:Lo/buildAncestorWhereClause;

    .line 267
    invoke-static {}, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady()Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v1

    sget-object v2, Lo/getClientSdkVersion;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    move-object v3, p4

    .line 268
    invoke-virtual {v1, v2, p4}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v1

    invoke-virtual {v1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v1

    iput-object v1, v0, Lo/sendSensitive;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    move/from16 v1, p16

    .line 269
    iput-boolean v1, v0, Lo/sendSensitive;->AudioAttributesImplApi21Parcelizer:Z

    .line 6325
    iget-object v1, v0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v1

    .line 6336
    monitor-exit v1

    return-void

    .line 3910
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "connectionSpec"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2910
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "executor"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1910
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic ICustomTabsCallback(Lo/sendSensitive;I)I
    .locals 0

    .line 108
    iput p1, p0, Lo/sendSensitive;->ICustomTabsCallback$Stub:I

    return p1
.end method

.method static synthetic ICustomTabsCallback(Lo/sendSensitive;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->IPostMessageService$Stub$Proxy:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/sendSensitive;)Ljavax/net/SocketFactory;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->write:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method private ICustomTabsCallback$Stub()Z
    .locals 3

    const/4 v0, 0x0

    .line 460
    :goto_0
    iget-object v1, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lo/sendSensitive;->ICustomTabsCallback$Stub:I

    if-ge v1, v2, :cond_0

    .line 461
    iget-object v0, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nextRequestNumber;

    .line 462
    invoke-virtual {p0, v0}, Lo/sendSensitive;->onMessageChannelReady(Lo/nextRequestNumber;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/sendSensitive;)Lo/serverCacheEstimatedSizeInBytes;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object p0
.end method

.method static synthetic ICustomTabsService(Lo/sendSensitive;)Lo/refreshAuthToken;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->read:Lo/refreshAuthToken;

    return-object p0
.end method

.method static synthetic ICustomTabsService$Stub$Proxy(Lo/sendSensitive;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->connect:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic IPostMessageService$Stub(Lo/sendSensitive;)Lo/isSecure;
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    return-object v0
.end method

.method static synthetic asBinder(Lo/sendSensitive;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic asInterface(Lo/sendSensitive;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->RemoteActionCompatParcelizer:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method private asInterface()V
    .locals 4

    .line 953
    iget-object v0, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-boolean v0, p0, Lo/sendSensitive;->INotificationSideChannel$Stub:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 959
    iput-boolean v0, p0, Lo/sendSensitive;->INotificationSideChannel$Stub:Z

    .line 961
    iget-object v1, p0, Lo/sendSensitive;->read:Lo/refreshAuthToken;

    if-eqz v1, :cond_2

    .line 962
    invoke-virtual {v1}, Lo/refreshAuthToken;->onMessageChannelReady()V

    .line 964
    sget-object v1, Lo/getAuthTokenProvider;->getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;

    iget-object v2, p0, Lo/sendSensitive;->AudioAttributesCompatParcelizer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2}, Lo/onDataPush;->extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lo/sendSensitive;->AudioAttributesCompatParcelizer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 967
    :cond_2
    iget-object v1, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    if-eqz v1, :cond_3

    .line 968
    invoke-direct {p0}, Lo/sendSensitive;->onTransact()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/isSecure;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 969
    iput-object v1, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    .line 972
    :cond_3
    iget-boolean v1, p0, Lo/sendSensitive;->INotificationSideChannel$Stub$Proxy:Z

    if-nez v1, :cond_4

    .line 975
    iput-boolean v0, p0, Lo/sendSensitive;->INotificationSideChannel$Stub$Proxy:Z

    .line 976
    iget-object v0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    sget-object v1, Lo/wasSent;->onMessageChannelReady:Lo/wasSent;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lo/sendListen;->onNavigationEvent(ILo/wasSent;[B)V

    .line 981
    :cond_4
    iget-object v0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    invoke-virtual {v0}, Lo/sendListen;->close()V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic extraCallback(Lo/sendSensitive;I)I
    .locals 1

    .line 108
    iget v0, p0, Lo/sendSensitive;->notify:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/sendSensitive;->notify:I

    return v0
.end method

.method static extraCallback(Lo/wasSent;)Lo/emptyMap;
    .locals 3

    .line 1046
    sget-object v0, Lo/sendSensitive;->warmup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 1047
    :cond_0
    sget-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown http2 error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lo/wasSent;->newSession:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic extraCallback()Lo/isIdle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->ICustomTabsService$Stub:Lo/resume$extraCallback;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/sendSensitive;Lo/wasSent;Ljava/lang/String;)V
    .locals 1

    .line 36865
    invoke-static {p1}, Lo/sendSensitive;->extraCallback(Lo/wasSent;)Lo/emptyMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lo/sendSensitive;->onPostMessage(ILo/wasSent;Lo/emptyMap;)V

    return-void
.end method

.method static synthetic extraCommand(Lo/sendSensitive;)I
    .locals 0

    .line 108
    iget p0, p0, Lo/sendSensitive;->extraCommand:I

    return p0
.end method

.method static synthetic getInterfaceDescriptor(Lo/sendSensitive;)I
    .locals 0

    .line 108
    iget p0, p0, Lo/sendSensitive;->notify:I

    return p0
.end method

.method static synthetic mayLaunchUrl(Lo/sendSensitive;)Ljava/util/Map;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic newSession(Lo/sendSensitive;)Lo/access$1302;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->IconCompatParcelizer:Lo/access$1302;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    return-object p0
.end method

.method static synthetic onMessageChannelReady()Ljava/util/logging/Logger;
    .locals 1

    .line 108
    sget-object v0, Lo/sendSensitive;->getInterfaceDescriptor:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/sendSensitive;)Lo/access$1308;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->IPostMessageService:Lo/access$1308;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/sendSensitive;Lo/sendSensitive$onMessageChannelReady;)Lo/sendSensitive$onMessageChannelReady;
    .locals 0

    .line 108
    iput-object p1, p0, Lo/sendSensitive;->getDefaultImpl:Lo/sendSensitive$onMessageChannelReady;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/sendSensitive;ILo/wasSent;Lo/emptyMap;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lo/sendSensitive;->onPostMessage(ILo/wasSent;Lo/emptyMap;)V

    return-void
.end method

.method private static onNavigationEvent(Lo/toLog;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1

    .line 730
    invoke-interface {p0, v0, v1, v2}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 28067
    iget-wide v3, v0, Lo/updatePriority;->ICustomTabsCallback:J

    sub-long/2addr v3, v1

    .line 733
    invoke-virtual {v0, v3, v4}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    .line 28747
    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 731
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27548
    new-instance v2, Lo/matches;

    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lo/matches;-><init>([B)V

    .line 731
    invoke-virtual {v2}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onNavigationEvent(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    const-string v0, "\r\n"

    .line 650
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lo/sendSensitive;->write:Ljavax/net/SocketFactory;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    goto :goto_0

    .line 653
    :cond_0
    iget-object v1, p0, Lo/sendSensitive;->write:Ljavax/net/SocketFactory;

    .line 654
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    const/4 v1, 0x1

    .line 656
    invoke-virtual {p2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 658
    invoke-static {p2}, Lo/warn;->extraCallback(Ljava/net/Socket;)Lo/toLog;

    move-result-object v2

    .line 659
    invoke-static {p2}, Lo/warn;->onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;

    move-result-object v3

    invoke-static {v3}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v3

    .line 20710
    new-instance v4, Lo/fromCode$ICustomTabsCallback;

    invoke-direct {v4}, Lo/fromCode$ICustomTabsCallback;-><init>()V

    const-string v5, "https"

    .line 20711
    invoke-virtual {v4, v5}, Lo/fromCode$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;

    move-result-object v4

    .line 20712
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;

    move-result-object v4

    .line 20713
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v4, p1}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady(I)Lo/fromCode$ICustomTabsCallback;

    move-result-object p1

    .line 20714
    invoke-virtual {p1}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback()Lo/fromCode;

    move-result-object p1

    .line 20715
    new-instance v4, Lo/fromException$onNavigationEvent;

    invoke-direct {v4}, Lo/fromException$onNavigationEvent;-><init>()V

    .line 21142
    iput-object p1, v4, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    const-string v5, "Host"

    .line 20716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 21391
    iget-object v7, p1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 20717
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21400
    iget p1, p1, Lo/fromCode;->onMessageChannelReady:I

    .line 20717
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object p1

    const-string v4, "User-Agent"

    iget-object v5, p0, Lo/sendSensitive;->updateVisuals:Ljava/lang/String;

    .line 20718
    invoke-virtual {p1, v4, v5}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    const-string v4, "Proxy-Authorization"

    .line 20722
    invoke-static {p3, p4}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4, p3}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    .line 22277
    :cond_1
    iget-object p3, p1, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz p3, :cond_9

    .line 22278
    new-instance p3, Lo/fromException;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 23048
    iget-object p1, p3, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    const-string v4, "CONNECT %s:%d HTTP/1.1"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 23391
    iget-object v7, p1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    aput-object v7, v6, p4

    .line 23400
    iget p1, p1, Lo/fromCode;->onMessageChannelReady:I

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-interface {v3, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 24074
    iget-object p1, p3, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 24076
    iget-object p1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length p1, p1

    div-int/2addr p1, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_6

    .line 25074
    iget-object v6, p3, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    shl-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    if-ltz v7, :cond_3

    .line 25082
    iget-object v9, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v9, v9

    if-lt v7, v9, :cond_2

    goto :goto_2

    .line 25085
    :cond_2
    iget-object v6, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v8

    .line 669
    :goto_3
    invoke-interface {v3, v6}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v6

    const-string v9, ": "

    .line 670
    invoke-interface {v6, v9}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v6

    .line 26074
    iget-object v9, p3, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_5

    .line 26091
    iget-object v10, v9, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v10, v10

    if-lt v7, v10, :cond_4

    goto :goto_4

    .line 26094
    :cond_4
    iget-object v8, v9, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 671
    :cond_5
    :goto_4
    invoke-interface {v6, v8}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v6

    .line 672
    invoke-interface {v6, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 674
    :cond_6
    invoke-interface {v3, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 676
    invoke-interface {v3}, Lo/filtersNodes;->flush()V

    .line 679
    invoke-static {v2}, Lo/sendSensitive;->onNavigationEvent(Lo/toLog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/fromValue$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/fromValue$extraCallback;

    move-result-object p1

    .line 681
    :cond_7
    invoke-static {v2}, Lo/sendSensitive;->onNavigationEvent(Lo/toLog;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 682
    iget p3, p1, Lo/fromValue$extraCallback;->onPostMessage:I

    const/16 v0, 0xc8

    if-lt p3, v0, :cond_8

    iget p3, p1, Lo/fromValue$extraCallback;->onPostMessage:I

    const/16 v0, 0x12c

    if-ge p3, v0, :cond_8

    return-object p2

    .line 683
    :cond_8
    new-instance p3, Lo/updatePriority;

    invoke-direct {p3}, Lo/updatePriority;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 685
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V

    const-wide/16 v3, 0x400

    .line 686
    invoke-interface {v2, p3, v3, v4}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 688
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/updatePriority;->onMessageChannelReady(Ljava/lang/String;)Lo/updatePriority;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 691
    :goto_5
    :try_start_3
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    const-string p2, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 695
    iget v2, p1, Lo/fromValue$extraCallback;->onPostMessage:I

    .line 698
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p4

    iget-object p1, p1, Lo/fromValue$extraCallback;->onNavigationEvent:Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-virtual {p3}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    .line 695
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 699
    sget-object p2, Lo/emptyMap;->onTransact:Lo/emptyMap;

    invoke-virtual {p2, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 26541
    new-instance p2, Lio/grpc/StatusException;

    invoke-direct {p2, p1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 699
    throw p2

    .line 22277
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "url == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 703
    sget-object p2, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string p3, "Failed trying to connect with proxy"

    invoke-virtual {p2, p3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 27541
    new-instance p2, Lio/grpc/StatusException;

    invoke-direct {p2, p1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 704
    throw p2
.end method

.method static synthetic onNavigationEvent()Lo/getOptInclusiveEnd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/sendSensitive;)Lo/sendSensitive$onMessageChannelReady;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->getDefaultImpl:Lo/sendSensitive$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/serializeObject$ICustomTabsCallback;)Lo/serializeObject$ICustomTabsCallback;
    .locals 0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/sendSensitive;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lo/sendSensitive;->onNavigationEvent(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method private onPostMessage(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/nextRequestNumber;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/nextRequestNumber;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 393
    iget-object v1, v15, Lo/sendSensitive;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    move-object/from16 v14, p3

    .line 394
    invoke-static {v14, v1, v0}, Lo/restoreAuth;->extraCallback(Lo/deleteTrackedQuery;Lo/serverCacheEstimatedSizeInBytes;Lo/getPredecessorKey;)Lo/restoreAuth;

    move-result-object v12

    .line 396
    iget-object v13, v15, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v13

    .line 397
    :try_start_0
    new-instance v16, Lo/nextRequestNumber;

    iget-object v4, v15, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    iget-object v6, v15, Lo/sendSensitive;->IPostMessageService:Lo/access$1308;

    iget-object v7, v15, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    iget v8, v15, Lo/sendSensitive;->cancelAll:I

    iget v9, v15, Lo/sendSensitive;->extraCommand:I

    iget-object v10, v15, Lo/sendSensitive;->onPostMessage:Ljava/lang/String;

    iget-object v11, v15, Lo/sendSensitive;->updateVisuals:Ljava/lang/String;

    iget-object v5, v15, Lo/sendSensitive;->AudioAttributesImplBaseParcelizer:Lo/putInternal;

    iget-boolean v3, v15, Lo/sendSensitive;->AudioAttributesImplApi21Parcelizer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move-object v0, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move/from16 v15, v17

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lo/nextRequestNumber;-><init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/sendListen;Lo/sendSensitive;Lo/access$1308;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lo/restoreAuth;Lo/putInternal;Lo/deleteTrackedQuery;Z)V

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v16

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v13

    .line 412
    :goto_0
    monitor-exit v18

    throw v0

    .line 11910
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10910
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic onPostMessage(Lo/sendSensitive;Lo/serverCacheEstimatedSizeInBytes;)Lo/serverCacheEstimatedSizeInBytes;
    .locals 0

    .line 108
    iput-object p1, p0, Lo/sendSensitive;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object p1
.end method

.method private onPostMessage(ILo/wasSent;Lo/emptyMap;)V
    .locals 7

    .line 869
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    if-nez v1, :cond_0

    .line 871
    iput-object p3, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    .line 872
    iget-object v1, p0, Lo/sendSensitive;->ICustomTabsService$Stub:Lo/resume$extraCallback;

    invoke-interface {v1, p3}, Lo/resume$extraCallback;->onPostMessage(Lo/emptyMap;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 874
    iget-boolean v3, p0, Lo/sendSensitive;->INotificationSideChannel$Stub$Proxy:Z

    if-nez v3, :cond_1

    .line 877
    iput-boolean v1, p0, Lo/sendSensitive;->INotificationSideChannel$Stub$Proxy:Z

    .line 878
    iget-object v3, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    new-array v4, v2, [B

    invoke-virtual {v3, v2, p2, v4}, Lo/sendListen;->onNavigationEvent(ILo/wasSent;[B)V

    .line 881
    :cond_1
    iget-object p2, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 882
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 883
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 884
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 885
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 886
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/nextRequestNumber;

    .line 32108
    iget-object v4, v4, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 886
    sget-object v5, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    new-instance v6, Lo/getPredecessorKey;

    invoke-direct {v6}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {v4, p3, v5, v2, v6}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    .line 888
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/nextRequestNumber;

    invoke-virtual {p0, v3}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    goto :goto_0

    .line 892
    :cond_3
    iget-object p1, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/nextRequestNumber;

    .line 33108
    iget-object v2, p2, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 893
    sget-object v3, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    new-instance v4, Lo/getPredecessorKey;

    invoke-direct {v4}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {v2, p3, v3, v1, v4}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    .line 895
    invoke-virtual {p0, p2}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    goto :goto_1

    .line 897
    :cond_4
    iget-object p1, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 899
    invoke-direct {p0}, Lo/sendSensitive;->asInterface()V

    .line 900
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method static synthetic onRelationshipValidationResult(Lo/sendSensitive;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->asInterface:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method private onTransact()Ljava/lang/Throwable;
    .locals 3

    .line 1020
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    .line 35541
    new-instance v2, Lio/grpc/StatusException;

    invoke-direct {v2, v1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 1022
    monitor-exit v0

    return-object v2

    .line 1024
    :cond_0
    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    .line 36541
    new-instance v2, Lio/grpc/StatusException;

    invoke-direct {v2, v1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 1024
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    .line 1026
    monitor-exit v0

    throw v1
.end method

.method static synthetic onTransact(Lo/sendSensitive;)Z
    .locals 0

    .line 108
    invoke-direct {p0}, Lo/sendSensitive;->ICustomTabsCallback$Stub()Z

    move-result p0

    return p0
.end method

.method static synthetic postMessage(Lo/sendSensitive;)I
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lo/sendSensitive;->notify:I

    return v0
.end method

.method static synthetic requestPostMessageChannel(Lo/sendSensitive;)Lo/isSecure;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    return-object p0
.end method

.method static synthetic updateVisuals(Lo/sendSensitive;)I
    .locals 0

    .line 108
    iget p0, p0, Lo/sendSensitive;->MediaBrowserCompat:I

    return p0
.end method

.method static synthetic warmup(Lo/sendSensitive;)Lo/sendListen;
    .locals 0

    .line 108
    iget-object p0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 749
    iget-object v0, p0, Lo/sendSensitive;->IPostMessageService$Stub:Lo/buildAncestorWhereClause;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Throwable;)V
    .locals 2

    .line 857
    sget-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 858
    sget-object v0, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lo/sendSensitive;->onPostMessage(ILo/wasSent;Lo/emptyMap;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/emptyMap;)V
    .locals 2

    .line 787
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 789
    monitor-exit v0

    return-void

    .line 792
    :cond_0
    iput-object p1, p0, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    .line 793
    iget-object v1, p0, Lo/sendSensitive;->ICustomTabsService$Stub:Lo/resume$extraCallback;

    invoke-interface {v1, p1}, Lo/resume$extraCallback;->onPostMessage(Lo/emptyMap;)V

    .line 794
    invoke-direct {p0}, Lo/sendSensitive;->asInterface()V

    .line 795
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
    .locals 11

    .line 359
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 361
    iget-boolean v1, p0, Lo/sendSensitive;->INotificationSideChannel$Stub:Z

    if-eqz v1, :cond_1

    .line 362
    invoke-direct {p0}, Lo/sendSensitive;->onTransact()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lo/isSecure;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    .line 363
    monitor-exit v0

    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 372
    :cond_2
    iget-object v1, p0, Lo/sendSensitive;->postMessage:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 373
    iget-object v1, p0, Lo/sendSensitive;->requestPostMessageChannel:Lo/getIdManager;

    invoke-interface {v1}, Lo/getIdManager;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Onboarding$3;

    .line 374
    invoke-virtual {v1}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    .line 375
    new-instance v6, Lo/isSecure;

    invoke-direct {v6, v4, v5, v1}, Lo/isSecure;-><init>(JLo/Onboarding$3;)V

    iput-object v6, p0, Lo/sendSensitive;->setDefaultImpl:Lo/isSecure;

    .line 377
    iget-object v1, p0, Lo/sendSensitive;->AudioAttributesImplBaseParcelizer:Lo/putInternal;

    .line 9128
    iget-wide v7, v1, Lo/putInternal;->ICustomTabsCallback:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v1, Lo/putInternal;->ICustomTabsCallback:J

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 380
    iget-object v2, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    long-to-int v7, v6

    long-to-int v5, v4

    invoke-virtual {v2, v3, v7, v5}, Lo/sendListen;->onNavigationEvent(ZII)V

    .line 382
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10095
    monitor-enter v1

    .line 10096
    :try_start_1
    iget-boolean v0, v1, Lo/isSecure;->extraCallback:Z

    if-nez v0, :cond_4

    .line 10097
    iget-object v0, v1, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10098
    monitor-exit v1

    return-void

    .line 10101
    :cond_4
    iget-object v0, v1, Lo/isSecure;->onNavigationEvent:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lo/isSecure;->onNavigationEvent:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lo/isSecure;->extraCallback(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_2

    .line 10102
    :cond_5
    iget-wide v2, v1, Lo/isSecure;->onPostMessage:J

    invoke-static {p1, v2, v3}, Lo/isSecure;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;J)Ljava/lang/Runnable;

    move-result-object p1

    .line 10103
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10104
    invoke-static {p2, p1}, Lo/isSecure;->onMessageChannelReady(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10103
    monitor-exit v1

    throw p1

    .line 8495
    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 382
    monitor-exit v0

    throw p1
.end method

.method final extraCallback(I)Lo/nextRequestNumber;
    .locals 2

    .line 1036
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nextRequestNumber;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1038
    monitor-exit v0

    throw p1
.end method

.method final extraCallback(Lo/nextRequestNumber;)V
    .locals 2

    .line 986
    iget-boolean v0, p0, Lo/sendSensitive;->INotificationSideChannel$Default:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iput-boolean v1, p0, Lo/sendSensitive;->INotificationSideChannel$Default:Z

    .line 989
    iget-object v0, p0, Lo/sendSensitive;->read:Lo/refreshAuthToken;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Lo/refreshAuthToken;->ICustomTabsCallback()V

    .line 34187
    :cond_0
    iget-boolean v0, p1, Lo/getMaxEntry;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lo/sendSensitive;->disconnect:Lo/getConnectionUrl;

    invoke-virtual {v0, p1, v1}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method onMessageChannelReady(Lo/nextRequestNumber;)V
    .locals 3

    .line 12124
    iget v0, p1, Lo/nextRequestNumber;->onMessageChannelReady:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    iget v1, p0, Lo/sendSensitive;->cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-virtual {p0, p1}, Lo/sendSensitive;->onNavigationEvent(Lo/nextRequestNumber;)V

    .line 13108
    iget-object v0, p1, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 437
    iget v1, p0, Lo/sendSensitive;->cancel:I

    invoke-virtual {v0, v1}, Lo/nextRequestNumber$onNavigationEvent;->onNavigationEvent(I)V

    .line 13120
    iget-object v0, p1, Lo/nextRequestNumber;->onNavigationEvent:Lo/reverseIterator;

    .line 13244
    iget-object v0, v0, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 439
    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    if-eq v0, v1, :cond_1

    .line 14120
    iget-object v0, p1, Lo/nextRequestNumber;->onNavigationEvent:Lo/reverseIterator;

    .line 14244
    iget-object v0, v0, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 439
    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    if-ne v0, v1, :cond_2

    .line 15132
    :cond_1
    iget-boolean p1, p1, Lo/nextRequestNumber;->asBinder:Z

    if-eqz p1, :cond_3

    .line 441
    :cond_2
    iget-object p1, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    .line 16094
    :try_start_0
    iget-object v0, p1, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16096
    iget-object p1, p1, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 443
    :cond_3
    :goto_1
    iget p1, p0, Lo/sendSensitive;->cancel:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_4

    const p1, 0x7fffffff

    .line 446
    iput p1, p0, Lo/sendSensitive;->cancel:I

    .line 447
    sget-object v0, Lo/wasSent;->onMessageChannelReady:Lo/wasSent;

    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v2, "Stream ids exhausted"

    .line 448
    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    .line 447
    invoke-direct {p0, p1, v0, v1}, Lo/sendSensitive;->onPostMessage(ILo/wasSent;Lo/emptyMap;)V

    return-void

    :cond_4
    add-int/lit8 p1, p1, 0x2

    .line 450
    iput p1, p0, Lo/sendSensitive;->cancel:I

    return-void

    .line 12511
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "StreamId already assigned"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lo/sendSensitive;->onPostMessage(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/nextRequestNumber;

    move-result-object p1

    return-object p1
.end method

.method onNavigationEvent(Lo/nextRequestNumber;)V
    .locals 2

    .line 1004
    iget-boolean v0, p0, Lo/sendSensitive;->INotificationSideChannel$Default:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1005
    iput-boolean v1, p0, Lo/sendSensitive;->INotificationSideChannel$Default:Z

    .line 1006
    iget-object v0, p0, Lo/sendSensitive;->read:Lo/refreshAuthToken;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Lo/refreshAuthToken;->extraCallback()V

    .line 35187
    :cond_0
    iget-boolean v0, p1, Lo/getMaxEntry;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lo/sendSensitive;->disconnect:Lo/getConnectionUrl;

    invoke-virtual {v0, p1, v1}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method final onNavigationEvent(I)Z
    .locals 3

    .line 1030
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget v1, p0, Lo/sendSensitive;->cancel:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 1032
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
    .locals 8

    if-eqz p1, :cond_4

    .line 479
    check-cast p1, Lo/resume$extraCallback;

    iput-object p1, p0, Lo/sendSensitive;->ICustomTabsService$Stub:Lo/resume$extraCallback;

    .line 481
    iget-boolean p1, p0, Lo/sendSensitive;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 482
    sget-object p1, Lo/getAuthTokenProvider;->getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;

    invoke-static {p1}, Lo/onDataPush;->ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lo/sendSensitive;->AudioAttributesCompatParcelizer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 483
    new-instance p1, Lo/refreshAuthToken;

    new-instance v1, Lo/refreshAuthToken$extraCallback;

    invoke-direct {v1, p0}, Lo/refreshAuthToken$extraCallback;-><init>(Lo/resume;)V

    iget-object v2, p0, Lo/sendSensitive;->AudioAttributesCompatParcelizer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Lo/sendSensitive;->onTransact:J

    iget-wide v5, p0, Lo/sendSensitive;->newSession:J

    iget-boolean v7, p0, Lo/sendSensitive;->ICustomTabsCallback$Stub$Proxy:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lo/refreshAuthToken;-><init>(Lo/refreshAuthToken$onPostMessage;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object p1, p0, Lo/sendSensitive;->read:Lo/refreshAuthToken;

    .line 486
    invoke-virtual {p1}, Lo/refreshAuthToken;->onNavigationEvent()V

    .line 17351
    :cond_0
    iget-object p1, p0, Lo/sendSensitive;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 489
    iget-object p1, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter p1

    .line 490
    :try_start_0
    new-instance v0, Lo/sendListen;

    invoke-direct {v0, p0, v2, v2}, Lo/sendListen;-><init>(Lo/sendListen$onPostMessage;Lo/markSent;Lo/isIdle;)V

    iput-object v0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    .line 492
    new-instance v1, Lo/access$1308;

    invoke-direct {v1, p0, v0}, Lo/access$1308;-><init>(Lo/sendSensitive;Lo/markSent;)V

    iput-object v1, p0, Lo/sendSensitive;->IPostMessageService:Lo/access$1308;

    .line 493
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object p1, p0, Lo/sendSensitive;->INotificationSideChannel:Lo/onListenRevoked;

    new-instance v0, Lo/sendSensitive$3;

    invoke-direct {v0, p0}, Lo/sendSensitive$3;-><init>(Lo/sendSensitive;)V

    invoke-virtual {p1, v0}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 493
    monitor-exit p1

    throw v0

    .line 512
    :cond_2
    iget-object p1, p0, Lo/sendSensitive;->INotificationSideChannel:Lo/onListenRevoked;

    .line 18062
    new-instance v3, Lo/handleTimestamp;

    invoke-direct {v3, p1, p0}, Lo/handleTimestamp;-><init>(Lo/onListenRevoked;Lo/sendListen$onPostMessage;)V

    .line 513
    new-instance p1, Lo/appendFrame;

    invoke-direct {p1}, Lo/appendFrame;-><init>()V

    .line 514
    invoke-static {v3}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v4

    invoke-interface {p1, v4}, Lo/handleNewFrameCount;->ICustomTabsCallback(Lo/filtersNodes;)Lo/markSent;

    move-result-object v4

    .line 516
    iget-object v5, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v5

    .line 517
    :try_start_1
    new-instance v6, Lo/sendListen;

    invoke-direct {v6, p0, v4}, Lo/sendListen;-><init>(Lo/sendListen$onPostMessage;Lo/markSent;)V

    iput-object v6, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    .line 518
    new-instance v4, Lo/access$1308;

    invoke-direct {v4, p0, v6}, Lo/access$1308;-><init>(Lo/sendSensitive;Lo/markSent;)V

    iput-object v4, p0, Lo/sendSensitive;->IPostMessageService:Lo/access$1308;

    .line 519
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 520
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 523
    iget-object v0, p0, Lo/sendSensitive;->INotificationSideChannel:Lo/onListenRevoked;

    new-instance v5, Lo/sendSensitive$2;

    invoke-direct {v5, p0, v4, v3, p1}, Lo/sendSensitive$2;-><init>(Lo/sendSensitive;Ljava/util/concurrent/CountDownLatch;Lo/handleTimestamp;Lo/handleNewFrameCount;)V

    invoke-virtual {v0, v5}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V

    .line 18633
    :try_start_2
    iget-object p1, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18634
    :try_start_3
    iget-object v0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19064
    :try_start_4
    iget-object v3, v0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v3}, Lo/markSent;->onPostMessage()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 19066
    :try_start_5
    iget-object v0, v0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {v0, v3}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 18635
    :goto_1
    new-instance v0, Lo/orderBy;

    invoke-direct {v0}, Lo/orderBy;-><init>()V

    .line 18636
    iget v3, p0, Lo/sendSensitive;->extraCommand:I

    const/4 v5, 0x7

    .line 20037
    invoke-virtual {v0, v5, v3}, Lo/orderBy;->onPostMessage(II)Lo/orderBy;

    .line 18637
    iget-object v3, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    invoke-virtual {v3, v0}, Lo/sendListen;->extraCallback(Lo/orderBy;)V

    .line 18638
    iget v0, p0, Lo/sendSensitive;->extraCommand:I

    const v3, 0xffff

    if-le v0, v3, :cond_3

    .line 18639
    iget-object v0, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    iget v5, p0, Lo/sendSensitive;->extraCommand:I

    sub-int/2addr v5, v3

    int-to-long v5, v5

    invoke-virtual {v0, v1, v5, v6}, Lo/sendListen;->ICustomTabsCallback(IJ)V

    .line 18642
    :cond_3
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 610
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 613
    iget-object p1, p0, Lo/sendSensitive;->INotificationSideChannel:Lo/onListenRevoked;

    new-instance v0, Lo/sendSensitive$1;

    invoke-direct {v0, p0}, Lo/sendSensitive$1;-><init>(Lo/sendSensitive;)V

    invoke-virtual {p1, v0}, Lo/onListenRevoked;->execute(Ljava/lang/Runnable;)V

    return-object v2

    :catchall_1
    move-exception v0

    .line 18642
    :try_start_6
    monitor-exit p1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 610
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :catchall_3
    move-exception p1

    .line 519
    monitor-exit v5

    throw p1

    .line 16910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V
    .locals 3

    .line 925
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nextRequestNumber;

    if-eqz v1, :cond_3

    if-eqz p5, :cond_0

    .line 929
    iget-object p5, p0, Lo/sendSensitive;->validateRelationship:Lo/sendListen;

    sget-object v2, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    invoke-virtual {p5, p1, v2}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 34108
    iget-object p1, v1, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    if-eqz p6, :cond_1

    goto :goto_0

    .line 938
    :cond_1
    new-instance p6, Lo/getPredecessorKey;

    invoke-direct {p6}, Lo/getPredecessorKey;-><init>()V

    .line 934
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p6}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    .line 940
    :cond_2
    invoke-direct {p0}, Lo/sendSensitive;->ICustomTabsCallback$Stub()Z

    move-result p1

    if-nez p1, :cond_3

    .line 941
    invoke-direct {p0}, Lo/sendSensitive;->asInterface()V

    .line 942
    invoke-virtual {p0, v1}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    .line 945
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 6

    .line 800
    invoke-virtual {p0, p1}, Lo/sendSensitive;->ICustomTabsCallback(Lo/emptyMap;)V

    .line 801
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 803
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 805
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 806
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/nextRequestNumber;

    .line 30108
    iget-object v3, v3, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    const/4 v4, 0x0

    .line 806
    new-instance v5, Lo/getPredecessorKey;

    invoke-direct {v5}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {v3, p1, v4, v5}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V

    .line 807
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nextRequestNumber;

    invoke-virtual {p0, v2}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v1, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nextRequestNumber;

    .line 31108
    iget-object v3, v2, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    const/4 v4, 0x1

    .line 811
    new-instance v5, Lo/getPredecessorKey;

    invoke-direct {v5}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {v3, p1, v4, v5}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V

    .line 812
    invoke-virtual {p0, v2}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    goto :goto_1

    .line 814
    :cond_1
    iget-object p1, p0, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 816
    invoke-direct {p0}, Lo/sendSensitive;->asInterface()V

    .line 817
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method final onPostMessage()[Lo/nextRequestNumber;
    .locals 3

    .line 829
    iget-object v0, p0, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lo/sendSensitive;->mayLaunchUrl:[Lo/nextRequestNumber;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/nextRequestNumber;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 831
    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 29105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 741
    iget-object v1, p0, Lo/sendSensitive;->IPostMessageService$Stub:Lo/buildAncestorWhereClause;

    .line 30085
    iget-wide v1, v1, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    const-string v3, "logId"

    .line 742
    invoke-virtual {v0, v3, v1, v2}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/sendSensitive;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    const-string v2, "address"

    .line 743
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
