.class public Lo/onUserId;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "19.4.0"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final config:Lo/buildSingleThreadScheduledExecutorService;

.field private emulatorSettings:Lo/nonNull;

.field private repo:Lo/getCrashlyticsInstallId;

.field private final repoInfo:Lo/getOsDisplayVersionString;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lo/onUserId;->app:Lcom/google/firebase/FirebaseApp;

    .line 142
    iput-object p2, p0, Lo/onUserId;->repoInfo:Lo/getOsDisplayVersionString;

    .line 143
    iput-object p3, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lo/onUserId;)Lo/getCrashlyticsInstallId;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    return-object p0
.end method

.method private assertUnfrozen(Ljava/lang/String;)V
    .locals 3

    .line 331
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calls to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() must be made before any other usage of FirebaseDatabase instance."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForTests(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)Lo/onUserId;
    .locals 1

    .line 134
    new-instance v0, Lo/onUserId;

    invoke-direct {v0, p0, p1, p2}, Lo/onUserId;-><init>(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)V

    .line 135
    invoke-direct {v0}, Lo/onUserId;->ensureRepo()V

    return-object v0
.end method

.method private declared-synchronized ensureRepo()V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lo/onUserId;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v1, p0, Lo/onUserId;->emulatorSettings:Lo/nonNull;

    invoke-virtual {v0, v1}, Lo/getOsDisplayVersionString;->applyEmulatorSettings(Lo/nonNull;)V

    .line 343
    iget-object v0, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    iget-object v1, p0, Lo/onUserId;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-static {v0, v1, p0}, Lo/createAndStoreIid;->createRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;Lo/onUserId;)Lo/getCrashlyticsInstallId;

    move-result-object v0

    iput-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lo/onUserId;
    .locals 2

    .line 56
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v1

    invoke-virtual {v1}, Lo/asGzippedBytes;->getDatabaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/onUserId;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/onUserId;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "You must call FirebaseApp.initialize() first."

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lo/onUserId;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getDatabaseUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getProjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v1

    invoke-virtual {v1}, Lo/asGzippedBytes;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-default-rtdb.firebaseio.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to get FirebaseDatabase instance: Can\'t determine Firebase Database URL. Be sure to include a Project ID in your configuration."

    invoke-direct {p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lo/onUserId;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/onUserId;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/onUserId;
    .locals 4

    const-class v0, Lo/onUserId;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Provided FirebaseApp must not be null."

    if-eqz p0, :cond_2

    .line 115
    const-class v1, Lo/onCustomKey;

    invoke-virtual {p0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onCustomKey;

    const-string v1, "Firebase Database component is not present."

    if-eqz p0, :cond_1

    .line 118
    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->parseUrl(Ljava/lang/String;)Lo/sendReports;

    move-result-object v1

    .line 119
    iget-object v2, v1, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object p1, v1, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-virtual {p0, p1}, Lo/onCustomKey;->get(Lo/getOsDisplayVersionString;)Lo/onUserId;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 120
    :cond_0
    :try_start_1
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Specified Database URL \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is invalid. It should point to the root of a Firebase Database but it includes a path: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2011
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1011
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_3
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string p1, "Failed to get FirebaseDatabase instance: Specify DatabaseURL within FirebaseApp or from your getInstance() call."

    invoke-direct {p0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lo/onUserId;
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0, p0}, Lo/onUserId;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/onUserId;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "You must call FirebaseApp.initialize() first."

    invoke-direct {p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "19.4.0"

    return-object v0
.end method


# virtual methods
.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/onUserId;->app:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getConfig()Lo/buildSingleThreadScheduledExecutorService;
    .locals 1

    .line 349
    iget-object v0, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    return-object v0
.end method

.method public getReference()Lo/isPresent;
    .locals 3

    .line 163
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    .line 164
    new-instance v0, Lo/isPresent;

    iget-object v1, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public getReference(Ljava/lang/String;)Lo/isPresent;
    .locals 2

    .line 175
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    if-eqz p1, :cond_0

    .line 181
    invoke-static {p1}, Lo/UserMetadata;->validateRootPathString(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lo/ExecutorUtils$2;

    invoke-direct {v0, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance p1, Lo/isPresent;

    iget-object v1, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    invoke-direct {p1, v1, v0}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object p1

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass null for argument \'pathString\' in FirebaseDatabase.getReference()"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReferenceFromUrl(Ljava/lang/String;)Lo/isPresent;
    .locals 3

    .line 198
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    if-eqz p1, :cond_1

    .line 205
    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->parseUrl(Ljava/lang/String;)Lo/sendReports;

    move-result-object v0

    .line 206
    iget-object v1, v0, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v2, p0, Lo/onUserId;->emulatorSettings:Lo/nonNull;

    invoke-virtual {v1, v2}, Lo/getOsDisplayVersionString;->applyEmulatorSettings(Lo/nonNull;)V

    .line 208
    iget-object v1, v0, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v1, v1, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    iget-object v2, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v2}, Lo/getCrashlyticsInstallId;->getRepoInfo()Lo/getOsDisplayVersionString;

    move-result-object v2

    iget-object v2, v2, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance p1, Lo/isPresent;

    iget-object v1, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    iget-object v0, v0, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    invoke-direct {p1, v1, v0}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object p1

    .line 209
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") passed to getReference().  URL was expected to match configured Database URL: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lo/onUserId;->getReference()Lo/isPresent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass null for argument \'url\' in FirebaseDatabase.getReferenceFromUrl()"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goOffline()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    .line 255
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/createAndStoreIid;->interrupt(Lo/getCrashlyticsInstallId;)V

    return-void
.end method

.method public goOnline()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    .line 247
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/createAndStoreIid;->resume(Lo/getCrashlyticsInstallId;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 2

    .line 231
    invoke-direct {p0}, Lo/onUserId;->ensureRepo()V

    .line 232
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/onUserId$3;

    invoke-direct {v1, p0}, Lo/onUserId$3;-><init>(Lo/onUserId;)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized setLogLevel(Lo/populateSessionApplicationData$onPostMessage;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setLogLevel"

    .line 267
    invoke-direct {p0, v0}, Lo/onUserId;->assertUnfrozen(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    invoke-virtual {v0, p1}, Lo/buildSingleThreadScheduledExecutorService;->setLogLevel(Lo/populateSessionApplicationData$onPostMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceCacheSizeBytes(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setPersistenceCacheSizeBytes"

    .line 303
    invoke-direct {p0, v0}, Lo/onUserId;->assertUnfrozen(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    invoke-virtual {v0, p1, p2}, Lo/buildSingleThreadScheduledExecutorService;->setPersistenceCacheSizeBytes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setPersistenceEnabled"

    .line 285
    invoke-direct {p0, v0}, Lo/onUserId;->assertUnfrozen(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lo/onUserId;->config:Lo/buildSingleThreadScheduledExecutorService;

    invoke-virtual {v0, p1}, Lo/buildSingleThreadScheduledExecutorService;->setPersistenceEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lo/onUserId;->repo:Lo/getCrashlyticsInstallId;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lo/nonNull;

    invoke-direct {v0, p1, p2}, Lo/nonNull;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/onUserId;->emulatorSettings:Lo/nonNull;

    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call useEmulator() after instance has already been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
