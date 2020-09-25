.class public Lo/logDataCollectionState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;
.implements Lo/getDataCollectionValueFromSharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/logDataCollectionState$ICustomTabsCallback;,
        Lo/logDataCollectionState$onNavigationEvent;,
        Lo/logDataCollectionState$asInterface;,
        Lo/logDataCollectionState$extraCallback;,
        Lo/logDataCollectionState$onPostMessage;,
        Lo/logDataCollectionState$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final IDLE_INTERRUPT_REASON:Ljava/lang/String; = "connection_idle"

.field private static final IDLE_TIMEOUT:J = 0xea60L

.field private static final INVALID_AUTH_TOKEN_THRESHOLD:J = 0x3L

.field private static final REQUEST_ACTION:Ljava/lang/String; = "a"

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String; = "auth"

.field private static final REQUEST_ACTION_GAUTH:Ljava/lang/String; = "gauth"

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String; = "m"

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String; = "oc"

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String; = "om"

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String; = "o"

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String; = "p"

.field private static final REQUEST_ACTION_QUERY:Ljava/lang/String; = "q"

.field private static final REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String; = "n"

.field private static final REQUEST_ACTION_STATS:Ljava/lang/String; = "s"

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String; = "unauth"

.field private static final REQUEST_AUTHVAR:Ljava/lang/String; = "authvar"

.field private static final REQUEST_COMPOUND_HASH:Ljava/lang/String; = "ch"

.field private static final REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String; = "hs"

.field private static final REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String; = "ps"

.field private static final REQUEST_COUNTERS:Ljava/lang/String; = "c"

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final REQUEST_DATA_HASH:Ljava/lang/String; = "h"

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "r"

.field private static final REQUEST_PATH:Ljava/lang/String; = "p"

.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "b"

.field private static final REQUEST_QUERIES:Ljava/lang/String; = "q"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "s"

.field private static final REQUEST_TAG:Ljava/lang/String; = "t"

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String; = "a"

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String; = "ac"

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String; = "rm"

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String; = "d"

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String; = "c"

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String; = "sd"

.field private static final SERVER_DATA_END_PATH:Ljava/lang/String; = "e"

.field private static final SERVER_DATA_RANGE_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_DATA_START_PATH:Ljava/lang/String; = "s"

.field private static final SERVER_DATA_TAG:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String; = "d"

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String; = "p"

.field private static final SERVER_DATA_WARNINGS:Ljava/lang/String; = "w"

.field private static final SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String; = "server_kill"

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String; = "d"

.field private static final SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY:J = 0x7530L

.field private static final TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String; = "token_refresh"

.field private static connectionIds:J


# instance fields
.field private authToken:Ljava/lang/String;

.field private final authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

.field private cachedHost:Ljava/lang/String;

.field private connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

.field private final context:Lo/setCrashlyticsDataCollectionEnabled;

.field private currentGetTokenAttempt:J

.field private final delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private firstConnection:Z

.field private forceAuthTokenRefresh:Z

.field private hasOnDisconnects:Z

.field private final hostInfo:Lo/grantDataCollectionPermission;

.field private inactivityTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private interruptReasons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidAuthTokenCount:I

.field private lastConnectionEstablishedTime:J

.field private lastSessionId:Ljava/lang/String;

.field private lastWriteTimestamp:J

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/logDataCollectionState$onPostMessage;",
            "Lo/logDataCollectionState$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lo/FileLogStore;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/logDataCollectionState$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/logDataCollectionState$asInterface;",
            ">;"
        }
    .end annotation
.end field

.field private realtime:Lo/waitForAutomaticDataCollectionEnabled;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/logDataCollectionState$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private final retryHelper:Lo/DeliveryMechanism;

