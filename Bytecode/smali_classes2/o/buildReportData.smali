.class public Lo/buildReportData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final orderByCalled:Z

.field protected final params:Lo/recursiveDelete;

.field protected final path:Lo/ExecutorUtils$2;

.field protected final repo:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    .line 73
    iput-object p2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    .line 74
    sget-object p1, Lo/recursiveDelete;->DEFAULT_PARAMS:Lo/recursiveDelete;

    iput-object p1, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lo/buildReportData;->orderByCalled:Z

    return-void
.end method

.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    .line 65
    iput-object p2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    .line 66
    iput-object p3, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    .line 67
    iput-boolean p4, p0, Lo/buildReportData;->orderByCalled:Z

    .line 68
    invoke-virtual {p3}, Lo/recursiveDelete;->isValid()Z

    move-result p1

    const-string p2, "Validation of queries failed."

    invoke-static {p1, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private addEventRegistration(Lo/addDelayedShutdownHook;)V
    .locals 2

    .line 226
    invoke-static {}, Lo/userDataToJson;->getInstance()Lo/userDataToJson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/userDataToJson;->recordEventRegistration(Lo/addDelayedShutdownHook;)V

    .line 227
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/buildReportData$5;

    invoke-direct {v1, p0, p1}, Lo/buildReportData$5;-><init>(Lo/buildReportData;Lo/addDelayedShutdownHook;)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private endAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;
    .locals 3

    .line 452
    invoke-static {p2}, Lo/UserMetadata;->validateNullableKey(Ljava/lang/String;)V

    .line 453
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for endAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 456
    invoke-static {p2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 457
    :goto_1
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0, p1, p2}, Lo/recursiveDelete;->endAt(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;)Lo/recursiveDelete;

    move-result-object p1

    .line 461
    invoke-direct {p0, p1}, Lo/buildReportData;->validateLimit(Lo/recursiveDelete;)V

    .line 462
    invoke-direct {p0, p1}, Lo/buildReportData;->validateQueryEndpoints(Lo/recursiveDelete;)V

    .line 463
    invoke-virtual {p1}, Lo/recursiveDelete;->isValid()Z

    move-result p2

    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 464
    new-instance p2, Lo/buildReportData;

    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-boolean v2, p0, Lo/buildReportData;->orderByCalled:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object p2

    .line 458
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeEventRegistration(Lo/addDelayedShutdownHook;)V
    .locals 2

    .line 215
    invoke-static {}, Lo/userDataToJson;->getInstance()Lo/userDataToJson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/userDataToJson;->zombifyForRemove(Lo/addDelayedShutdownHook;)V

    .line 216
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/buildReportData$2;

    invoke-direct {v1, p0, p1}, Lo/buildReportData$2;-><init>(Lo/buildReportData;Lo/addDelayedShutdownHook;)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;
    .locals 3

    .line 354
    invoke-static {p2}, Lo/UserMetadata;->validateNullableKey(Ljava/lang/String;)V

    .line 355
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for startAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 361
    invoke-static {p2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 362
    :goto_1
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0, p1, p2}, Lo/recursiveDelete;->startAt(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;)Lo/recursiveDelete;

    move-result-object p1

    .line 363
    invoke-direct {p0, p1}, Lo/buildReportData;->validateLimit(Lo/recursiveDelete;)V

    .line 364
    invoke-direct {p0, p1}, Lo/buildReportData;->validateQueryEndpoints(Lo/recursiveDelete;)V

    .line 365
    invoke-virtual {p1}, Lo/recursiveDelete;->isValid()Z

    move-result p2

    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 366
    new-instance p2, Lo/buildReportData;

    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-boolean v2, p0, Lo/buildReportData;->orderByCalled:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object p2

    .line 359
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateEqualToCall()V
    .locals 2

    .line 123
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateLimit(Lo/recursiveDelete;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/recursiveDelete;->hasAnchoredLimit()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private validateNoOrderByCall()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lo/buildReportData;->orderByCalled:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateQueryEndpoints(Lo/recursiveDelete;)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v0

    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    .line 87
    invoke-virtual {p1}, Lo/recursiveDelete;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexStartValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexStartName()Lo/LogFileManager;

    move-result-object v2

    .line 90
    invoke-static {}, Lo/LogFileManager;->getMinName()Lo/LogFileManager;

    move-result-object v3

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    .line 1001
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 90
    instance-of v1, v1, Lo/open;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lo/recursiveDelete;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexEndValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexEndName()Lo/LogFileManager;

    move-result-object p1

    .line 98
    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, v1, Lo/open;

    if-eqz p1, :cond_4

    goto :goto_3

    .line 99
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return-void

    .line 102
    :cond_6
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v0

    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {p1}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexStartValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {v0}, Lo/toStringMap;->isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    :cond_7
    invoke-virtual {p1}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lo/recursiveDelete;->getIndexEndValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap;->isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lo/CrashlyticsFileMarker;)Lo/CrashlyticsFileMarker;
    .locals 3

    .line 160
    new-instance v0, Lo/DataTransportState;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lo/DataTransportState;-><init>(Lo/getCrashlyticsInstallId;Lo/CrashlyticsFileMarker;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-direct {p0, v0}, Lo/buildReportData;->addEventRegistration(Lo/addDelayedShutdownHook;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lo/populateSessionDeviceData;)V
    .locals 3

    .line 171
    new-instance v0, Lo/writeKeyData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v2, Lo/buildReportData$1;

    invoke-direct {v2, p0, p1}, Lo/buildReportData$1;-><init>(Lo/buildReportData;Lo/populateSessionDeviceData;)V

    .line 187
    invoke-virtual {p0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 171
    invoke-direct {p0, v0}, Lo/buildReportData;->addEventRegistration(Lo/addDelayedShutdownHook;)V

    return-void
.end method

.method public addValueEventListener(Lo/populateSessionDeviceData;)Lo/populateSessionDeviceData;
    .locals 3

    .line 147
    new-instance v0, Lo/writeKeyData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-direct {p0, v0}, Lo/buildReportData;->addEventRegistration(Lo/addDelayedShutdownHook;)V

    return-object p1
.end method

.method public endAt(D)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, p1, p2, v0}, Lo/buildReportData;->endAt(DLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public endAt(DLjava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 433
    new-instance v0, Lo/getLogString;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    invoke-direct {p0, v0, p3}, Lo/buildReportData;->endAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, v0}, Lo/buildReportData;->endAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;
    .locals 2

    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Lo/open;

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/open;-><init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    .line 419
    :goto_0
    invoke-direct {p0, v0, p2}, Lo/buildReportData;->endAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Z)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0}, Lo/buildReportData;->endAt(ZLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public endAt(ZLjava/lang/String;)Lo/buildReportData;
    .locals 2

    .line 448
    new-instance v0, Lo/getLogAsBytes;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/getLogAsBytes;-><init>(Ljava/lang/Boolean;Lo/LogFileManager$DirectoryProvider;)V

    invoke-direct {p0, v0, p2}, Lo/buildReportData;->endAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(D)Lo/buildReportData;
    .locals 1

    .line 487
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 488
    invoke-virtual {p0, p1, p2}, Lo/buildReportData;->startAt(D)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/buildReportData;->endAt(D)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(DLjava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 528
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lo/buildReportData;->startAt(DLjava/lang/String;)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/buildReportData;->endAt(DLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 475
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 476
    invoke-virtual {p0, p1}, Lo/buildReportData;->startAt(Ljava/lang/String;)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/buildReportData;->endAt(Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 514
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 515
    invoke-virtual {p0, p1, p2}, Lo/buildReportData;->startAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/buildReportData;->endAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Z)Lo/buildReportData;
    .locals 1

    .line 500
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 501
    invoke-virtual {p0, p1}, Lo/buildReportData;->startAt(Z)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/buildReportData;->endAt(Z)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(ZLjava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 542
    invoke-direct {p0}, Lo/buildReportData;->validateEqualToCall()V

    .line 543
    invoke-virtual {p0, p1, p2}, Lo/buildReportData;->startAt(ZLjava/lang/String;)Lo/buildReportData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/buildReportData;->endAt(ZLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 674
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public getRef()Lo/isPresent;
    .locals 3

    .line 661
    new-instance v0, Lo/isPresent;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public getRepo()Lo/getCrashlyticsInstallId;
    .locals 1

    .line 685
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    return-object v0
.end method

.method public getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 3

    .line 696
    new-instance v0, Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v1, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-direct {v0, v1, v2}, Lo/lambda$awaitEvenIfOnMainThread$0;-><init>(Lo/ExecutorUtils$2;Lo/recursiveDelete;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    invoke-static {}, Lo/LogFileManager;->getInfoKey()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Can\'t call keepSynced() on .info paths."

    invoke-direct {p1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/buildReportData$3;

    invoke-direct {v1, p0, p1}, Lo/buildReportData$3;-><init>(Lo/buildReportData;Z)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lo/buildReportData;
    .locals 4

    if-lez p1, :cond_1

    .line 558
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lo/buildReportData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-object v3, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v3, p1}, Lo/recursiveDelete;->limitToFirst(I)Lo/recursiveDelete;

    move-result-object p1

    iget-boolean v3, p0, Lo/buildReportData;->orderByCalled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v0

    .line 559
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public limitToLast(I)Lo/buildReportData;
    .locals 4

    if-lez p1, :cond_1

    .line 577
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lo/buildReportData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-object v3, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v3, p1}, Lo/recursiveDelete;->limitToLast(I)Lo/recursiveDelete;

    move-result-object p1

    iget-boolean v3, p0, Lo/buildReportData;->orderByCalled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v0

    .line 578
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByChild(Ljava/lang/String;)Lo/buildReportData;
    .locals 4

    if-eqz p1, :cond_4

    const-string v0, "$key"

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can\'t use \'"

    if-nez v0, :cond_3

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "$priority"

    .line 600
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$value"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    invoke-static {p1}, Lo/UserMetadata;->validatePathString(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lo/buildReportData;->validateNoOrderByCall()V

    .line 610
    new-instance v0, Lo/ExecutorUtils$2;

    invoke-direct {v0, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Lo/ExecutorUtils$2;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    new-instance p1, Lo/writeInt;

    invoke-direct {p1, v0}, Lo/writeInt;-><init>(Lo/ExecutorUtils$2;)V

    .line 615
    new-instance v0, Lo/buildReportData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-object v3, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-virtual {v3, p1}, Lo/recursiveDelete;->orderBy(Lo/setLogFile;)Lo/recursiveDelete;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v0

    .line 612
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByKey()Lo/buildReportData;
    .locals 5

    .line 640
    invoke-direct {p0}, Lo/buildReportData;->validateNoOrderByCall()V

    .line 641
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/recursiveDelete;->orderBy(Lo/setLogFile;)Lo/recursiveDelete;

    move-result-object v0

    .line 642
    invoke-direct {p0, v0}, Lo/buildReportData;->validateQueryEndpoints(Lo/recursiveDelete;)V

    .line 643
    new-instance v1, Lo/buildReportData;

    iget-object v2, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v3, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v1
.end method

.method public orderByPriority()Lo/buildReportData;
    .locals 5

    .line 626
    invoke-direct {p0}, Lo/buildReportData;->validateNoOrderByCall()V

    .line 627
    iget-object v0, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/recursiveDelete;->orderBy(Lo/setLogFile;)Lo/recursiveDelete;

    move-result-object v0

    .line 628
    invoke-direct {p0, v0}, Lo/buildReportData;->validateQueryEndpoints(Lo/recursiveDelete;)V

    .line 629
    new-instance v1, Lo/buildReportData;

    iget-object v2, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v3, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v1
.end method

.method public orderByValue()Lo/buildReportData;
    .locals 5

    .line 654
    invoke-direct {p0}, Lo/buildReportData;->validateNoOrderByCall()V

    .line 655
    new-instance v0, Lo/buildReportData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/buildReportData;->path:Lo/ExecutorUtils$2;

    iget-object v3, p0, Lo/buildReportData;->params:Lo/recursiveDelete;

    invoke-static {}, Lo/wrapPosition;->getInstance()Lo/wrapPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/recursiveDelete;->orderBy(Lo/setLogFile;)Lo/recursiveDelete;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lo/buildReportData;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/recursiveDelete;Z)V

    return-object v0
.end method

.method public removeEventListener(Lo/CrashlyticsFileMarker;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Lo/DataTransportState;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lo/DataTransportState;-><init>(Lo/getCrashlyticsInstallId;Lo/CrashlyticsFileMarker;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-direct {p0, v0}, Lo/buildReportData;->removeEventRegistration(Lo/addDelayedShutdownHook;)V

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lo/populateSessionDeviceData;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 199
    new-instance v0, Lo/writeKeyData;

    iget-object v1, p0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-direct {p0, v0}, Lo/buildReportData;->removeEventRegistration(Lo/addDelayedShutdownHook;)V

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAt(D)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lo/buildReportData;->startAt(DLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public startAt(DLjava/lang/String;)Lo/buildReportData;
    .locals 1

    .line 335
    new-instance v0, Lo/getLogString;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    invoke-direct {p0, v0, p3}, Lo/buildReportData;->startAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1, v0}, Lo/buildReportData;->startAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lo/buildReportData;
    .locals 2

    if-eqz p1, :cond_0

    .line 320
    new-instance v0, Lo/open;

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/open;-><init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    .line 321
    :goto_0
    invoke-direct {p0, v0, p2}, Lo/buildReportData;->startAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Z)Lo/buildReportData;
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lo/buildReportData;->startAt(ZLjava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method

.method public startAt(ZLjava/lang/String;)Lo/buildReportData;
    .locals 2

    .line 350
    new-instance v0, Lo/getLogAsBytes;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/getLogAsBytes;-><init>(Ljava/lang/Boolean;Lo/LogFileManager$DirectoryProvider;)V

    invoke-direct {p0, v0, p2}, Lo/buildReportData;->startAt(Lo/LogFileManager$DirectoryProvider;Ljava/lang/String;)Lo/buildReportData;

    move-result-object p1

    return-object p1
.end method
