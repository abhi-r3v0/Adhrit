.class public Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CONNECTIVITY_ATTEMPT_TIMEOUT_MS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "GrpcCallProvider"

.field private static overrideChannelBuilderSupplier:Lo/reportToJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reportToJson<",
            "Lo/getMaxKey<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private callOptions:Lo/deleteTrackedQuery;

.field private channelTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/insert;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityAttemptTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

.field private final firestoreHeaders:Lo/loadTrackedQueries;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Type;Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;Lo/loadTrackedQueries;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 86
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->context:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    .line 88
    iput-object p4, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->firestoreHeaders:Lo/loadTrackedQueries;

    .line 90
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->initChannelTask()V

    return-void
.end method

.method private clearConnectivityAttemptTimer()V
    .locals 3

    .line 272
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->connectivityAttemptTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "Clearing the connectivityAttemptTimer"

    .line 273
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->connectivityAttemptTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->cancel()V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->connectivityAttemptTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_0
    return-void
.end method

.method private initChannel(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;)Lo/insert;
    .locals 3

    .line 99
    :try_start_0
    invoke-static {p1}, Lo/InstallException;->ICustomTabsCallback(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "GrpcCallProvider"

    const-string v2, "Failed to update ssl context: %s"

    .line 106
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_1
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->overrideChannelBuilderSupplier:Lo/reportToJson;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lo/reportToJson;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMaxKey;

    goto :goto_2

    .line 113
    :cond_0
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getMaxKey;->onPostMessage(Ljava/lang/String;)Lo/getMaxKey;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session;->isSslEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 117
    invoke-virtual {v0}, Lo/getMaxKey;->onMessageChannelReady()Lo/getMaxKey;

    :cond_1
    move-object p2, v0

    :goto_2
    const-wide/16 v0, 0x1e

    .line 123
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Lo/getMaxKey;->onPostMessage(JLjava/util/concurrent/TimeUnit;)Lo/getMaxKey;

    .line 128
    invoke-static {p2}, Lo/getPredecessorEntry;->ICustomTabsCallback(Lo/getMaxKey;)Lo/getPredecessorEntry;

    move-result-object p2

    .line 1135
    iput-object p1, p2, Lo/getPredecessorEntry;->onPostMessage:Landroid/content/Context;

    .line 130
    invoke-virtual {p2}, Lo/getMaxKey;->onNavigationEvent()Lo/insert;

    move-result-object p1

    return-object p1
.end method

.method private initChannelTask()V
    .locals 2

    .line 252
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/component20;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->channelTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic lambda$createClientCall$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/insert;

    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->callOptions:Lo/deleteTrackedQuery;

    invoke-virtual {p2, p1, p0}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p0

    .line 3001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 3002
    invoke-virtual {p1, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$initChannelTask$5(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->onConnectivityStateChange(Lo/insert;)V

    return-void
.end method

.method public static synthetic lambda$initChannelTask$6(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)Lo/insert;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->context:Landroid/content/Context;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    invoke-direct {p0, v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->initChannel(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;)Lo/insert;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, v0}, Lo/component22;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {v0}, Lo/writeInt32;->onMessageChannelReady(Lo/pruneCache;)Lo/writeInt32$ICustomTabsCallback;

    move-result-object v1

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->firestoreHeaders:Lo/loadTrackedQueries;

    .line 260
    invoke-virtual {v1, v2}, Lo/resetKeepAlive;->onNavigationEvent(Lo/loadTrackedQueries;)Lo/resetKeepAlive;

    move-result-object v1

    check-cast v1, Lo/writeInt32$ICustomTabsCallback;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 264
    invoke-virtual {v2}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/resetKeepAlive;->extraCallback(Ljava/util/concurrent/Executor;)Lo/resetKeepAlive;

    move-result-object v1

    check-cast v1, Lo/writeInt32$ICustomTabsCallback;

    .line 2092
    iget-object v1, v1, Lo/resetKeepAlive;->extraCallback:Lo/deleteTrackedQuery;

    .line 265
    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->callOptions:Lo/deleteTrackedQuery;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "Channel successfully reset."

    .line 266
    invoke-static {v1, v2, p0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic lambda$onConnectivityStateChange$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "connectivityAttemptTimer elapsed. Resetting the channel."

    .line 231
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->clearConnectivityAttemptTimer()V

    .line 233
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->resetChannel(Lo/insert;)V

    return-void
.end method

.method public static synthetic lambda$onConnectivityStateChange$2(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->onConnectivityStateChange(Lo/insert;)V

    return-void
.end method

.method public static synthetic lambda$onConnectivityStateChange$3(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/component25;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$resetChannel$4(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Lo/insert;->onMessageChannelReady()Lo/insert;

    .line 245
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->initChannelTask()V

    return-void
.end method

.method private onConnectivityStateChange(Lo/insert;)V
    .locals 6

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p1, v0}, Lo/insert;->extraCallback(Z)Lo/setTransactionSuccessful;

    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current gRPC connectivity state: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "GrpcCallProvider"

    invoke-static {v4, v1, v3}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->clearConnectivityAttemptTimer()V

    .line 224
    sget-object v1, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Setting the connectivityAttemptTimer"

    .line 225
    invoke-static {v4, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    sget-object v2, Lo/CrashlyticsReport$Type$extraCallback;->CONNECTIVITY_ATTEMPT_TIMER:Lo/CrashlyticsReport$Type$extraCallback;

    const-wide/16 v3, 0x3a98

    invoke-static {p0, p1}, Lo/getStoreAssociationHeader;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;

    move-result-object v5

    .line 227
    invoke-virtual {v1, v2, v3, v4, v5}, Lo/CrashlyticsReport$Type;->enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object v1

    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->connectivityAttemptTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lo/component16;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/insert;->onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static overrideChannelBuilder(Lo/reportToJson;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reportToJson<",
            "Lo/getMaxKey<",
            "*>;>;)V"
        }
    .end annotation

    .line 77
    sput-object p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->overrideChannelBuilderSupplier:Lo/reportToJson;

    return-void
.end method

.method private resetChannel(Lo/insert;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/component17;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method createClientCall(Lo/reverseIterator;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->channelTask:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 137
    invoke-virtual {v1}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, p1}, Lo/getStoreAssociationSubHeader;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;)Lo/isDefaultApp;

    move-result-object p1

    .line 136
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method shutdown()V
    .locals 5

    const/4 v0, 0x0

    .line 147
    :try_start_0
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->channelTask:Lcom/google/android/gms/tasks/Task;

    invoke-static {v1}, Lo/clearInstancesForTest;->onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/insert;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    invoke-virtual {v1}, Lo/insert;->onNavigationEvent()Lo/insert;

    const-wide/16 v2, 0x1

    .line 172
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lo/insert;->onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-class v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to gracefully shutdown the gRPC ManagedChannel. Will attempt an immediate shutdown."

    new-array v4, v0, [Ljava/lang/Object;

    .line 173
    invoke-static {v2, v3, v4}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1}, Lo/insert;->onMessageChannelReady()Lo/insert;

    const-wide/16 v2, 0x3c

    .line 181
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lo/insert;->onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    const-class v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to forcefully shutdown the gRPC ManagedChannel."

    new-array v4, v0, [Ljava/lang/Object;

    .line 185
    invoke-static {v2, v3, v4}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    .line 192
    :catch_0
    invoke-virtual {v1}, Lo/insert;->onMessageChannelReady()Lo/insert;

    .line 195
    const-class v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Interrupted while shutting down the gRPC Managed Channel"

    .line 195
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 155
    :catch_1
    const-class v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Interrupted while retrieving the gRPC Managed Channel"

    .line 155
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_2
    move-exception v1

    .line 149
    const-class v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Channel is not initialized, shutdown will just do nothing. Channel initializing run into exception: %s"

    .line 149
    invoke-static {v2, v0, v3}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