.field private writeCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)V
    .locals 3

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/logDataCollectionState;->interruptReasons:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lo/logDataCollectionState;->firstConnection:Z

    .line 251
    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    const-wide/16 v0, 0x0

    .line 252
    iput-wide v0, p0, Lo/logDataCollectionState;->writeCounter:J

    .line 253
    iput-wide v0, p0, Lo/logDataCollectionState;->requestCounter:J

    .line 269
    iput-wide v0, p0, Lo/logDataCollectionState;->currentGetTokenAttempt:J

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lo/logDataCollectionState;->invalidAuthTokenCount:I

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lo/logDataCollectionState;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 279
    iput-object p3, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    .line 280
    iput-object p1, p0, Lo/logDataCollectionState;->context:Lo/setCrashlyticsDataCollectionEnabled;

    .line 281
    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lo/logDataCollectionState;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 282
    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getAuthTokenProvider()Lo/isAutomaticDataCollectionEnabled;

    move-result-object p3

    iput-object p3, p0, Lo/logDataCollectionState;->authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

    .line 283
    iput-object p2, p0, Lo/logDataCollectionState;->hostInfo:Lo/grantDataCollectionPermission;

    .line 284
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    .line 285
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/logDataCollectionState;->requestCBHash:Ljava/util/Map;

    .line 286
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    .line 287
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    .line 288
    new-instance p2, Lo/DeliveryMechanism$ICustomTabsCallback;

    iget-object p3, p0, Lo/logDataCollectionState;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 289
    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getLogger()Lo/deleteLogFile;

    move-result-object v1

    const-string v2, "ConnectionRetryHelper"

    invoke-direct {p2, p3, v1, v2}, Lo/DeliveryMechanism$ICustomTabsCallback;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/deleteLogFile;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 290
    invoke-virtual {p2, v1, v2}, Lo/DeliveryMechanism$ICustomTabsCallback;->withMinDelayAfterFailure(J)Lo/DeliveryMechanism$ICustomTabsCallback;

    move-result-object p2

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    .line 291
    invoke-virtual {p2, v1, v2}, Lo/DeliveryMechanism$ICustomTabsCallback;->withRetryExponent(D)Lo/DeliveryMechanism$ICustomTabsCallback;

    move-result-object p2

    const-wide/16 v1, 0x7530

    .line 292
    invoke-virtual {p2, v1, v2}, Lo/DeliveryMechanism$ICustomTabsCallback;->withMaxDelay(J)Lo/DeliveryMechanism$ICustomTabsCallback;

    move-result-object p2

    const-wide v1, 0x3fe6666666666666L    # 0.7

    .line 293
    invoke-virtual {p2, v1, v2}, Lo/DeliveryMechanism$ICustomTabsCallback;->withJitterFactor(D)Lo/DeliveryMechanism$ICustomTabsCallback;

    move-result-object p2

    .line 294
    invoke-virtual {p2}, Lo/DeliveryMechanism$ICustomTabsCallback;->build()Lo/DeliveryMechanism;

    move-result-object p2

    iput-object p2, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    .line 296
    sget-wide p2, Lo/logDataCollectionState;->connectionIds:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    sput-wide v1, Lo/logDataCollectionState;->connectionIds:J

    .line 297
    new-instance v1, Lo/FileLogStore;

    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getLogger()Lo/deleteLogFile;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pc_"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PersistentConnection"

    invoke-direct {v1, p1, p3, p2}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    .line 298
    iput-object v0, p0, Lo/logDataCollectionState;->lastSessionId:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$1300(Lo/logDataCollectionState;)I
    .locals 0

    .line 34
    iget p0, p0, Lo/logDataCollectionState;->invalidAuthTokenCount:I

    return p0
.end method

.method static synthetic access$1302(Lo/logDataCollectionState;I)I
    .locals 0

    .line 34
    iput p1, p0, Lo/logDataCollectionState;->invalidAuthTokenCount:I

    return p1
.end method

.method static synthetic access$1308(Lo/logDataCollectionState;)I
    .locals 2

    .line 34
    iget v0, p0, Lo/logDataCollectionState;->invalidAuthTokenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/logDataCollectionState;->invalidAuthTokenCount:I

    return v0
.end method

.method static synthetic access$1400(Lo/logDataCollectionState;)Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    return-object p0
.end method

