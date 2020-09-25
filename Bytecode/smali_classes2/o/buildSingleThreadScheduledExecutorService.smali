.class public Lo/buildSingleThreadScheduledExecutorService;
.super Lo/getNamedThreadFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/getNamedThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public setAuthTokenProvider(Lo/buildSingleThreadExecutorService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lo/getNamedThreadFactory;->authTokenProvider:Lo/buildSingleThreadExecutorService;

    return-void
.end method

.method public declared-synchronized setDebugLogComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    .line 100
    sget-object v0, Lo/populateSessionApplicationData$onPostMessage;->DEBUG:Lo/populateSessionApplicationData$onPostMessage;

    invoke-virtual {p0, v0}, Lo/buildSingleThreadScheduledExecutorService;->setLogLevel(Lo/populateSessionApplicationData$onPostMessage;)V

    .line 101
    iput-object p1, p0, Lo/getNamedThreadFactory;->loggedComponents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventTarget(Lo/formatId;)V
    .locals 0

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    .line 56
    iput-object p1, p0, Lo/getNamedThreadFactory;->eventTarget:Lo/formatId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFirebaseApp(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    monitor-enter p0

    .line 173
    :try_start_0
    iput-object p1, p0, Lo/getNamedThreadFactory;->firebaseApp:Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogLevel(Lo/populateSessionApplicationData$onPostMessage;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    .line 69
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$asBinder;->$SwitchMap$com$google$firebase$database$Logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 83
    sget-object p1, Lo/deleteLogFile$extraCallback;->NONE:Lo/deleteLogFile$extraCallback;

    iput-object p1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown log level: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    sget-object p1, Lo/deleteLogFile$extraCallback;->ERROR:Lo/deleteLogFile$extraCallback;

    iput-object p1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 77
    :cond_2
    :try_start_2
    sget-object p1, Lo/deleteLogFile$extraCallback;->WARN:Lo/deleteLogFile$extraCallback;

    iput-object p1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 74
    :cond_3
    :try_start_3
    sget-object p1, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    iput-object p1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :cond_4
    :try_start_4
    sget-object p1, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    iput-object p1, p0, Lo/getNamedThreadFactory;->logLevel:Lo/deleteLogFile$extraCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogger(Lo/deleteLogFile;)V
    .locals 0

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    .line 39
    iput-object p1, p0, Lo/getNamedThreadFactory;->logger:Lo/deleteLogFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceCacheSizeBytes(J)V
    .locals 3

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    const-wide/32 v0, 0x100000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x6400000

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 169
    iput-wide p1, p0, Lo/getNamedThreadFactory;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string p2, "Firebase Database currently doesn\'t support a cache size larger than 100MB"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_1
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string p2, "The minimum cache size must be at least 1MB"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    .line 142
    iput-boolean p1, p0, Lo/getNamedThreadFactory;->persistenceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRunLoop(Lo/migrateLegacyId;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/getNamedThreadFactory;->runLoop:Lo/migrateLegacyId;

    return-void
.end method

.method public declared-synchronized setSessionPersistenceKey(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lo/buildSingleThreadScheduledExecutorService;->assertUnfrozen()V

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lo/getNamedThreadFactory;->persistenceKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session identifier is not allowed to be empty or null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
