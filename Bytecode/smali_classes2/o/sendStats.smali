.class public Lo/sendStats;
.super Lo/isRed;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendStats$extraCallback;,
        Lo/sendStats$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isRed<",
        "Lo/sendStats;",
        ">;"
    }
.end annotation


# static fields
.field private static mayLaunchUrl:Lo/access$1302;

.field private static final postMessage:J

.field private static final updateVisuals:Lo/onDataPush$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataPush$onNavigationEvent<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledExecutorService;

.field private ICustomTabsService$Stub$Proxy:Lo/access$1302;

.field private IPostMessageService:J

.field private IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

.field private IPostMessageService$Stub$Proxy:I

.field private cancelAll:J

.field private notify:I

.field private requestPostMessageChannel:Ljava/util/concurrent/Executor;

.field private validateRelationship:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 75
    new-instance v0, Lo/access$1302$onNavigationEvent;

    sget-object v1, Lo/access$1302;->onNavigationEvent:Lo/access$1302;

    invoke-direct {v0, v1}, Lo/access$1302$onNavigationEvent;-><init>(Lo/access$1302;)V

    const/16 v1, 0x8

    new-array v1, v1, [Lo/access$608;

    sget-object v2, Lo/access$608;->updateVisuals:Lo/access$608;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/access$608;->extraCommand:Lo/access$608;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/access$608;->requestPostMessageChannel:Lo/access$608;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lo/access$608;->postMessage:Lo/access$608;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lo/access$608;->onRelationshipValidationResult:Lo/access$608;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lo/access$608;->asBinder:Lo/access$608;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Lo/access$608;->ICustomTabsCallback$Stub:Lo/access$608;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sget-object v2, Lo/access$608;->ICustomTabsCallback$Stub$Proxy:Lo/access$608;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 77
    invoke-virtual {v0, v1}, Lo/access$1302$onNavigationEvent;->onNavigationEvent([Lo/access$608;)Lo/access$1302$onNavigationEvent;

    move-result-object v0

    new-array v1, v4, [Lo/access$2700;

    sget-object v2, Lo/access$2700;->onPostMessage:Lo/access$2700;

    aput-object v2, v1, v3

    .line 87
    invoke-virtual {v0, v1}, Lo/access$1302$onNavigationEvent;->onPostMessage([Lo/access$2700;)Lo/access$1302$onNavigationEvent;

    move-result-object v0

    .line 3345
    iget-boolean v1, v0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 3346
    iput-boolean v4, v0, Lo/access$1302$onNavigationEvent;->onPostMessage:Z

    .line 3351
    new-instance v1, Lo/access$1302;

    invoke-direct {v1, v0, v3}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;B)V

    .line 89
    sput-object v1, Lo/sendStats;->mayLaunchUrl:Lo/access$1302;

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/sendStats;->postMessage:J

    .line 92
    new-instance v0, Lo/sendStats$3;

    invoke-direct {v0}, Lo/sendStats$3;-><init>()V

    sput-object v0, Lo/sendStats;->updateVisuals:Lo/onDataPush$onNavigationEvent;

    return-void

    .line 3345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Lo/isRed;-><init>(Ljava/lang/String;)V

    .line 124
    sget-object p1, Lo/sendStats;->mayLaunchUrl:Lo/access$1302;

    iput-object p1, p0, Lo/sendStats;->ICustomTabsService$Stub$Proxy:Lo/access$1302;

    .line 125
    sget-object p1, Lo/sendStats$onMessageChannelReady;->onNavigationEvent:Lo/sendStats$onMessageChannelReady;

    iput-object p1, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    const-wide v0, 0x7fffffffffffffffL

    .line 126
    iput-wide v0, p0, Lo/sendStats;->IPostMessageService:J

    .line 127
    sget-wide v0, Lo/getAuthTokenProvider;->onTransact:J

    iput-wide v0, p0, Lo/sendStats;->cancelAll:J

    const p1, 0xffff

    .line 128
    iput p1, p0, Lo/sendStats;->notify:I

    const p1, 0x7fffffff

    .line 130
    iput p1, p0, Lo/sendStats;->IPostMessageService$Stub$Proxy:I

    return-void
.end method

.method static synthetic asBinder()Lo/onDataPush$onNavigationEvent;
    .locals 1

    .line 57
    sget-object v0, Lo/sendStats;->updateVisuals:Lo/onDataPush$onNavigationEvent;

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lo/sendStats;
    .locals 1

    .line 115
    new-instance v0, Lo/sendStats;

    invoke-direct {v0, p0}, Lo/sendStats;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private onRelationshipValidationResult()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 403
    sget-object v0, Lo/sendStats$4;->extraCallback:[I

    iget-object v1, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 406
    :try_start_0
    iget-object v0, p0, Lo/sendStats;->validateRelationship:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const-string v0, "Default"

    .line 407
    invoke-static {}, Lo/access$2300;->extraCallback()Lo/access$2300;

    move-result-object v1

    .line 2123
    iget-object v1, v1, Lo/access$2300;->onNavigationEvent:Ljava/security/Provider;

    .line 407
    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lo/sendStats;->validateRelationship:Ljavax/net/ssl/SSLSocketFactory;

    .line 410
    :cond_0
    iget-object v0, p0, Lo/sendStats;->validateRelationship:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 412
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown negotiation type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/fixUp;
    .locals 19

    move-object/from16 v0, p0

    .line 369
    iget-wide v1, v0, Lo/sendStats;->IPostMessageService:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 370
    :goto_0
    new-instance v1, Lo/sendStats$extraCallback;

    move-object v2, v1

    iget-object v3, v0, Lo/sendStats;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lo/sendStats;->ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v5, 0x0

    .line 374
    invoke-direct/range {p0 .. p0}, Lo/sendStats;->onRelationshipValidationResult()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lo/sendStats;->ICustomTabsService$Stub$Proxy:Lo/access$1302;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lo/sendStats;->onPostMessage()I

    move-result v9

    iget-wide v11, v0, Lo/sendStats;->IPostMessageService:J

    iget-wide v13, v0, Lo/sendStats;->cancelAll:J

    iget v15, v0, Lo/sendStats;->notify:I

    const/16 v16, 0x0

    iget v5, v0, Lo/sendStats;->IPostMessageService$Stub$Proxy:I

    move/from16 v17, v5

    iget-object v5, v0, Lo/isRed;->extraCommand:Lo/putInternal$onMessageChannelReady;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v18}, Lo/sendStats$extraCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IZJJIZILo/putInternal$onMessageChannelReady;)V

    return-object v1
.end method

.method public final extraCallback()I
    .locals 3

    .line 390
    sget-object v0, Lo/sendStats$4;->extraCallback:[I

    iget-object v1, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method public final bridge synthetic onMessageChannelReady()Lo/getMaxKey;
    .locals 1

    .line 3311
    sget-object v0, Lo/sendStats$onMessageChannelReady;->onMessageChannelReady:Lo/sendStats$onMessageChannelReady;

    iput-object v0, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    return-object p0
.end method

.method public final synthetic onPostMessage(JLjava/util/concurrent/TimeUnit;)Lo/getMaxKey;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2211
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/sendStats;->IPostMessageService:J

    .line 2212
    invoke-static {p1, p2}, Lo/refreshAuthToken;->onNavigationEvent(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/sendStats;->IPostMessageService:J

    .line 2213
    sget-wide v0, Lo/sendStats;->postMessage:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 2215
    iput-wide p1, p0, Lo/sendStats;->IPostMessageService:J

    :cond_1
    return-object p0

    .line 3142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keepalive time must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lo/sendStats;
    .locals 1

    if-eqz p1, :cond_0

    .line 342
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lo/sendStats;->ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scheduledExecutorService"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lo/sendStats;
    .locals 0

    .line 259
    iput-object p1, p0, Lo/sendStats;->validateRelationship:Ljavax/net/ssl/SSLSocketFactory;

    .line 260
    sget-object p1, Lo/sendStats$onMessageChannelReady;->onNavigationEvent:Lo/sendStats$onMessageChannelReady;

    iput-object p1, p0, Lo/sendStats;->IPostMessageService$Stub:Lo/sendStats$onMessageChannelReady;

    return-object p0
.end method

.method public final transportExecutor(Ljava/util/concurrent/Executor;)Lo/sendStats;
    .locals 0

    .line 160
    iput-object p1, p0, Lo/sendStats;->requestPostMessageChannel:Ljava/util/concurrent/Executor;

    return-object p0
.end method