.method static synthetic access$1500(Lo/logDataCollectionState;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/logDataCollectionState;->restoreState()V

    return-void
.end method

.method static synthetic access$1602(Lo/logDataCollectionState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lo/logDataCollectionState;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/logDataCollectionState;->forceAuthTokenRefresh:Z

    return p1
.end method

.method static synthetic access$1800(Lo/logDataCollectionState;)Lo/waitForAutomaticDataCollectionEnabled;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    return-object p0
.end method

.method static synthetic access$1900(Lo/logDataCollectionState;)Lo/DeliveryMechanism;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    return-object p0
.end method

.method static synthetic access$2100(Lo/logDataCollectionState;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lo/logDataCollectionState;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$2300(Lo/logDataCollectionState;Ljava/util/List;Lo/logDataCollectionState$onPostMessage;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/logDataCollectionState;->warnOnListenerWarnings(Ljava/util/List;Lo/logDataCollectionState$onPostMessage;)V

    return-void
.end method

.method static synthetic access$2400(Lo/logDataCollectionState;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2500(Lo/logDataCollectionState;Lo/logDataCollectionState$onPostMessage;)Lo/logDataCollectionState$extraCallback;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/logDataCollectionState;->removeListen(Lo/logDataCollectionState$onPostMessage;)Lo/logDataCollectionState$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2602(Lo/logDataCollectionState;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/logDataCollectionState;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2700(Lo/logDataCollectionState;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/logDataCollectionState;->idleHasTimedOut()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lo/logDataCollectionState;)Lo/FileLogStore;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    return-object p0
.end method

.method static synthetic access$500(Lo/logDataCollectionState;)Lo/logDataCollectionState$ICustomTabsCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    return-object p0
.end method

.method static synthetic access$502(Lo/logDataCollectionState;Lo/logDataCollectionState$ICustomTabsCallback;)Lo/logDataCollectionState$ICustomTabsCallback;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    return-object p1
.end method

.method static synthetic access$600(Lo/logDataCollectionState;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lo/logDataCollectionState;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$608(Lo/logDataCollectionState;)J
    .locals 4

    .line 34
    iget-wide v0, p0, Lo/logDataCollectionState;->currentGetTokenAttempt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/logDataCollectionState;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$700(Lo/logDataCollectionState;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/logDataCollectionState;->tryScheduleReconnect()V

    return-void
.end method

.method static synthetic access$800(Lo/logDataCollectionState;)Lo/isAutomaticDataCollectionEnabled;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/logDataCollectionState;->authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

    return-object p0
.end method

.method private canSendWrites()Z
    .locals 2

    .line 490
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cancelSentTransactions()V
    .locals 5

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    iget-object v1, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 705
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 707
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/logDataCollectionState$asInterface;

    .line 708
    invoke-virtual {v2}, Lo/logDataCollectionState$asInterface;->getRequest()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lo/logDataCollectionState$asInterface;->wasSent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 714
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$asInterface;

    .line 717
    invoke-virtual {v1}, Lo/logDataCollectionState$asInterface;->getOnComplete()Lo/getDataCollectionValueFromManifest;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "disconnected"

    invoke-interface {v1, v3, v2}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private connected()Z
    .locals 2

    .line 473
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Authenticating:Lo/logDataCollectionState$ICustomTabsCallback;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private doIdleCheck()V
    .locals 5

    .line 1187
    invoke-direct {p0}, Lo/logDataCollectionState;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lo/logDataCollectionState;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1189
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1192
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/logDataCollectionState$7;

    invoke-direct {v1, p0}, Lo/logDataCollectionState$7;-><init>(Lo/logDataCollectionState;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1193
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/logDataCollectionState;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    const-string v0, "connection_idle"

    .line 1207
    invoke-virtual {p0, v0}, Lo/logDataCollectionState;->isInterrupted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    invoke-direct {p0}, Lo/logDataCollectionState;->isIdle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lo/setEndIconOnClickListener;->hardAssert(Z)V

    .line 1209
    invoke-virtual {p0, v0}, Lo/logDataCollectionState;->resume(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 985
    invoke-static {p1}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "p"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "d"

    .line 986
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "h"

    .line 988
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleTimestamp(J)V
    .locals 3

    .line 976
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handling timestamp"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 978
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 979
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "serverTimeOffset"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object p1, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {p1, v0}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onServerInfoUpdate(Ljava/util/Map;)V

    return-void
.end method

.method private idleHasTimedOut()Z
    .locals 6

    .line 1225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1226
    invoke-direct {p0}, Lo/logDataCollectionState;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lo/logDataCollectionState;->lastWriteTimestamp:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIdle()Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->requestCBHash:Ljava/util/Map;

    .line 1219
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/logDataCollectionState;->hasOnDisconnects:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    .line 1221
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private nextRequestNumber()J
    .locals 4

    .line 1183
    iget-wide v0, p0, Lo/logDataCollectionState;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/logDataCollectionState;->requestCounter:J

    return-wide v0
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth token revoked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 837
    iput-object p1, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 838
    iput-boolean p1, p0, Lo/logDataCollectionState;->forceAuthTokenRefresh:Z

    .line 839
    iget-object p1, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {p1, p2}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onAuthStatus(Z)V

    .line 841
    iget-object p1, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    invoke-virtual {p1}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleServerMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "d"

    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "t"

    const-string v4, "p"

    const-string v5, "m"

    if-nez v2, :cond_c

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "rm"

    .line 784
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "s"

    if-eqz v2, :cond_7

    .line 785
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 786
    invoke-static {p1}, Lo/setEndIconOnClickListener;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 787
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 788
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lo/setEndIconOnClickListener;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    .line 790
    check-cast v0, Ljava/util/List;

    .line 791
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 793
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "e"

    .line 794
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 795
    invoke-static {v7}, Lo/setEndIconOnClickListener;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    if-eqz v8, :cond_3

    .line 796
    invoke-static {v8}, Lo/setEndIconOnClickListener;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 797
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 798
    new-instance v8, Lo/readCrashlyticsDataCollectionEnabledFromManifest;

    invoke-direct {v8, v7, v9, v4}, Lo/readCrashlyticsDataCollectionEnabledFromManifest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    iget-object p2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p2}, Lo/FileLogStore;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ignoring empty range merge for path "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 803
    :cond_5
    iget-object p1, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {p1, v2, v3, p2}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    :cond_6
    return-void

    :cond_7
    const-string v2, "c"

    .line 805
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 806
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 807
    invoke-static {p1}, Lo/setEndIconOnClickListener;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 808
    invoke-direct {p0, p1}, Lo/logDataCollectionState;->onListenRevoked(Ljava/util/List;)V

    return-void

    :cond_8
    const-string v2, "ac"

    .line 809
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 810
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 811
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 812
    invoke-direct {p0, p1, p2}, Lo/logDataCollectionState;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v0, "sd"

    .line 813
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 814
    invoke-direct {p0, p2}, Lo/logDataCollectionState;->onSecurityDebugPacket(Ljava/util/Map;)V

    return-void

    .line 816
    :cond_a
    iget-object p2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p2}, Lo/FileLogStore;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unrecognized action from server: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 772
    :cond_c
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 774
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 775
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lo/setEndIconOnClickListener;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p1, :cond_d

    .line 778
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_d

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 779
    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ignoring empty merge for path "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 781
    :cond_d
    invoke-static {v2}, Lo/setEndIconOnClickListener;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 782
    iget-object v2, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {v2, v1, v0, p1, p2}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    :cond_e
    return-void
.end method

.method private onListenRevoked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 823
    invoke-direct {p0, p1}, Lo/logDataCollectionState;->removeListens(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 826
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/logDataCollectionState$extraCallback;

    .line 827
    invoke-static {v0}, Lo/logDataCollectionState$extraCallback;->access$1200(Lo/logDataCollectionState$extraCallback;)Lo/getDataCollectionValueFromManifest;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "permission_denied"

    invoke-interface {v0, v2, v1}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/FileLogStore;->info(Ljava/lang/String;)V

    return-void
.end method

.method private putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 999
    invoke-direct {p0, p2, p3, p4}, Lo/logDataCollectionState;->getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 1002
    iget-wide p3, p0, Lo/logDataCollectionState;->writeCounter:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lo/logDataCollectionState;->writeCounter:J

    .line 1004
    iget-object v0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lo/logDataCollectionState$asInterface;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p5, v3}, Lo/logDataCollectionState$asInterface;-><init>(Ljava/lang/String;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-direct {p0}, Lo/logDataCollectionState;->canSendWrites()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1006
    invoke-direct {p0, p3, p4}, Lo/logDataCollectionState;->sendPut(J)V

    .line 1008
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/logDataCollectionState;->lastWriteTimestamp:J

    .line 1009
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method private removeListen(Lo/logDataCollectionState$onPostMessage;)Lo/logDataCollectionState$extraCallback;
    .locals 4

    .line 735
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "removing query "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 737
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but no listener exists."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 742
    :cond_2
    iget-object v0, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/logDataCollectionState$extraCallback;

    .line 743
    iget-object v1, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-object v0
.end method

.method private removeListens(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lo/logDataCollectionState$extraCallback;",
            ">;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removing all listens at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    iget-object v1, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 753
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/logDataCollectionState$onPostMessage;

    .line 754
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/logDataCollectionState$extraCallback;

    .line 755
    invoke-static {v3}, Lo/logDataCollectionState$onPostMessage;->access$1000(Lo/logDataCollectionState$onPostMessage;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$extraCallback;

    .line 761
    iget-object v2, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-virtual {v1}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 764
    :cond_3
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-object v0
.end method

.method private restoreAuth()V
    .locals 4

    .line 924
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "calling restore state"

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v2, Lo/logDataCollectionState$ICustomTabsCallback;->Connecting:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v3, v2, v1

    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    invoke-static {v0, v3, v2}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 931
    iget-object v0, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 932
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not restoring auth because token is null."

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :cond_2
    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 934
    invoke-direct {p0}, Lo/logDataCollectionState;->restoreState()V

    return-void

    .line 936
    :cond_3
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Restoring auth."

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    :cond_4
    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Authenticating:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 938
    invoke-direct {p0}, Lo/logDataCollectionState;->sendAuthAndRestoreState()V

    return-void
.end method

.method private restoreState()V
    .locals 6

    .line 943
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v2, v1, v3

    const-string v2, "Should be connected if we\'re restoring state, but we are: %s"

    invoke-static {v0, v2, v1}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Restoring outstanding listens"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_1
    iget-object v0, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$extraCallback;

    .line 951
    iget-object v2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restoring listen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    :cond_2
    invoke-direct {p0, v1}, Lo/logDataCollectionState;->sendListen(Lo/logDataCollectionState$extraCallback;)V

    goto :goto_1

    .line 955
    :cond_3
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Restoring writes."

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 959
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 960
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 961
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lo/logDataCollectionState;->sendPut(J)V

    goto :goto_2

    .line 965
    :cond_5
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$onNavigationEvent;

    .line 967
    invoke-virtual {v1}, Lo/logDataCollectionState$onNavigationEvent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {v1}, Lo/logDataCollectionState$onNavigationEvent;->getPath()Ljava/util/List;

    move-result-object v3

    .line 969
    invoke-virtual {v1}, Lo/logDataCollectionState$onNavigationEvent;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 970
    invoke-virtual {v1}, Lo/logDataCollectionState$onNavigationEvent;->getOnComplete()Lo/getDataCollectionValueFromManifest;

    move-result-object v1

    .line 966
    invoke-direct {p0, v2, v3, v4, v1}, Lo/logDataCollectionState;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    goto :goto_3

    .line 972
    :cond_6
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/logDataCollectionState$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1165
    invoke-direct {p0, p1, v0, p2, p3}, Lo/logDataCollectionState;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendAuthAndRestoreState()V
    .locals 1

    const/4 v0, 0x1

    .line 854
    invoke-direct {p0, v0}, Lo/logDataCollectionState;->sendAuthHelper(Z)V

    return-void
.end method

.method private sendAuthHelper(Z)V
    .locals 5

    .line 858
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Must be connected to send auth, but was: %s"

    invoke-static {v0, v3, v2}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 859
    iget-object v0, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Auth token must be set to authenticate!"

    invoke-static {v0, v3, v2}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 861
    new-instance v0, Lo/logDataCollectionState$5;

    invoke-direct {v0, p0, p1}, Lo/logDataCollectionState$5;-><init>(Lo/logDataCollectionState;Z)V

    .line 903
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 904
    iget-object v2, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    invoke-static {v2}, Lo/peek;->tryParseFromString(Ljava/lang/String;)Lo/peek;

    move-result-object v2

    const-string v3, "cred"

    if-eqz v2, :cond_2

    .line 906
    invoke-virtual {v2}, Lo/peek;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-virtual {v2}, Lo/peek;->getAuth()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 908
    invoke-virtual {v2}, Lo/peek;->getAuth()Ljava/util/Map;

    move-result-object v2

    const-string v3, "authvar"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "gauth"

    .line 910
    invoke-direct {p0, v2, v1, p1, v0}, Lo/logDataCollectionState;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void

    .line 912
    :cond_2
    iget-object v2, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auth"

    .line 913
    invoke-direct {p0, v2, v1, p1, v0}, Lo/logDataCollectionState;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendConnectStats()V
    .locals 6

    .line 1153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1154
    iget-object v1, p0, Lo/logDataCollectionState;->context:Lo/setCrashlyticsDataCollectionEnabled;

    invoke-virtual {v1}, Lo/setCrashlyticsDataCollectionEnabled;->isPersistenceEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 1157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v1, "persistence.android.enabled"

    .line 1155
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sdk.android."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/logDataCollectionState;->context:Lo/setCrashlyticsDataCollectionEnabled;

    invoke-virtual {v3}, Lo/setCrashlyticsDataCollectionEnabled;->getClientSdkVersion()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v1}, Lo/FileLogStore;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Sending first connection stats"

    invoke-virtual {v1, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    :cond_1
    invoke-direct {p0, v0}, Lo/logDataCollectionState;->sendStats(Ljava/util/Map;)V

    return-void
.end method

.method private sendListen(Lo/logDataCollectionState$extraCallback;)V
    .locals 6

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1054
    invoke-virtual {p1}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object v1

    invoke-static {v1}, Lo/logDataCollectionState$onPostMessage;->access$1000(Lo/logDataCollectionState$onPostMessage;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {p1}, Lo/logDataCollectionState$extraCallback;->getTag()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "q"

    if-eqz v1, :cond_0

    .line 1058
    invoke-static {p1}, Lo/logDataCollectionState$extraCallback;->access$900(Lo/logDataCollectionState$extraCallback;)Lo/logDataCollectionState$onPostMessage;

    move-result-object v3

    invoke-static {v3}, Lo/logDataCollectionState$onPostMessage;->access$1100(Lo/logDataCollectionState$onPostMessage;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "t"

    .line 1059
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_0
    invoke-virtual {p1}, Lo/logDataCollectionState$extraCallback;->getHashFunction()Lo/storeDataCollectionValueInSharedPreferences;

    move-result-object v1

    .line 1063
    invoke-interface {v1}, Lo/storeDataCollectionValueInSharedPreferences;->getSimpleHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-interface {v1}, Lo/storeDataCollectionValueInSharedPreferences;->shouldIncludeCompoundHash()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1066
    invoke-interface {v1}, Lo/storeDataCollectionValueInSharedPreferences;->getCompoundHash()Lo/waitForDataCollectionPermission;

    move-result-object v1

    .line 1068
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    invoke-virtual {v1}, Lo/waitForDataCollectionPermission;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1070
    invoke-static {v5}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1073
    invoke-virtual {v1}, Lo/waitForDataCollectionPermission;->getHashes()Ljava/util/List;

    move-result-object v1

    const-string v5, "hs"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ps"

    .line 1074
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ch"

    .line 1075
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    :cond_2
    new-instance v1, Lo/logDataCollectionState$2;

    invoke-direct {v1, p0, p1}, Lo/logDataCollectionState$2;-><init>(Lo/logDataCollectionState;Lo/logDataCollectionState$extraCallback;)V

    invoke-direct {p0, v2, v0, v1}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 677
    invoke-static {p2}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "p"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    .line 678
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance p2, Lo/logDataCollectionState$4;

    invoke-direct {p2, p0, p4}, Lo/logDataCollectionState$4;-><init>(Lo/logDataCollectionState;Lo/getDataCollectionValueFromManifest;)V

    invoke-direct {p0, p1, v0, p2}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendPut(J)V
    .locals 10

    .line 1014
    invoke-direct {p0}, Lo/logDataCollectionState;->canSendWrites()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    .line 1013
    invoke-static {v0, v2, v1}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    iget-object v0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/logDataCollectionState$asInterface;

    .line 1017
    invoke-virtual {v6}, Lo/logDataCollectionState$asInterface;->getOnComplete()Lo/getDataCollectionValueFromManifest;

    move-result-object v7

    .line 1018
    invoke-virtual {v6}, Lo/logDataCollectionState$asInterface;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-virtual {v6}, Lo/logDataCollectionState$asInterface;->markSent()V

    .line 1023
    invoke-virtual {v6}, Lo/logDataCollectionState$asInterface;->getRequest()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lo/logDataCollectionState$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lo/logDataCollectionState$3;-><init>(Lo/logDataCollectionState;Ljava/lang/String;JLo/logDataCollectionState$asInterface;Lo/getDataCollectionValueFromManifest;)V

    .line 1021
    invoke-direct {p0, v0, v8, v9}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/logDataCollectionState$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 1173
    invoke-direct {p0}, Lo/logDataCollectionState;->nextRequestNumber()J

    move-result-wide v0

    .line 1174
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1175
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "r"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    .line 1176
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "b"

    .line 1177
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object p1, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    invoke-virtual {p1, v2, p2}, Lo/waitForAutomaticDataCollectionEnabled;->sendRequest(Ljava/util/Map;Z)V

    .line 1179
    iget-object p1, p0, Lo/logDataCollectionState;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendStats(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1114
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "c"

    .line 1116
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance p1, Lo/logDataCollectionState$8;

    invoke-direct {p1, p0}, Lo/logDataCollectionState$8;-><init>(Lo/logDataCollectionState;)V

    const-string v1, "s"

    invoke-direct {p0, v1, v0, p1}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void

    .line 1134
    :cond_0
    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not sending stats because stats are empty"

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendUnauth()V
    .locals 4

    .line 918
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Must be connected to send unauth."

    invoke-static {v0, v3, v2}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token must not be set."

    invoke-static {v0, v2, v1}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 920
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unauth"

    invoke-direct {p0, v2, v0, v1}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private sendUnlisten(Lo/logDataCollectionState$extraCallback;)V
    .locals 3

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 723
    invoke-static {p1}, Lo/logDataCollectionState$extraCallback;->access$900(Lo/logDataCollectionState$extraCallback;)Lo/logDataCollectionState$onPostMessage;

    move-result-object v1

    invoke-static {v1}, Lo/logDataCollectionState$onPostMessage;->access$1000(Lo/logDataCollectionState$onPostMessage;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-virtual {p1}, Lo/logDataCollectionState$extraCallback;->getTag()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p1}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object p1

    invoke-static {p1}, Lo/logDataCollectionState$onPostMessage;->access$1100(Lo/logDataCollectionState$onPostMessage;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "q"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 728
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    const-string v1, "n"

    .line 731
    invoke-direct {p0, v1, v0, p1}, Lo/logDataCollectionState;->sendAction(Ljava/lang/String;Ljava/util/Map;Lo/logDataCollectionState$onMessageChannelReady;)V

    return-void
.end method

.method private tryScheduleReconnect()V
    .locals 5

    .line 592
    invoke-virtual {p0}, Lo/logDataCollectionState;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v2, v1, v3

    const-string v2, "Not in disconnected state: %s"

    invoke-static {v0, v2, v1}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-boolean v0, p0, Lo/logDataCollectionState;->forceAuthTokenRefresh:Z

    .line 598
    iget-object v1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Scheduling connection attempt"

    invoke-virtual {v1, v4, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iput-boolean v3, p0, Lo/logDataCollectionState;->forceAuthTokenRefresh:Z

    .line 600
    iget-object v1, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    new-instance v2, Lo/logDataCollectionState$1;

    invoke-direct {v2, p0, v0}, Lo/logDataCollectionState$1;-><init>(Lo/logDataCollectionState;Z)V

    invoke-virtual {v1, v2}, Lo/DeliveryMechanism;->retry(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private upgradeAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 850
    invoke-direct {p0, v0}, Lo/logDataCollectionState;->sendAuthHelper(Z)V

    return-void
.end method

.method private warnOnListenerWarnings(Ljava/util/List;Lo/logDataCollectionState$onPostMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/logDataCollectionState$onPostMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    .line 1140
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\".indexOn\": \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lo/logDataCollectionState$onPostMessage;->access$1100(Lo/logDataCollectionState$onPostMessage;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1142
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-static {p2}, Lo/logDataCollectionState$onPostMessage;->access$1000(Lo/logDataCollectionState$onPostMessage;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1142
    invoke-virtual {v0, p1}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 365
    invoke-direct/range {v0 .. v5}, Lo/logDataCollectionState;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lo/logDataCollectionState;->tryScheduleReconnect()V

    return-void
.end method

.method public injectConnectionFailure()V
    .locals 1

    .line 1231
    iget-object v0, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Lo/waitForAutomaticDataCollectionEnabled;->injectConnectionFailure()V

    :cond_0
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection interrupted for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object p1, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    if-eqz p1, :cond_1

    .line 527
    invoke-virtual {p1}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    goto :goto_0

    .line 530
    :cond_1
    iget-object p1, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    invoke-virtual {p1}, Lo/DeliveryMechanism;->cancel()V

    .line 531
    sget-object p1, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object p1, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 534
    :goto_0
    iget-object p1, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    invoke-virtual {p1}, Lo/DeliveryMechanism;->signalSuccess()V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    .line 552
    iget-object v0, p0, Lo/logDataCollectionState;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public listen(Ljava/util/List;Ljava/util/Map;Lo/storeDataCollectionValueInSharedPreferences;Ljava/lang/Long;Lo/getDataCollectionValueFromManifest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/storeDataCollectionValueInSharedPreferences;",
            "Ljava/lang/Long;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 331
    new-instance v6, Lo/logDataCollectionState$onPostMessage;

    invoke-direct {v6, p1, p2}, Lo/logDataCollectionState$onPostMessage;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 332
    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listening on "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_0
    iget-object p1, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "listen() called twice for same QuerySpec."

    invoke-static {p1, v1, v0}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adding listen query: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_1
    new-instance p1, Lo/logDataCollectionState$extraCallback;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p5

    move-object v2, v6

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lo/logDataCollectionState$extraCallback;-><init>(Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$onPostMessage;Ljava/lang/Long;Lo/storeDataCollectionValueInSharedPreferences;Lo/logDataCollectionState$1;)V

    .line 340
    iget-object p2, p0, Lo/logDataCollectionState;->listens:Ljava/util/Map;

    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 342
    invoke-direct {p0, p1}, Lo/logDataCollectionState;->sendListen(Lo/logDataCollectionState$extraCallback;)V

    .line 344
    :cond_2
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method public merge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 370
    invoke-direct/range {v0 .. v5}, Lo/logDataCollectionState;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public onCacheHost(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lo/logDataCollectionState;->cachedHost:Ljava/lang/String;

    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    .line 397
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "b"

    if-eqz v1, :cond_1

    .line 400
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 401
    iget-object v3, p0, Lo/logDataCollectionState;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/logDataCollectionState$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 406
    invoke-interface {v0, p1}, Lo/logDataCollectionState$onMessageChannelReady;->onResponse(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "error"

    .line 408
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "a"

    .line 410
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 415
    invoke-direct {p0, v0, p1}, Lo/logDataCollectionState;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Ignoring unknown message: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onDisconnect(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V
    .locals 8

    .line 423
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got on disconnect due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_0
    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    .line 426
    iput-boolean v1, p0, Lo/logDataCollectionState;->hasOnDisconnects:Z

    .line 427
    iget-object v0, p0, Lo/logDataCollectionState;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 428
    invoke-direct {p0}, Lo/logDataCollectionState;->cancelSentTransactions()V

    .line 429
    invoke-virtual {p0}, Lo/logDataCollectionState;->shouldReconnect()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lo/logDataCollectionState;->lastConnectionEstablishedTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 439
    :cond_1
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->SERVER_RESET:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_3

    .line 440
    :cond_2
    iget-object p1, p0, Lo/logDataCollectionState;->retryHelper:Lo/DeliveryMechanism;

    invoke-virtual {p1}, Lo/DeliveryMechanism;->signalSuccess()V

    .line 442
    :cond_3
    invoke-direct {p0}, Lo/logDataCollectionState;->tryScheduleReconnect()V

    .line 444
    :cond_4
    iput-wide v2, p0, Lo/logDataCollectionState;->lastConnectionEstablishedTime:J

    .line 445
    iget-object p1, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {p1}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onDisconnect()V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lo/getDataCollectionValueFromManifest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lo/logDataCollectionState;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "oc"

    .line 512
    invoke-direct {p0, v1, p1, v0, p2}, Lo/logDataCollectionState;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lo/logDataCollectionState$onNavigationEvent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v2, "oc"

    move-object v1, v7

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lo/logDataCollectionState$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_0
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lo/logDataCollectionState;->hasOnDisconnects:Z

    .line 497
    invoke-direct {p0}, Lo/logDataCollectionState;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    .line 498
    invoke-direct {p0, v0, p1, p2, p3}, Lo/logDataCollectionState;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lo/logDataCollectionState$onNavigationEvent;

    const/4 v6, 0x0

    const-string v2, "om"

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lo/logDataCollectionState$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :goto_0
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lo/logDataCollectionState;->hasOnDisconnects:Z

    .line 480
    invoke-direct {p0}, Lo/logDataCollectionState;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    .line 481
    invoke-direct {p0, v0, p1, p2, p3}, Lo/logDataCollectionState;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lo/logDataCollectionState$onNavigationEvent;

    const/4 v6, 0x0

    const-string v2, "o"

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lo/logDataCollectionState$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :goto_0
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, "server_kill"

    .line 454
    invoke-virtual {p0, p1}, Lo/logDataCollectionState;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public onReady(JLjava/lang/String;)V
    .locals 4

    .line 305
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onReady"

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lo/logDataCollectionState;->lastConnectionEstablishedTime:J

    .line 307
    invoke-direct {p0, p1, p2}, Lo/logDataCollectionState;->handleTimestamp(J)V

    .line 309
    iget-boolean p1, p0, Lo/logDataCollectionState;->firstConnection:Z

    if-eqz p1, :cond_1

    .line 310
    invoke-direct {p0}, Lo/logDataCollectionState;->sendConnectStats()V

    .line 313
    :cond_1
    invoke-direct {p0}, Lo/logDataCollectionState;->restoreAuth()V

    .line 314
    iput-boolean v1, p0, Lo/logDataCollectionState;->firstConnection:Z

    .line 315
    iput-object p3, p0, Lo/logDataCollectionState;->lastSessionId:Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {p1}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onConnect()V

    return-void
.end method

.method public openNetworkConnection(Ljava/lang/String;)V
    .locals 6

    .line 658
    iget-object v0, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v2, v1, v3

    const-string v2, "Trying to open network connection while in the wrong state: %s"

    invoke-static {v0, v2, v1}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 665
    iget-object v0, p0, Lo/logDataCollectionState;->delegate:Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    invoke-interface {v0, v3}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onAuthStatus(Z)V

    .line 667
    :cond_1
    iput-object p1, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    .line 668
    sget-object p1, Lo/logDataCollectionState$ICustomTabsCallback;->Connecting:Lo/logDataCollectionState$ICustomTabsCallback;

    iput-object p1, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 669
    new-instance p1, Lo/waitForAutomaticDataCollectionEnabled;

    iget-object v1, p0, Lo/logDataCollectionState;->context:Lo/setCrashlyticsDataCollectionEnabled;

    iget-object v2, p0, Lo/logDataCollectionState;->hostInfo:Lo/grantDataCollectionPermission;

    iget-object v3, p0, Lo/logDataCollectionState;->cachedHost:Ljava/lang/String;

    iget-object v5, p0, Lo/logDataCollectionState;->lastSessionId:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lo/waitForAutomaticDataCollectionEnabled;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Ljava/lang/String;Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V

    iput-object p1, p0, Lo/logDataCollectionState;->realtime:Lo/waitForAutomaticDataCollectionEnabled;

    .line 671
    invoke-virtual {p1}, Lo/waitForAutomaticDataCollectionEnabled;->open()V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 5

    .line 375
    iget-object v0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "write_canceled"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$asInterface;

    .line 376
    invoke-static {v1}, Lo/logDataCollectionState$asInterface;->access$100(Lo/logDataCollectionState$asInterface;)Lo/getDataCollectionValueFromManifest;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 377
    invoke-static {v1}, Lo/logDataCollectionState$asInterface;->access$100(Lo/logDataCollectionState$asInterface;)Lo/getDataCollectionValueFromManifest;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDataCollectionState$onNavigationEvent;

    .line 381
    invoke-static {v1}, Lo/logDataCollectionState$onNavigationEvent;->access$200(Lo/logDataCollectionState$onNavigationEvent;)Lo/getDataCollectionValueFromManifest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 382
    invoke-static {v1}, Lo/logDataCollectionState$onNavigationEvent;->access$200(Lo/logDataCollectionState$onNavigationEvent;)Lo/getDataCollectionValueFromManifest;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_3
    iget-object v0, p0, Lo/logDataCollectionState;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 386
    iget-object v0, p0, Lo/logDataCollectionState;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lo/logDataCollectionState;->hasOnDisconnects:Z

    .line 392
    :cond_4
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method

.method public put(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 359
    invoke-direct/range {v0 .. v5}, Lo/logDataCollectionState;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 3

    .line 569
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refresh requested"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    .line 574
    invoke-virtual {p0, v0}, Lo/logDataCollectionState;->interrupt(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0, v0}, Lo/logDataCollectionState;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAuthToken(Ljava/lang/String;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refreshed."

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iput-object p1, p0, Lo/logDataCollectionState;->authToken:Ljava/lang/String;

    .line 582
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 584
    invoke-direct {p0}, Lo/logDataCollectionState;->upgradeAuth()V

    return-void

    .line 586
    :cond_0
    invoke-direct {p0}, Lo/logDataCollectionState;->sendUnauth()V

    :cond_1
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection no longer interrupted for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {p0}, Lo/logDataCollectionState;->shouldReconnect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/logDataCollectionState;->connectionState:Lo/logDataCollectionState$ICustomTabsCallback;

    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    if-ne p1, v0, :cond_1

    .line 546
    invoke-direct {p0}, Lo/logDataCollectionState;->tryScheduleReconnect()V

    :cond_1
    return-void
.end method

.method shouldReconnect()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lo/logDataCollectionState;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    const-string v0, "shutdown"

    .line 354
    invoke-virtual {p0, v0}, Lo/logDataCollectionState;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public unlisten(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 459
    new-instance v0, Lo/logDataCollectionState$onPostMessage;

    invoke-direct {v0, p1, p2}, Lo/logDataCollectionState$onPostMessage;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 460
    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/logDataCollectionState;->logger:Lo/FileLogStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "unlistening on "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_0
    invoke-direct {p0, v0}, Lo/logDataCollectionState;->removeListen(Lo/logDataCollectionState$onPostMessage;)Lo/logDataCollectionState$extraCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 466
    invoke-direct {p0}, Lo/logDataCollectionState;->connected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 467
    invoke-direct {p0, p1}, Lo/logDataCollectionState;->sendUnlisten(Lo/logDataCollectionState$extraCallback;)V

    .line 469
    :cond_1
    invoke-direct {p0}, Lo/logDataCollectionState;->doIdleCheck()V

    return-void
.end method
