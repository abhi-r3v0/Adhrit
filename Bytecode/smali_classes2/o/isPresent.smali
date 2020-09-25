.class public Lo/isPresent;
.super Lo/buildReportData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isPresent$onPostMessage;
    }
.end annotation


# static fields
.field private static defaultConfig:Lo/buildSingleThreadScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/buildSingleThreadScheduledExecutorService;)V
    .locals 0

    .line 80
    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->parseUrl(Ljava/lang/String;)Lo/sendReports;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/isPresent;-><init>(Lo/sendReports;Lo/buildSingleThreadScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-void
.end method

.method private constructor <init>(Lo/sendReports;Lo/buildSingleThreadScheduledExecutorService;)V
    .locals 1

    .line 84
    iget-object v0, p1, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-static {p2, v0}, Lo/createAndStoreIid;->getRepo(Lo/getNamedThreadFactory;Lo/getOsDisplayVersionString;)Lo/getCrashlyticsInstallId;

    move-result-object p2

    iget-object p1, p1, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    invoke-direct {p0, p2, p1}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-void
.end method

.method private static declared-synchronized getDefaultConfig()Lo/buildSingleThreadScheduledExecutorService;
    .locals 2

    const-class v0, Lo/isPresent;

    monitor-enter v0

    .line 630
    :try_start_0
    sget-object v1, Lo/isPresent;->defaultConfig:Lo/buildSingleThreadScheduledExecutorService;

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Lo/buildSingleThreadScheduledExecutorService;

    invoke-direct {v1}, Lo/buildSingleThreadScheduledExecutorService;-><init>()V

    sput-object v1, Lo/isPresent;->defaultConfig:Lo/buildSingleThreadScheduledExecutorService;

    .line 633
    :cond_0
    sget-object v1, Lo/isPresent;->defaultConfig:Lo/buildSingleThreadScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static goOffline()V
    .locals 1

    .line 523
    invoke-static {}, Lo/isPresent;->getDefaultConfig()Lo/buildSingleThreadScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lo/isPresent;->goOffline(Lo/buildSingleThreadScheduledExecutorService;)V

    return-void
.end method

.method static goOffline(Lo/buildSingleThreadScheduledExecutorService;)V
    .locals 0

    .line 527
    invoke-static {p0}, Lo/createAndStoreIid;->interrupt(Lo/getNamedThreadFactory;)V

    return-void
.end method

.method public static goOnline()V
    .locals 1

    .line 537
    invoke-static {}, Lo/isPresent;->getDefaultConfig()Lo/buildSingleThreadScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lo/isPresent;->goOnline(Lo/buildSingleThreadScheduledExecutorService;)V

    return-void
.end method

.method static goOnline(Lo/buildSingleThreadScheduledExecutorService;)V
    .locals 0

    .line 541
    invoke-static {p0}, Lo/createAndStoreIid;->resume(Lo/getNamedThreadFactory;)V

    return-void
.end method

.method private setPriorityInternal(Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0}, Lo/UserMetadata;->validateWritablePath(Lo/ExecutorUtils$2;)V

    .line 369
    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p2

    .line 370
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/isPresent$3;

    invoke-direct {v1, p0, p1, p2}, Lo/isPresent$3;-><init>(Lo/isPresent;Lo/LogFileManager$DirectoryProvider;Lo/getSortedCustomAttributes;)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 378
    invoke-virtual {p2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0}, Lo/UserMetadata;->validateWritablePath(Lo/ExecutorUtils$2;)V

    .line 281
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getRightDecorationWidth$onPostMessage;->validateWithObject(Lo/ExecutorUtils$2;Ljava/lang/Object;)V

    .line 282
    invoke-static {p1}, Lo/SystemCurrentTimeProvider;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 283
    invoke-static {p1}, Lo/UserMetadata;->validateWritableObject(Ljava/lang/Object;)V

    .line 284
    invoke-static {p1, p2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 285
    invoke-static {p3}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p2

    .line 286
    iget-object p3, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v0, Lo/isPresent$5;

    invoke-direct {v0, p0, p1, p2}, Lo/isPresent$5;-><init>(Lo/isPresent;Lo/LogFileManager$DirectoryProvider;Lo/getSortedCustomAttributes;)V

    invoke-virtual {p3, v0}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {p2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 412
    invoke-static {p1}, Lo/SystemCurrentTimeProvider;->convertToPlainJavaTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 414
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0, p1}, Lo/UserMetadata;->parseAndValidateUpdate(Lo/ExecutorUtils$2;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lo/ExecutorUtils$1$1;->fromPathMerge(Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    .line 417
    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p2

    .line 418
    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v2, Lo/isPresent$4;

    invoke-direct {v2, p0, v0, p2, p1}, Lo/isPresent$4;-><init>(Lo/isPresent;Lo/ExecutorUtils$1$1;Lo/getSortedCustomAttributes;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {p2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1

    .line 410
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t pass null for argument \'update\' in updateChildren()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lo/isPresent;
    .locals 2

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lo/UserMetadata;->validateRootPathString(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p1}, Lo/UserMetadata;->validatePathString(Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    new-instance v1, Lo/ExecutorUtils$2;

    invoke-direct {v1, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 105
    new-instance v0, Lo/isPresent;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-direct {v0, v1, p1}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 605
    instance-of v0, p1, Lo/isPresent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDatabase()Lo/onUserId;
    .locals 1

    .line 553
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v0}, Lo/getCrashlyticsInstallId;->getDatabase()Lo/onUserId;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lo/isPresent;
    .locals 3

    .line 577
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    new-instance v1, Lo/isPresent;

    iget-object v2, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-direct {v1, v2, v0}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lo/isPresent;
    .locals 4

    .line 588
    new-instance v0, Lo/isPresent;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v2, Lo/ExecutorUtils$2;

    const-string v3, ""

    invoke-direct {v2, v3}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 610
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lo/captureReportData;
    .locals 3

    .line 458
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0}, Lo/UserMetadata;->validateWritablePath(Lo/ExecutorUtils$2;)V

    .line 459
    new-instance v0, Lo/captureReportData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/captureReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public push()Lo/isPresent;
    .locals 4

    .line 118
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v0}, Lo/getCrashlyticsInstallId;->getServerTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/setStorageBucket$onMessageChannelReady;->generatePushChildName(J)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v0

    .line 120
    new-instance v1, Lo/isPresent;

    iget-object v2, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v1
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lo/isPresent;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lo/isPresent$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0, p1}, Lo/isPresent;->setValue(Ljava/lang/Object;Lo/isPresent$onPostMessage;)V

    return-void
.end method

.method public runTransaction(Lo/populateExecutionData$onMessageChannelReady;)V
    .locals 1

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p0, p1, v0}, Lo/isPresent;->runTransaction(Lo/populateExecutionData$onMessageChannelReady;Z)V

    return-void
.end method

.method public runTransaction(Lo/populateExecutionData$onMessageChannelReady;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v0}, Lo/UserMetadata;->validateWritablePath(Lo/ExecutorUtils$2;)V

    .line 488
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/isPresent$1;

    invoke-direct {v1, p0, p1, p2}, Lo/isPresent$1;-><init>(Lo/isPresent;Lo/populateExecutionData$onMessageChannelReady;Z)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t pass null for argument \'handler\' in runTransaction()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setHijackHash(Z)V
    .locals 2

    .line 614
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/isPresent$2;

    invoke-direct {v1, p0, p1}, Lo/isPresent$2;-><init>(Lo/isPresent;Z)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPriority(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p1}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/isPresent;->setPriorityInternal(Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Ljava/lang/Object;Lo/isPresent$onPostMessage;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p1}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/isPresent;->setPriorityInternal(Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lo/isPresent;->setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/isPresent;->setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lo/isPresent$onPostMessage;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lo/isPresent;->setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lo/isPresent$onPostMessage;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/isPresent;->setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 559
    invoke-virtual {p0}, Lo/isPresent;->getParent()Lo/isPresent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/isPresent;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 566
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to URLEncode key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/isPresent;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0}, Lo/isPresent;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateChildren(Ljava/util/Map;Lo/isPresent$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 404
    invoke-direct {p0, p1, p2}, Lo/isPresent;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
