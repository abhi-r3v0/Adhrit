.class public Lo/getNamedThreadFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_CACHE_SIZE:J = 0xa00000L


# instance fields
.field protected authTokenProvider:Lo/buildSingleThreadExecutorService;

.field protected cacheSize:J

.field protected eventTarget:Lo/formatId;

.field protected firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private forcedPersistenceManager:Lo/NativeSessionFileGzipper;

.field private frozen:Z

.field protected logLevel:Lo/deleteLogFile$extraCallback;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lo/deleteLogFile;

.field protected persistenceEnabled:Z

.field protected persistenceKey:Ljava/lang/String;

.field private platform:Lo/IdManager;

.field protected runLoop:Lo/migrateLegacyId;

.field private stopped:Z

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    iput-object v0, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;

    const-wide/32 v0, 0xa00000

    .line 48
    iput-wide v0, p0, Lo/getNamedThreadFactory;->cacheSize:J

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lo/getNamedThreadFactory;->frozen:Z

    .line 52
    iput-boolean v0, p0, Lo/getNamedThreadFactory;->stopped:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Firebase/5/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lo/onUserId;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensureAuthTokenProvider()V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/getNamedThreadFactory;->authTokenProvider:Lo/buildSingleThreadExecutorService;

    if-eqz v0, :cond_0

    return-void

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must register an authTokenProvider before initializing Context."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureEventTarget()V
    .locals 1

    .line 235
    iget-object v0, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/IdManager;->newEventTarget(Lo/getNamedThreadFactory;)Lo/formatId;

    move-result-object v0

    iput-object v0, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;

    :cond_0
    return-void
.end method

.method private ensureLogger()V
    .locals 3

    .line 223
    iget-object v0, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    iget-object v1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;

    iget-object v2, p0, Lo/getNamedThreadFactory;->loggedComponents:Ljava/util/List;

    invoke-interface {v0, p0, v1, v2}, Lo/IdManager;->newLogger(Lo/getNamedThreadFactory;Lo/deleteLogFile$extraCallback;Ljava/util/List;)Lo/deleteLogFile;

    move-result-object v0

    iput-object v0, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;

    :cond_0
    return-void
.end method

.method private ensureRunLoop()V
    .locals 1

    .line 229
    iget-object v0, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lo/getNamedThreadFactory;->platform:Lo/IdManager;

    invoke-interface {v0, p0}, Lo/IdManager;->newRunLoop(Lo/getNamedThreadFactory;)Lo/migrateLegacyId;

    move-result-object v0

    iput-object v0, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    :cond_0
    return-void
.end method

.method private ensureSessionIdentifier()V
    .locals 1

    .line 252
    iget-object v0, p0, Lo/getNamedThreadFactory;->persistenceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default"

    .line 253
    iput-object v0, p0, Lo/getNamedThreadFactory;->persistenceKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private ensureUserAgent()V
    .locals 1

    .line 241
    iget-object v0, p0, Lo/getNamedThreadFactory;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/IdManager;->getUserAgent(Lo/getNamedThreadFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getNamedThreadFactory;->buildUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getNamedThreadFactory;->userAgent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 213
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getRunLoop()Lo/migrateLegacyId;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lo/SessionReportingCoordinator;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lo/SessionReportingCoordinator;

    invoke-virtual {v0}, Lo/SessionReportingCoordinator;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPlatform()Lo/IdManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/getNamedThreadFactory;->platform:Lo/IdManager;

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lo/getNamedThreadFactory;->initializeAndroidPlatform()V

    .line 60
    :cond_0
    iget-object v0, p0, Lo/getNamedThreadFactory;->platform:Lo/IdManager;

    return-object v0
.end method

.method private initServices()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureLogger()V

    .line 93
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    .line 94
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureUserAgent()V

    .line 96
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureEventTarget()V

    .line 97
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureRunLoop()V

    .line 98
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureSessionIdentifier()V

    .line 99
    invoke-direct {p0}, Lo/getNamedThreadFactory;->ensureAuthTokenProvider()V

    return-void
.end method

.method private declared-synchronized initializeAndroidPlatform()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v0, Lo/populateFrameData;

    iget-object v1, p0, Lo/getNamedThreadFactory;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lo/populateFrameData;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lo/getNamedThreadFactory;->platform:Lo/IdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$wrapAuthTokenProvider$0(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;ZLo/isAutomaticDataCollectionEnabled$onPostMessage;)V
    .locals 1

    .line 272
    new-instance v0, Lo/getNamedThreadFactory$2;

    invoke-direct {v0, p1, p3}, Lo/getNamedThreadFactory$2;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/isAutomaticDataCollectionEnabled$onPostMessage;)V

    invoke-interface {p0, p2, v0}, Lo/buildSingleThreadExecutorService;->getToken(ZLo/buildSingleThreadExecutorService$onNavigationEvent;)V

    return-void
.end method

