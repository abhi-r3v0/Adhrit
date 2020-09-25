.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;
    }
.end annotation


# static fields
.field private static final API_KEY_FORMAT:Ljava/util/regex/Pattern;

.field private static final MAX_DELAY_SEC:J

.field private static store:Lo/parseEventDevice;

.field static syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

.field final fileIoExecutor:Ljava/util/concurrent/Executor;

.field private final firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

.field private final metadata:Lo/parseEventSignal;

.field private final requestDeduplicator:Lo/parseEventExecution;

.field private final rpc:Lo/parseDevice;

.field private syncScheduledOrRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->MAX_DELAY_SEC:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V
    .locals 9

    .line 4
    new-instance v2, Lo/parseEventSignal;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/parseEventSignal;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lo/setIconBitmap;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 7
    invoke-static {}, Lo/setIconBitmap;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lo/parseEventSignal;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/parseEventSignal;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z

    .line 12
    invoke-static {p1}, Lo/parseEventSignal;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lo/parseEventDevice;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/parseEventDevice;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    .line 19
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lo/parseEventSignal;

    .line 20
    new-instance v0, Lo/parseDevice;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v1 .. v6}, Lo/parseDevice;-><init>(Lcom/google/firebase/FirebaseApp;Lo/parseEventSignal;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->rpc:Lo/parseDevice;

    .line 21
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    .line 23
    new-instance p1, Lo/parseEventExecution;

    invoke-direct {p1, p3}, Lo/parseEventExecution;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->requestDeduplicator:Lo/parseEventExecution;

    .line 24
    iput-object p8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 25
    new-instance p1, Lo/toStringMap$newSession;

    invoke-direct {p1, p0}, Lo/toStringMap$newSession;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    return-void
.end method

.method private awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 98
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lo/clearInstancesForTest;->ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 109
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 101
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->resetStorageAndScheduleSync()V

    .line 104
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 105
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 106
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 107
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static awaitTaskAllowOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 111
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    sget-object v1, Lo/setDynamicLinkDomain;->$instance:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/isNewUser;

    invoke-direct {v2, v0}, Lo/isNewUser;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-wide/16 v1, 0x7530

    .line 113
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 114
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getResultOrThrowException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5011
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Task must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getProjectId()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 3007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object p0

    invoke-virtual {p0}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 4035
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3035
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3008
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2008
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1008
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized clearInstancesForTest()V
    .locals 2

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    .line 132
    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 3
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/parseEventExecutionException;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->rationaliseScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5001
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    const/4 v1, 0x0

    .line 5002
    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/getExperimentsToAdd;

    invoke-direct {v2, p0, p1, p2}, Lo/getExperimentsToAdd;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static getResultOrThrowException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Firebase Installations getId Task has timed out."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSubtype()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugLogEnabled()Z
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static isValidApiKeyFormat(Ljava/lang/String;)Z
    .locals 1

    .line 67
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static isValidAppIdFormat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic lambda$awaitTaskAllowOnMainThread$4$FirebaseInstanceId(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static rationaliseScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "*"

    return-object p0
.end method

.method private startSyncIfNecessary()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync()Lo/parseEventDevice$onMessageChannelReady;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lo/parseEventDevice$onMessageChannelReady;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blockingGetMasterToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/parseEventSignal;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteInstanceId()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    invoke-interface {v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->resetStorageAndScheduleSync()V

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 123
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->rationaliseScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getIdWithoutTriggeringSync()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->rpc:Lo/parseDevice;

    invoke-virtual {v1, v0, p1, p2}, Lo/parseDevice;->deleteToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/parseEventDevice;->deleteToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .locals 6

    .line 42
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lo/drawVertical$onPostMessage;

    const-string v4, "FirebaseInstanceId"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lo/drawVertical$onPostMessage;-><init>(Ljava/lang/String;B)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public forceTokenRefresh()V
    .locals 2

    .line 143
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/parseEventDevice;->deleteTokens(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 72
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/parseEventDevice;->getCreationTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getIdWithoutTriggeringSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIdWithoutTriggeringSync()Ljava/lang/String;
    .locals 2

    .line 68
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/parseEventDevice;->setCreationTime(Ljava/lang/String;)J

    .line 69
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    invoke-interface {v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTaskAllowOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/parseEventExecutionException;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 74
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/parseEventSignal;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync()Lo/parseEventDevice$onMessageChannelReady;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lo/parseEventDevice$onMessageChannelReady;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    .line 90
    :cond_0
    invoke-static {v0}, Lo/parseEventDevice$onMessageChannelReady;->getTokenOrNull(Lo/parseEventDevice$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/parseEventExecutionException;

    invoke-interface {p1}, Lo/parseEventExecutionException;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTokenWithoutTriggeringSync()Lo/parseEventDevice$onMessageChannelReady;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/parseEventSignal;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lo/parseEventDevice$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lo/parseEventDevice$onMessageChannelReady;
    .locals 2

    .line 96
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/parseEventDevice;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/parseEventDevice$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public isFcmAutoInitEnabled()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isGmsCorePresent()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lo/parseEventSignal;

    invoke-virtual {v0}, Lo/parseEventSignal;->isGmscorePresent()Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$getInstanceId$1$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    .line 167
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lo/parseEventSignal;

    .line 168
    invoke-virtual {v2}, Lo/parseEventSignal;->getAppVersionCode()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 169
    invoke-virtual/range {v0 .. v5}, Lo/parseEventDevice;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Lo/DependencyCycleException;

    invoke-direct {p1, p3, p4}, Lo/DependencyCycleException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 7002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final synthetic lambda$getInstanceId$2$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->rpc:Lo/parseDevice;

    invoke-virtual {v0, p1, p2, p3}, Lo/parseDevice;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/signInWithCustomToken;

    invoke-direct {v2, p0, p2, p3, p1}, Lo/signInWithCustomToken;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic lambda$getInstanceId$3$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getIdWithoutTriggeringSync()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lo/parseEventDevice$onMessageChannelReady;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lo/parseEventDevice$onMessageChannelReady;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance p1, Lo/DependencyCycleException;

    iget-object p2, v0, Lo/parseEventDevice$onMessageChannelReady;->token:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lo/DependencyCycleException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 6002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p2

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->requestDeduplicator:Lo/parseEventExecution;

    new-instance v1, Lo/parseEvent;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/parseEvent;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lo/parseEventExecution;->getOrStartGetTokenRequest(Ljava/lang/String;Ljava/lang/String;Lo/parseEventExecution$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic lambda$new$0$FirebaseInstanceId()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isFcmAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    :cond_0
    return-void
.end method

.method public declared-synchronized resetStorageAndScheduleSync()V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lo/parseEventDevice;

    invoke-virtual {v0}, Lo/parseEventDevice;->deleteAll()V

    .line 139
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isFcmAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFcmAutoInitEnabled(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->setEnabled(Z)V

    return-void
.end method

.method public declared-synchronized setSyncScheduledOrRunning(Z)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startSync()V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->syncWithDelaySecondsInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncWithDelaySecondsInternal(J)V
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    .line 37
    :try_start_0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->MAX_DELAY_SEC:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 38
    new-instance v3, Lo/parseEventLog;

    invoke-direct {v3, p0, v0, v1}, Lo/parseEventLog;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V

    .line 39
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    .line 40
    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tokenNeedsRefresh(Lo/parseEventDevice$onMessageChannelReady;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lo/parseEventSignal;

    invoke-virtual {v0}, Lo/parseEventSignal;->getAppVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/parseEventDevice$onMessageChannelReady;->needsRefresh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
