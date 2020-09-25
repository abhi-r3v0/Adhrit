.class public final Lo/getAuthTokenProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAuthTokenProvider$onPostMessage;,
        Lo/getAuthTokenProvider$extraCallback;,
        Lo/getAuthTokenProvider$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final ICustomTabsCallback$Stub:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICustomTabsService:Lo/onDataPush$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataPush$onNavigationEvent<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final asBinder:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final asInterface:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataPush$onNavigationEvent<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final newSession:Ljava/util/logging/Logger;

.field public static final onMessageChannelReady:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onRelationshipValidationResult:Lo/addToArray;

.field public static final onTransact:J

.field public static final warmup:Lo/getIdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getIdManager<",
            "Lo/Onboarding$3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    const-class v0, Lo/getAuthTokenProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->newSession:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 74
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 79
    new-instance v0, Lo/getAuthTokenProvider$onPostMessage;

    invoke-direct {v0}, Lo/getAuthTokenProvider$onPostMessage;-><init>()V

    const-string v1, "grpc-timeout"

    .line 80
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->extraCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 85
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "grpc-encoding"

    .line 86
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 91
    new-instance v0, Lo/getAuthTokenProvider$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getAuthTokenProvider$onNavigationEvent;-><init>(B)V

    const-string v2, "grpc-accept-encoding"

    .line 92
    invoke-static {v2, v0}, Lo/onNodeValue;->extraCallback(Ljava/lang/String;Lo/onNodeValue$extraCallback;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 97
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v2, "content-encoding"

    .line 98
    invoke-static {v2, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->onMessageChannelReady:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 103
    new-instance v0, Lo/getAuthTokenProvider$onNavigationEvent;

    invoke-direct {v0, v1}, Lo/getAuthTokenProvider$onNavigationEvent;-><init>(B)V

    const-string v1, "accept-encoding"

    .line 104
    invoke-static {v1, v0}, Lo/onNodeValue;->extraCallback(Ljava/lang/String;Lo/onNodeValue$extraCallback;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 121
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "content-type"

    .line 122
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 127
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "te"

    .line 128
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback$Stub:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 133
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "user-agent"

    .line 134
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getAuthTokenProvider;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 9141
    new-instance v0, Lo/retrieveSettingsData;

    new-instance v1, Lo/retrieveSettingsData$4;

    invoke-direct {v1}, Lo/retrieveSettingsData$4;-><init>()V

    invoke-direct {v0, v1}, Lo/retrieveSettingsData;-><init>(Lo/retrieveSettingsData$onNavigationEvent;)V

    .line 11145
    sget-object v1, Lo/getOsFile$onNavigationEvent;->onMessageChannelReady:Lo/getOsFile$onNavigationEvent;

    if-eqz v1, :cond_0

    .line 11369
    new-instance v1, Lo/retrieveSettingsData;

    iget-object v2, v0, Lo/retrieveSettingsData;->extraCallback:Lo/retrieveSettingsData$onNavigationEvent;

    iget-boolean v3, v0, Lo/retrieveSettingsData;->onMessageChannelReady:Z

    iget v0, v0, Lo/retrieveSettingsData;->onPostMessage:I

    invoke-direct {v1, v2, v3, v0}, Lo/retrieveSettingsData;-><init>(Lo/retrieveSettingsData$onNavigationEvent;ZI)V

    .line 204
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lo/getAuthTokenProvider;->onTransact:J

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 219
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 229
    new-instance v0, Lo/tryScheduleReconnect;

    invoke-direct {v0}, Lo/tryScheduleReconnect;-><init>()V

    sput-object v0, Lo/getAuthTokenProvider;->onRelationshipValidationResult:Lo/addToArray;

    .line 12291
    new-instance v0, Lo/deleteTrackedQuery$onMessageChannelReady;

    const-string v1, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-direct {v0, v1}, Lo/deleteTrackedQuery$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 253
    sput-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery$onMessageChannelReady;

    .line 521
    new-instance v0, Lo/getAuthTokenProvider$3;

    invoke-direct {v0}, Lo/getAuthTokenProvider$3;-><init>()V

    sput-object v0, Lo/getAuthTokenProvider;->ICustomTabsService:Lo/onDataPush$onNavigationEvent;

    .line 543
    new-instance v0, Lo/getAuthTokenProvider$5;

    invoke-direct {v0}, Lo/getAuthTokenProvider$5;-><init>()V

    sput-object v0, Lo/getAuthTokenProvider;->getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;

    .line 596
    new-instance v0, Lo/getAuthTokenProvider$2;

    invoke-direct {v0}, Lo/getAuthTokenProvider$2;-><init>()V

    sput-object v0, Lo/getAuthTokenProvider;->warmup:Lo/getIdManager;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11890
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid authority: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2910
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "authority"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static extraCallback(Lo/getMinKey$ICustomTabsCallback;Z)Lo/moveRedRight;
    .locals 3

    .line 4630
    iget-object v0, p0, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPutObject;

    invoke-interface {v0}, Lo/getPutObject;->onNavigationEvent()Lo/moveRedRight;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 4640
    iget-object p0, p0, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    if-nez p0, :cond_1

    return-object v0

    .line 705
    :cond_1
    new-instance p1, Lo/getAuthTokenProvider$4;

    invoke-direct {p1, v0, p0}, Lo/getAuthTokenProvider$4;-><init>(Lo/moveRedRight;Lo/beginTransaction$onNavigationEvent;)V

    return-object p1

    .line 4650
    :cond_2
    iget-object v0, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    .line 5516
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 5659
    iget-boolean v0, p0, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_4

    .line 731
    new-instance p1, Lo/sendData;

    .line 6650
    iget-object p0, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    .line 731
    sget-object v0, Lo/rotateRight$extraCallback;->extraCallback:Lo/rotateRight$extraCallback;

    invoke-direct {p1, p0, v0}, Lo/sendData;-><init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V

    return-object p1

    :cond_4
    if-nez p1, :cond_5

    .line 734
    new-instance p1, Lo/sendData;

    .line 7650
    iget-object p0, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    .line 734
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-direct {p1, p0, v0}, Lo/sendData;-><init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V

    return-object p1

    :cond_5
    return-object v1
.end method

.method public static extraCallback(Ljava/io/InputStream;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 757
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 760
    sget-object v0, Lo/getAuthTokenProvider;->newSession:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception caught in closeQuietly"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "grpc-java-"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    .line 442
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "1.28.0"

    .line 443
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 4

    .line 743
    :cond_0
    :goto_0
    invoke-interface {p0}, Lo/sendAuthHelper$onMessageChannelReady;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 7757
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7760
    sget-object v1, Lo/getAuthTokenProvider;->newSession:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception caught in closeQuietly"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Lo/deleteTrackedQuery;)Z
    .locals 2

    .line 260
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lo/getAuthTokenProvider;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery$onMessageChannelReady;

    invoke-virtual {p0, v1}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    .line 610
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 611
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 619
    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 9

    .line 587
    new-instance v0, Lo/onRun;

    invoke-direct {v0}, Lo/onRun;-><init>()V

    .line 3082
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lo/onRun;->ICustomTabsCallback:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 4070
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4071
    iput-object p0, v0, Lo/onRun;->onMessageChannelReady:Ljava/lang/String;

    .line 4151
    iget-object v4, v0, Lo/onRun;->onMessageChannelReady:Ljava/lang/String;

    .line 4152
    iget-object v6, v0, Lo/onRun;->ICustomTabsCallback:Ljava/lang/Boolean;

    .line 4158
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 4159
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    .line 4160
    new-instance p0, Lo/onRun$5;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/onRun$5;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p0
.end method

.method public static onPostMessage(I)Lo/emptyMap;
    .locals 2

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 1277
    sget-object v0, Lo/emptyMap$onPostMessage;->warmup:Lo/emptyMap$onPostMessage;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 1296
    sget-object v0, Lo/emptyMap$onPostMessage;->onNavigationEvent:Lo/emptyMap$onPostMessage;

    goto :goto_0

    .line 1294
    :cond_1
    :pswitch_0
    sget-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    goto :goto_0

    .line 1289
    :cond_2
    sget-object v0, Lo/emptyMap$onPostMessage;->getInterfaceDescriptor:Lo/emptyMap$onPostMessage;

    goto :goto_0

    .line 1287
    :cond_3
    sget-object v0, Lo/emptyMap$onPostMessage;->onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

    goto :goto_0

    .line 1285
    :cond_4
    sget-object v0, Lo/emptyMap$onPostMessage;->extraCommand:Lo/emptyMap$onPostMessage;

    goto :goto_0

    .line 1283
    :cond_5
    sget-object v0, Lo/emptyMap$onPostMessage;->warmup:Lo/emptyMap$onPostMessage;

    .line 2224
    :goto_0
    invoke-static {}, Lo/emptyMap;->onMessageChannelReady()Ljava/util/List;

    move-result-object v1

    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 270
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "HTTP status code "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 271
    invoke-virtual {v0, p0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static onPostMessage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v2, v1, :cond_1

    return v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "application/grpc"

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 418
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 426
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_5

    const/16 v1, 0x3b

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v3
.end method