.method private restartServices()V
    .locals 1

    .line 103
    iget-object v0, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;

    invoke-interface {v0}, Lo/formatId;->restart()V

    .line 104
    iget-object v0, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    invoke-interface {v0}, Lo/migrateLegacyId;->restart()V

    return-void
.end method

.method private static wrapAuthTokenProvider(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lo/isAutomaticDataCollectionEnabled;
    .locals 0

    .line 271
    invoke-static {p0, p1}, Lo/ExecutorUtils$1;->lambdaFactory$(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lo/isAutomaticDataCollectionEnabled;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forcePersistenceManager(Lo/NativeSessionFileGzipper;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lo/getNamedThreadFactory;->forcedPersistenceManager:Lo/NativeSessionFileGzipper;

    return-void
.end method

.method declared-synchronized freeze()V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->frozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lo/getNamedThreadFactory;->frozen:Z

    .line 78
    invoke-direct {p0}, Lo/getNamedThreadFactory;->initServices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthTokenProvider()Lo/buildSingleThreadExecutorService;
    .locals 1

    .line 204
    iget-object v0, p0, Lo/getNamedThreadFactory;->authTokenProvider:Lo/buildSingleThreadExecutorService;

    return-object v0
.end method

.method public getConnectionContext()Lo/setCrashlyticsDataCollectionEnabled;
    .locals 10

    .line 141
    new-instance v9, Lo/setCrashlyticsDataCollectionEnabled;

    .line 142
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getLogger()Lo/deleteLogFile;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getAuthTokenProvider()Lo/buildSingleThreadExecutorService;

    move-result-object v0

    invoke-direct {p0}, Lo/getNamedThreadFactory;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v2}, Lo/getNamedThreadFactory;->wrapAuthTokenProvider(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lo/isAutomaticDataCollectionEnabled;

    move-result-object v2

    .line 144
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 145
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->isPersistenceEnabled()Z

    move-result v4

    .line 146
    invoke-static {}, Lo/onUserId;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lo/getNamedThreadFactory;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 148
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/setCrashlyticsDataCollectionEnabled;-><init>(Lo/deleteLogFile;Lo/isAutomaticDataCollectionEnabled;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public getEventTarget()Lo/formatId;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;

    return-object v0
.end method

.method public getLogLevel()Lo/deleteLogFile$extraCallback;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lo/FileLogStore;
    .locals 2

    .line 133
    new-instance v0, Lo/FileLogStore;

    iget-object v1, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;

    invoke-direct {v0, v1, p1}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lo/FileLogStore;
    .locals 2

    .line 137
    new-instance v0, Lo/FileLogStore;

    iget-object v1, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;

    invoke-direct {v0, v1, p1, p2}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger()Lo/deleteLogFile;
    .locals 1

    .line 129
    iget-object v0, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;

    return-object v0
.end method

.method public getOptDebugLogComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/getNamedThreadFactory;->loggedComponents:Ljava/util/List;

    return-object v0
.end method

.method public getPersistenceCacheSizeBytes()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lo/getNamedThreadFactory;->cacheSize:J

    return-wide v0
.end method

.method getPersistenceManager(Ljava/lang/String;)Lo/NativeSessionFileGzipper;
    .locals 1

    .line 154
    iget-object v0, p0, Lo/getNamedThreadFactory;->forcedPersistenceManager:Lo/NativeSessionFileGzipper;

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->persistenceEnabled:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lo/getNamedThreadFactory;->platform:Lo/IdManager;

    invoke-interface {v0, p0, p1}, Lo/IdManager;->createPersistenceManager(Lo/getNamedThreadFactory;Ljava/lang/String;)Lo/NativeSessionFileGzipper;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    new-instance p1, Lo/gzipInputStream;

    invoke-direct {p1}, Lo/gzipInputStream;-><init>()V

    return-object p1
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    invoke-interface {v0}, Lo/IdManager;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunLoop()Lo/migrateLegacyId;
    .locals 1

    .line 188
    iget-object v0, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 1

    .line 288
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    invoke-interface {v0}, Lo/IdManager;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPersistenceKey()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/getNamedThreadFactory;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lo/getNamedThreadFactory;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->frozen:Z

    return v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->persistenceEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->stopped:Z

    return v0
.end method

.method public newPersistentConnection(Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;
    .locals 2

    .line 209
    invoke-direct {p0}, Lo/getNamedThreadFactory;->getPlatform()Lo/IdManager;

    move-result-object v0

    invoke-virtual {p0}, Lo/getNamedThreadFactory;->getConnectionContext()Lo/setCrashlyticsDataCollectionEnabled;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lo/IdManager;->newPersistentConnection(Lo/getNamedThreadFactory;Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public requireStarted()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/getNamedThreadFactory;->stopped:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lo/getNamedThreadFactory;->restartServices()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lo/getNamedThreadFactory;->stopped:Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lo/getNamedThreadFactory;->stopped:Z

    .line 109
    iget-object v0, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;

    invoke-interface {v0}, Lo/formatId;->shutdown()V

    .line 110
    iget-object v0, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    invoke-interface {v0}, Lo/migrateLegacyId;->shutdown()V

    return-void
.end method
