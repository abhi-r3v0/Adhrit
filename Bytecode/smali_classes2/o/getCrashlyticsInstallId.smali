.class public Lo/getCrashlyticsInstallId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCrashlyticsInstallId$onPostMessage;,
        Lo/getCrashlyticsInstallId$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final INTERRUPT_REASON:Ljava/lang/String; = "repo_interrupt"

.field private static final TRANSACTION_MAX_RETRIES:I = 0x19

.field private static final TRANSACTION_OVERRIDE_BY_SET:Ljava/lang/String; = "overriddenBySet"

.field private static final TRANSACTION_TOO_MANY_RETRIES:Ljava/lang/String; = "maxretries"


# instance fields
.field private connection:Lo/getDataCollectionValueFromSharedPreferences;

.field private final ctx:Lo/getNamedThreadFactory;

.field private final dataLogger:Lo/FileLogStore;

.field public dataUpdateCount:J

.field private database:Lo/onUserId;

.field private final eventRaiser:Lo/capFileCount;

.field private hijackHash:Z

.field private infoData:Lo/getAppIdentifier;

.field private infoSyncTree:Lo/removeForwardSlashesIn;

.field private loggedTransactionPersistenceWarning:Z

.field private nextWriteId:J

.field private onDisconnect:Lo/getInstallerPackageName;

.field private final operationLogger:Lo/FileLogStore;

.field private final repoInfo:Lo/getOsDisplayVersionString;

.field private final serverClock:Lo/removeAllReports;

.field private serverSyncTree:Lo/removeForwardSlashesIn;

.field private final transactionLogger:Lo/FileLogStore;

.field private transactionOrder:J

.field private transactionQueueTree:Lo/persistEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getOsDisplayVersionString;Lo/getNamedThreadFactory;Lo/onUserId;)V
    .locals 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lo/removeAllReports;

    new-instance v1, Lo/persistUserId;

    invoke-direct {v1}, Lo/persistUserId;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/removeAllReports;-><init>(Lo/finalizeSessionWithNativeEvent;J)V

    iput-object v0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/getCrashlyticsInstallId;->hijackHash:Z

    .line 72
    iput-wide v2, p0, Lo/getCrashlyticsInstallId;->dataUpdateCount:J

    const-wide/16 v4, 0x1

    .line 73
    iput-wide v4, p0, Lo/getCrashlyticsInstallId;->nextWriteId:J

    .line 77
    iput-boolean v0, p0, Lo/getCrashlyticsInstallId;->loggedTransactionPersistenceWarning:Z

    .line 736
    iput-wide v2, p0, Lo/getCrashlyticsInstallId;->transactionOrder:J

    .line 80
    iput-object p1, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    .line 81
    iput-object p2, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    .line 82
    iput-object p3, p0, Lo/getCrashlyticsInstallId;->database:Lo/onUserId;

    const-string p1, "RepoOperation"

    .line 84
    invoke-virtual {p2, p1}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    .line 85
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    const-string p2, "Transaction"

    invoke-virtual {p1, p2}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/getCrashlyticsInstallId;->transactionLogger:Lo/FileLogStore;

    .line 86
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    const-string p2, "DataOperation"

    invoke-virtual {p1, p2}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    .line 88
    new-instance p1, Lo/capFileCount;

    iget-object p2, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-direct {p1, p2}, Lo/capFileCount;-><init>(Lo/getNamedThreadFactory;)V

    iput-object p1, p0, Lo/getCrashlyticsInstallId;->eventRaiser:Lo/capFileCount;

    .line 91
    new-instance p1, Lo/getCrashlyticsInstallId$2;

    invoke-direct {p1, p0}, Lo/getCrashlyticsInstallId$2;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-virtual {p0, p1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;
    .locals 4

    .line 1274
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->getAncestorTransactionNode(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/persistEvent;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->transactionLogger:Lo/FileLogStore;

    invoke-virtual {v1}, Lo/FileLogStore;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Aborting transactions for path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Affected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    :cond_0
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    invoke-virtual {v1, p1}, Lo/persistEvent;->subTree(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object p1

    .line 1282
    new-instance v1, Lo/getCrashlyticsInstallId$11;

    invoke-direct {v1, p0, p2}, Lo/getCrashlyticsInstallId$11;-><init>(Lo/getCrashlyticsInstallId;I)V

    invoke-virtual {p1, v1}, Lo/persistEvent;->forEachAncestor(Lo/persistEvent$onMessageChannelReady;)Z

    .line 1291
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->abortTransactionsAtNode(Lo/persistEvent;I)V

    .line 1293
    new-instance v1, Lo/getCrashlyticsInstallId$14;

    invoke-direct {v1, p0, p2}, Lo/getCrashlyticsInstallId$14;-><init>(Lo/getCrashlyticsInstallId;I)V

    invoke-virtual {p1, v1}, Lo/persistEvent;->forEachDescendant(Lo/persistEvent$onNavigationEvent;)V

    return-object v0
.end method

.method private abortTransactionsAtNode(Lo/persistEvent;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1305
    invoke-virtual/range {p1 .. p1}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_a

    .line 1309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Unknown transaction abort reason: "

    const/16 v7, -0x9

    const/16 v8, -0x19

    if-ne v2, v7, :cond_0

    const-string v11, "overriddenBySet"

    .line 1312
    invoke-static {v11}, Lo/getMarkerFile;->fromStatus(Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object v11

    goto :goto_1

    :cond_0
    if-ne v2, v8, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1314
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 1316
    invoke-static {v8}, Lo/getMarkerFile;->fromCode(I)Lo/getMarkerFile;

    move-result-object v11

    :goto_1
    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 1320
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_8

    .line 1321
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1322
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v9

    sget-object v10, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-eq v9, v10, :cond_7

    .line 1324
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v9

    sget-object v10, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v13, -0x1

    if-ne v14, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 1325
    :goto_3
    invoke-static {v9}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1328
    sget-object v9, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v15, v9}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 1329
    invoke-static {v15, v11}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2802(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;)Lo/getMarkerFile;

    move v14, v13

    goto :goto_7

    .line 1332
    :cond_3
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v9

    sget-object v10, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 1331
    :goto_4
    invoke-static {v9}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1335
    new-instance v9, Lo/writeKeyData;

    .line 1338
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateSessionDeviceData;

    move-result-object v10

    .line 1339
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v12

    invoke-direct {v9, v0, v10, v12}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 1335
    invoke-virtual {v0, v9}, Lo/getCrashlyticsInstallId;->removeEventCallback(Lo/addDelayedShutdownHook;)V

    if-ne v2, v7, :cond_5

    .line 1341
    iget-object v9, v0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1343
    invoke-static {v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v18

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v10, v0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object/from16 v17, v9

    move-object/from16 v22, v10

    .line 1342
    invoke-virtual/range {v17 .. v22}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v9

    .line 1341
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_5
    if-ne v2, v8, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    .line 1345
    :goto_5
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 1350
    :goto_6
    new-instance v9, Lo/getCrashlyticsInstallId$19;

    invoke-direct {v9, v0, v15, v11}, Lo/getCrashlyticsInstallId$19;-><init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v9, -0x1

    if-ne v14, v9, :cond_9

    const/4 v2, 0x0

    .line 1362
    invoke-virtual {v1, v2}, Lo/persistEvent;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    const/4 v2, 0x1

    add-int/2addr v14, v2

    const/4 v2, 0x0

    .line 1365
    invoke-interface {v3, v2, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/persistEvent;->setValue(Ljava/lang/Object;)V

    .line 1369
    :goto_8
    invoke-direct {v0, v4}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    .line 1370
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1371
    invoke-virtual {v0, v2}, Lo/getCrashlyticsInstallId;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->deferredInitialization()V

    return-void
.end method

.method static synthetic access$100(Lo/getCrashlyticsInstallId;)Lo/FileLogStore;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    return-object p0
.end method

.method static synthetic access$1000(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    return-object p0
.end method

.method static synthetic access$1100(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lo/getCrashlyticsInstallId;Lo/persistEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->sendReadyTransactions(Lo/persistEvent;)V

    return-void
.end method

.method static synthetic access$200(Lo/getCrashlyticsInstallId;)Lo/getDataCollectionValueFromSharedPreferences;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    return-object p0
.end method

.method static synthetic access$2200(Lo/getCrashlyticsInstallId;)Lo/removeAllReports;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    return-object p0
.end method

.method static synthetic access$2500(Lo/getCrashlyticsInstallId;)Lo/persistEvent;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    return-object p0
.end method

.method static synthetic access$2600(Lo/getCrashlyticsInstallId;Lo/persistEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->pruneCompletedTransactions(Lo/persistEvent;)V

    return-void
.end method

.method static synthetic access$2700(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->sendAllReadyTransactions()V

    return-void
.end method

.method static synthetic access$300(Lo/getCrashlyticsInstallId;)Lo/getAppIdentifier;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->infoData:Lo/getAppIdentifier;

    return-object p0
.end method

.method static synthetic access$3000(Lo/getCrashlyticsInstallId;Ljava/util/List;Lo/persistEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->aggregateTransactionQueues(Ljava/util/List;Lo/persistEvent;)V

    return-void
.end method

.method static synthetic access$3100(Lo/getCrashlyticsInstallId;Lo/persistEvent;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->abortTransactionsAtNode(Lo/persistEvent;I)V

    return-void
.end method

.method static synthetic access$400(Lo/getCrashlyticsInstallId;)Lo/removeForwardSlashesIn;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    return-object p0
.end method

.method static synthetic access$500(Lo/getCrashlyticsInstallId;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lo/getCrashlyticsInstallId;->fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lo/getCrashlyticsInstallId;Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lo/getCrashlyticsInstallId;->warnIfWriteFailed(Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V

    return-void
.end method

.method static synthetic access$800(Lo/getCrashlyticsInstallId;JLo/ExecutorUtils$2;Lo/getMarkerFile;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getCrashlyticsInstallId;->ackWriteAndRerunTransactions(JLo/ExecutorUtils$2;Lo/getMarkerFile;)V

    return-void
.end method

.method static synthetic access$900(Lo/getCrashlyticsInstallId;)Lo/getInstallerPackageName;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getCrashlyticsInstallId;->onDisconnect:Lo/getInstallerPackageName;

    return-object p0
.end method

.method private ackWriteAndRerunTransactions(JLo/ExecutorUtils$2;Lo/getMarkerFile;)V
    .locals 7

    if-eqz p4, :cond_0

    .line 413
    invoke-virtual {p4}, Lo/getMarkerFile;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 417
    :goto_0
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    xor-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-wide v2, p1

    .line 418
    invoke-virtual/range {v1 .. v6}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 420
    invoke-direct {p0, p3}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    .line 422
    :cond_2
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private aggregateTransactionQueues(Ljava/util/List;Lo/persistEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1259
    invoke-virtual {p2}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1264
    :cond_0
    new-instance v0, Lo/getCrashlyticsInstallId$12;

    invoke-direct {v0, p0, p1}, Lo/getCrashlyticsInstallId$12;-><init>(Lo/getCrashlyticsInstallId;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lo/persistEvent;->forEachChild(Lo/persistEvent$onNavigationEvent;)V

    return-void
.end method

.method private buildTransactionQueue(Lo/persistEvent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 1249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    invoke-direct {p0, v0, p1}, Lo/getCrashlyticsInstallId;->aggregateTransactionQueues(Ljava/util/List;Lo/persistEvent;)V

    .line 1252
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private deferredInitialization()V
    .locals 5

    .line 105
    new-instance v0, Lo/grantDataCollectionPermission;

    iget-object v1, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v1, v1, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    iget-object v2, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v2, v2, Lo/getOsDisplayVersionString;->namespace:Ljava/lang/String;

    iget-object v3, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    iget-boolean v3, v3, Lo/getOsDisplayVersionString;->secure:Z

    invoke-direct {v0, v1, v2, v3}, Lo/grantDataCollectionPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v1, v0, p0}, Lo/getNamedThreadFactory;->newPersistentConnection(Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 108
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    .line 109
    invoke-virtual {v0}, Lo/getNamedThreadFactory;->getAuthTokenProvider()Lo/buildSingleThreadExecutorService;

    move-result-object v0

    iget-object v1, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    .line 111
    invoke-virtual {v1}, Lo/getNamedThreadFactory;->getRunLoop()Lo/migrateLegacyId;

    move-result-object v1

    check-cast v1, Lo/SessionReportingCoordinator;

    invoke-virtual {v1}, Lo/SessionReportingCoordinator;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lo/getCrashlyticsInstallId$15;

    invoke-direct {v2, p0}, Lo/getCrashlyticsInstallId$15;-><init>(Lo/getCrashlyticsInstallId;)V

    .line 110
    invoke-interface {v0, v1, v2}, Lo/buildSingleThreadExecutorService;->addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)V

    .line 130
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-interface {v0}, Lo/getDataCollectionValueFromSharedPreferences;->initialize()V

    .line 132
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    iget-object v1, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v1, v1, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getNamedThreadFactory;->getPersistenceManager(Ljava/lang/String;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    .line 134
    new-instance v1, Lo/getAppIdentifier;

    invoke-direct {v1}, Lo/getAppIdentifier;-><init>()V

    iput-object v1, p0, Lo/getCrashlyticsInstallId;->infoData:Lo/getAppIdentifier;

    .line 135
    new-instance v1, Lo/getInstallerPackageName;

    invoke-direct {v1}, Lo/getInstallerPackageName;-><init>()V

    iput-object v1, p0, Lo/getCrashlyticsInstallId;->onDisconnect:Lo/getInstallerPackageName;

    .line 137
    new-instance v1, Lo/persistEvent;

    invoke-direct {v1}, Lo/persistEvent;-><init>()V

    iput-object v1, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    .line 139
    new-instance v1, Lo/removeForwardSlashesIn;

    iget-object v2, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    new-instance v3, Lo/gzipInputStream;

    invoke-direct {v3}, Lo/gzipInputStream;-><init>()V

    new-instance v4, Lo/getCrashlyticsInstallId$17;

    invoke-direct {v4, p0}, Lo/getCrashlyticsInstallId$17;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-direct {v1, v2, v3, v4}, Lo/removeForwardSlashesIn;-><init>(Lo/getNamedThreadFactory;Lo/NativeSessionFileGzipper;Lo/removeForwardSlashesIn$onPostMessage;)V

    iput-object v1, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    .line 171
    new-instance v1, Lo/removeForwardSlashesIn;

    iget-object v2, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    new-instance v3, Lo/getCrashlyticsInstallId$16;

    invoke-direct {v3, p0}, Lo/getCrashlyticsInstallId$16;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-direct {v1, v2, v0, v3}, Lo/removeForwardSlashesIn;-><init>(Lo/getNamedThreadFactory;Lo/NativeSessionFileGzipper;Lo/removeForwardSlashesIn$onPostMessage;)V

    iput-object v1, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 204
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->restoreWrites(Lo/NativeSessionFileGzipper;)V

    .line 206
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_AUTHENTICATED:Lo/LogFileManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lo/getCrashlyticsInstallId;->updateInfo(Lo/LogFileManager;Ljava/lang/Object;)V

    .line 207
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_CONNECTED:Lo/LogFileManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lo/getCrashlyticsInstallId;->updateInfo(Lo/LogFileManager;Ljava/lang/Object;)V

    return-void
.end method

.method private static fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;
    .locals 0

    if-eqz p0, :cond_0

    .line 1388
    invoke-static {p0, p1}, Lo/getMarkerFile;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAncestorTransactionNode(Lo/ExecutorUtils$2;)Lo/persistEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    .line 1240
    :goto_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1241
    new-instance v1, Lo/ExecutorUtils$2;

    const/4 v2, 0x1

    new-array v2, v2, [Lo/LogFileManager;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {v0, v1}, Lo/persistEvent;->subTree(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object v0

    .line 1242
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getLatestState(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/getCrashlyticsInstallId;->getLatestState(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method private getLatestState(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1, p2}, Lo/removeForwardSlashesIn;->calcCompleteEventCache(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    if-nez p1, :cond_0

    .line 903
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getNextWriteId()J
    .locals 4

    .line 671
    iget-wide v0, p0, Lo/getCrashlyticsInstallId;->nextWriteId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/getCrashlyticsInstallId;->nextWriteId:J

    return-wide v0
.end method

.method private nextTransactionOrder()J
    .locals 4

    .line 1084
    iget-wide v0, p0, Lo/getCrashlyticsInstallId;->transactionOrder:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/getCrashlyticsInstallId;->transactionOrder:J

    return-wide v0
.end method

.method private postEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->eventRaiser:Lo/capFileCount;

    invoke-virtual {v0, p1}, Lo/capFileCount;->raiseEvents(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private pruneCompletedTransactions(Lo/persistEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1056
    invoke-virtual {p1}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1059
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1060
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1061
    invoke-static {v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v2

    sget-object v3, Lo/getCrashlyticsInstallId$onMessageChannelReady;->COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v2, v3, :cond_0

    .line 1062
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1068
    invoke-virtual {p1, v0}, Lo/persistEvent;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1070
    invoke-virtual {p1, v0}, Lo/persistEvent;->setValue(Ljava/lang/Object;)V

    .line 1074
    :cond_3
    :goto_1
    new-instance v0, Lo/getCrashlyticsInstallId$7;

    invoke-direct {v0, p0}, Lo/getCrashlyticsInstallId$7;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-virtual {p1, v0}, Lo/persistEvent;->forEachChild(Lo/persistEvent$onNavigationEvent;)V

    return-void
.end method

.method private rerunTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;",
            "Lo/ExecutorUtils$2;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1098
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1104
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1111
    invoke-static {v4}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 1115
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v0

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v0

    .line 1118
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1120
    :goto_2
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1122
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v0

    sget-object v10, Lo/getCrashlyticsInstallId$onMessageChannelReady;->NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v11, 0x0

    if-ne v0, v10, :cond_5

    .line 1124
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2800(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getMarkerFile;

    move-result-object v11

    .line 1125
    invoke-virtual {v11}, Lo/getMarkerFile;->getCode()I

    move-result v0

    const/16 v5, -0x19

    if-eq v0, v5, :cond_4

    .line 1126
    iget-object v12, v1, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1128
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object/from16 v17, v0

    .line 1127
    invoke-virtual/range {v12 .. v17}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v0

    .line 1126
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1130
    :cond_5
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v0

    sget-object v10, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v0, v10, :cond_8

    .line 1131
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2000(Lo/getCrashlyticsInstallId$onPostMessage;)I

    move-result v0

    const/16 v10, 0x19

    if-lt v0, v10, :cond_6

    const-string v0, "maxretries"

    .line 1133
    invoke-static {v0}, Lo/getMarkerFile;->fromStatus(Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object v11

    .line 1134
    iget-object v12, v1, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1136
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object/from16 v17, v0

    .line 1135
    invoke-virtual/range {v12 .. v17}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v0

    .line 1134
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1139
    :cond_6
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lo/getCrashlyticsInstallId;->getLatestState(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v10

    .line 1140
    invoke-static {v6, v10}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1402(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 1141
    invoke-static {v10}, Lo/zzac;->createMutableData(Lo/LogFileManager$DirectoryProvider;)Lo/populateSessionData;

    move-result-object v0

    .line 1145
    :try_start_0
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2300(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateExecutionData$onMessageChannelReady;

    move-result-object v12

    invoke-interface {v12, v0}, Lo/populateExecutionData$onMessageChannelReady;->doTransaction(Lo/populateSessionData;)Lo/populateExecutionData$onPostMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 1147
    iget-object v12, v1, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    const-string v13, "Caught Throwable."

    invoke-virtual {v12, v13, v0}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    invoke-static {v0}, Lo/getMarkerFile;->fromException(Ljava/lang/Throwable;)Lo/getMarkerFile;

    move-result-object v0

    .line 1149
    invoke-static {}, Lo/populateExecutionData;->abort()Lo/populateExecutionData$onPostMessage;

    move-result-object v12

    move-object/from16 v21, v12

    move-object v12, v0

    move-object/from16 v0, v21

    .line 1151
    :goto_4
    invoke-virtual {v0}, Lo/populateExecutionData$onPostMessage;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1152
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1153
    iget-object v12, v1, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {v12}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v12

    .line 1155
    invoke-virtual {v0}, Lo/populateExecutionData$onPostMessage;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v15

    .line 1157
    invoke-static {v15, v10, v12}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 1159
    invoke-static {v6, v15}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1502(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 1160
    invoke-static {v6, v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1602(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 1161
    invoke-direct/range {p0 .. p0}, Lo/getCrashlyticsInstallId;->getNextWriteId()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1802(Lo/getCrashlyticsInstallId$onPostMessage;J)J

    .line 1164
    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1165
    iget-object v13, v1, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1167
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v14

    .line 1170
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v17

    .line 1171
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2900(Lo/getCrashlyticsInstallId$onPostMessage;)Z

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v16, v0

    .line 1166
    invoke-virtual/range {v13 .. v20}, Lo/removeForwardSlashesIn;->applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;

    move-result-object v0

    .line 1165
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v12, v1, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1175
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object/from16 v17, v0

    .line 1174
    invoke-virtual/range {v12 .. v17}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v0

    .line 1173
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 1181
    :cond_7
    iget-object v13, v1, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 1183
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v0, v1, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object/from16 v18, v0

    .line 1182
    invoke-virtual/range {v13 .. v18}, Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;

    move-result-object v0

    .line 1181
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v11, v12

    goto/16 :goto_3

    .line 1188
    :cond_8
    :goto_5
    invoke-direct {v1, v8}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    if-eqz v5, :cond_2

    .line 1192
    sget-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v6, v0}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 1193
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-static {v1, v0}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object v0

    .line 1196
    invoke-static {v6}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 1199
    invoke-static {v5}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v5

    invoke-static {v0, v5}, Lo/zzac;->createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;

    move-result-object v0

    .line 1203
    new-instance v5, Lo/getCrashlyticsInstallId$6;

    invoke-direct {v5, v1, v6}, Lo/getCrashlyticsInstallId$6;-><init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;)V

    invoke-virtual {v1, v5}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 1216
    new-instance v5, Lo/getCrashlyticsInstallId$13;

    invoke-direct {v5, v1, v6, v11, v0}, Lo/getCrashlyticsInstallId$13;-><init>(Lo/getCrashlyticsInstallId;Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;Lo/CrashlyticsLifecycleEvents;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1227
    :cond_9
    iget-object v0, v1, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    invoke-direct {v1, v0}, Lo/getCrashlyticsInstallId;->pruneCompletedTransactions(Lo/persistEvent;)V

    .line 1230
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 1231
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lo/getCrashlyticsInstallId;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1235
    :cond_a
    invoke-direct/range {p0 .. p0}, Lo/getCrashlyticsInstallId;->sendAllReadyTransactions()V

    return-void
.end method

.method private rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;
    .locals 1

    .line 1088
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->getAncestorTransactionNode(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object p1

    .line 1089
    invoke-virtual {p1}, Lo/persistEvent;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    .line 1091
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->buildTransactionQueue(Lo/persistEvent;)Ljava/util/List;

    move-result-object p1

    .line 1092
    invoke-direct {p0, p1, v0}, Lo/getCrashlyticsInstallId;->rerunTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method private restoreWrites(Lo/NativeSessionFileGzipper;)V
    .locals 17

    move-object/from16 v0, p0

    .line 211
    invoke-interface/range {p1 .. p1}, Lo/NativeSessionFileGzipper;->loadUserWrites()Ljava/util/List;

    move-result-object v1

    .line 213
    iget-object v2, v0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {v2}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v2

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/high16 v3, -0x8000000000000000L

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/loadInstallerPackageName;

    .line 216
    new-instance v6, Lo/getCrashlyticsInstallId$18;

    invoke-direct {v6, v0, v5}, Lo/getCrashlyticsInstallId$18;-><init>(Lo/getCrashlyticsInstallId;Lo/loadInstallerPackageName;)V

    .line 225
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-gez v9, :cond_3

    .line 228
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v3

    .line 229
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Lo/getCrashlyticsInstallId;->nextWriteId:J

    .line 230
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 231
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v7}, Lo/FileLogStore;->logsDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 232
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Restoring overwrite with id "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v8}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v8

    invoke-virtual {v8}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v10

    invoke-interface {v10, v9}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lo/getDataCollectionValueFromSharedPreferences;->put(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    .line 237
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    iget-object v7, v0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v8

    .line 236
    invoke-static {v6, v7, v8, v2}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v12

    .line 238
    iget-object v9, v0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 239
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v10

    .line 240
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v11

    .line 242
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 238
    invoke-virtual/range {v9 .. v16}, Lo/removeForwardSlashesIn;->applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;

    goto/16 :goto_0

    .line 246
    :cond_1
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v7}, Lo/FileLogStore;->logsDebug()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Restoring merge with id "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v8}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_2
    iget-object v7, v0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v8

    invoke-virtual {v8}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v10

    invoke-virtual {v10, v9}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lo/getDataCollectionValueFromSharedPreferences;->merge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V

    .line 252
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v6

    iget-object v7, v0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v8

    .line 251
    invoke-static {v6, v7, v8, v2}, Lo/getOsBuildVersionString;->resolveDeferredValueMerge(Lo/ExecutorUtils$1$1;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v12

    .line 253
    iget-object v9, v0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 254
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v10

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v11

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v13

    const/4 v15, 0x0

    .line 253
    invoke-virtual/range {v9 .. v15}, Lo/removeForwardSlashesIn;->applyUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$1$1;JZ)Ljava/util/List;

    goto/16 :goto_0

    .line 226
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Write ids were not in order."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private runOnDisconnectEvents()V
    .locals 5

    .line 675
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {v0}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v0

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    iget-object v2, p0, Lo/getCrashlyticsInstallId;->onDisconnect:Lo/getInstallerPackageName;

    .line 679
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v3

    new-instance v4, Lo/getCrashlyticsInstallId$5;

    invoke-direct {v4, p0, v0, v1}, Lo/getCrashlyticsInstallId$5;-><init>(Lo/getCrashlyticsInstallId;Ljava/util/Map;Ljava/util/List;)V

    .line 678
    invoke-virtual {v2, v3, v4}, Lo/getInstallerPackageName;->forEachTree(Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V

    .line 691
    new-instance v0, Lo/getInstallerPackageName;

    invoke-direct {v0}, Lo/getInstallerPackageName;-><init>()V

    iput-object v0, p0, Lo/getCrashlyticsInstallId;->onDisconnect:Lo/getInstallerPackageName;

    .line 692
    invoke-direct {p0, v1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method private sendAllReadyTransactions()V
    .locals 1

    .line 913
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    .line 915
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->pruneCompletedTransactions(Lo/persistEvent;)V

    .line 916
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->sendReadyTransactions(Lo/persistEvent;)V

    return-void
.end method

.method private sendReadyTransactions(Lo/persistEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 920
    invoke-virtual {p1}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 922
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->buildTransactionQueue(Lo/persistEvent;)Ljava/util/List;

    move-result-object v0

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 925
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 926
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 927
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v3

    sget-object v4, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-eq v3, v4, :cond_1

    .line 928
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 933
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    invoke-virtual {p1}, Lo/persistEvent;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/getCrashlyticsInstallId;->sendTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V

    :cond_3
    return-void

    .line 936
    :cond_4
    invoke-virtual {p1}, Lo/persistEvent;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 937
    new-instance v0, Lo/getCrashlyticsInstallId$10;

    invoke-direct {v0, p0}, Lo/getCrashlyticsInstallId$10;-><init>(Lo/getCrashlyticsInstallId;)V

    invoke-virtual {p1, v0}, Lo/persistEvent;->forEachChild(Lo/persistEvent$onNavigationEvent;)V

    :cond_5
    return-void
.end method

.method private sendTransactionQueue(Ljava/util/List;Lo/ExecutorUtils$2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;",
            "Lo/ExecutorUtils$2;",
            ")V"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 951
    invoke-static {v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 954
    :cond_0
    invoke-direct {p0, p2, v0}, Lo/getCrashlyticsInstallId;->getLatestState(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 957
    iget-boolean v1, p0, Lo/getCrashlyticsInstallId;->hijackHash:Z

    if-nez v1, :cond_1

    .line 958
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getHash()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "badhash"

    .line 961
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getCrashlyticsInstallId$onPostMessage;

    .line 963
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    move-result-object v5

    sget-object v6, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 962
    :goto_3
    invoke-static {v4}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 965
    sget-object v4, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v3, v4}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 966
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2008(Lo/getCrashlyticsInstallId$onPostMessage;)I

    .line 967
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-static {p2, v4}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v4

    .line 969
    invoke-static {v3}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1500(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_2

    .line 972
    :cond_3
    invoke-interface {v0, v4}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    .line 977
    iget-object v2, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 978
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lo/getCrashlyticsInstallId$8;

    invoke-direct {v4, p0, p2, p1, p0}, Lo/getCrashlyticsInstallId$8;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Ljava/util/List;Lo/getCrashlyticsInstallId;)V

    .line 977
    invoke-interface {v2, v3, v0, v1, v4}, Lo/getDataCollectionValueFromSharedPreferences;->compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method private updateInfo(Lo/LogFileManager;Ljava/lang/Object;)V
    .locals 4

    .line 655
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_SERVERTIME_OFFSET:Lo/LogFileManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/removeAllReports;->setOffset(J)V

    .line 659
    :cond_0
    new-instance v0, Lo/ExecutorUtils$2;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/LogFileManager;

    const/4 v2, 0x0

    sget-object v3, Lo/clearInstancesForTest;->DOT_INFO:Lo/LogFileManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    .line 661
    :try_start_0
    invoke-static {p2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 662
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->infoData:Lo/getAppIdentifier;

    invoke-virtual {p2, v0, p1}, Lo/getAppIdentifier;->update(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    .line 663
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p2, v0, p1}, Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    .line 664
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 666
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    const-string v0, "Failed to parse info update"

    invoke-virtual {p2, v0, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private warnIfWriteFailed(Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 698
    invoke-virtual {p3}, Lo/getMarkerFile;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 699
    invoke-virtual {p3}, Lo/getMarkerFile;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEventCallback(Lo/addDelayedShutdownHook;)V
    .locals 2

    .line 635
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    sget-object v1, Lo/clearInstancesForTest;->DOT_INFO:Lo/LogFileManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1}, Lo/removeForwardSlashesIn;->addEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1}, Lo/removeForwardSlashesIn;->addEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    .line 641
    :goto_0
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p3}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p3}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object p3

    invoke-static {p0, p3}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object p3

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {p0, p3}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object p3

    .line 402
    :goto_0
    new-instance v0, Lo/getCrashlyticsInstallId$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/getCrashlyticsInstallId$20;-><init>(Lo/getCrashlyticsInstallId;Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/isPresent;)V

    invoke-virtual {p0, v0}, Lo/getCrashlyticsInstallId;->postEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method getConnection()Lo/getDataCollectionValueFromSharedPreferences;
    .locals 1

    .line 651
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    return-object v0
.end method

.method public getDatabase()Lo/onUserId;
    .locals 1

    .line 260
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->database:Lo/onUserId;

    return-object v0
.end method

.method getInfoSyncTree()Lo/removeForwardSlashesIn;
    .locals 1

    .line 1383
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    return-object v0
.end method

.method public getRepoInfo()Lo/getOsDisplayVersionString;
    .locals 1

    .line 269
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    return-object v0
.end method

.method getServerSyncTree()Lo/removeForwardSlashesIn;
    .locals 1

    .line 1378
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 295
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-virtual {v0}, Lo/removeAllReports;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method hasListeners()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0}, Lo/removeForwardSlashesIn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0}, Lo/removeForwardSlashesIn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method interrupt()V
    .locals 2

    .line 626
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lo/getDataCollectionValueFromSharedPreferences;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public keepSynced(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V
    .locals 2

    .line 645
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    sget-object v1, Lo/clearInstancesForTest;->DOT_INFO:Lo/LogFileManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 647
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1, p2}, Lo/removeForwardSlashesIn;->keepSynced(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V

    return-void
.end method

.method public onAuthStatus(Z)V
    .locals 1

    .line 611
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_AUTHENTICATED:Lo/LogFileManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lo/getCrashlyticsInstallId;->onServerInfoUpdate(Lo/LogFileManager;Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect()V
    .locals 2

    .line 600
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_CONNECTED:Lo/LogFileManager;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lo/getCrashlyticsInstallId;->onServerInfoUpdate(Lo/LogFileManager;Ljava/lang/Object;)V

    return-void
.end method

.method public onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 307
    new-instance v0, Lo/ExecutorUtils$2;

    invoke-direct {v0, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/util/List;)V

    .line 308
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "onDataUpdate: "

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_1
    iget-wide v1, p0, Lo/getCrashlyticsInstallId;->dataUpdateCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/getCrashlyticsInstallId;->dataUpdateCount:J

    if-eqz p4, :cond_4

    .line 319
    :try_start_0
    new-instance p1, Lo/InstallerPackageNameProvider;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lo/InstallerPackageNameProvider;-><init>(J)V

    if-eqz p3, :cond_3

    .line 321
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 322
    check-cast p2, Ljava/util/Map;

    .line 323
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 325
    new-instance v2, Lo/ExecutorUtils$2;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {v2, p4}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_2
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p2, v0, p3, p1}, Lo/removeForwardSlashesIn;->applyTaggedQueryMerge(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/InstallerPackageNameProvider;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 329
    :cond_3
    invoke-static {p2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 330
    iget-object p3, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p3, v0, p2, p1}, Lo/removeForwardSlashesIn;->applyTaggedQueryOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/InstallerPackageNameProvider;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_6

    .line 333
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 334
    check-cast p2, Ljava/util/Map;

    .line 335
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    .line 337
    new-instance v1, Lo/ExecutorUtils$2;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {v1, p3}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_5
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p2, v0, p1}, Lo/removeForwardSlashesIn;->applyServerMerge(Lo/ExecutorUtils$2;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 341
    :cond_6
    invoke-static {p2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 342
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p2, v0, p1}, Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    .line 344
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 347
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    .line 350
    :cond_7
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 352
    :goto_3
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    const-string p3, "FIREBASE INTERNAL ERROR"

    invoke-virtual {p2, p3, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 605
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO_CONNECTED:Lo/LogFileManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lo/getCrashlyticsInstallId;->onServerInfoUpdate(Lo/LogFileManager;Ljava/lang/Object;)V

    .line 606
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->runOnDisconnectEvents()V

    return-void
.end method

.method public onDisconnectCancel(Lo/ExecutorUtils$2;Lo/isPresent$onPostMessage;)V
    .locals 3

    .line 584
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 585
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lo/getCrashlyticsInstallId$4;

    invoke-direct {v2, p0, p1, p2}, Lo/getCrashlyticsInstallId$4;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/isPresent$onPostMessage;)V

    .line 584
    invoke-interface {v0, v1, v2}, Lo/getDataCollectionValueFromSharedPreferences;->onDisconnectCancel(Ljava/util/List;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public onDisconnectSetValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)V
    .locals 4

    .line 543
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 544
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 545
    invoke-interface {p2, v2}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lo/getCrashlyticsInstallId$22;

    invoke-direct {v3, p0, p1, p2, p3}, Lo/getCrashlyticsInstallId$22;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)V

    .line 543
    invoke-interface {v0, v1, v2, v3}, Lo/getDataCollectionValueFromSharedPreferences;->onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public onDisconnectUpdate(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/isPresent$onPostMessage;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 565
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lo/getCrashlyticsInstallId$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lo/getCrashlyticsInstallId$1;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;Ljava/util/Map;Lo/isPresent$onPostMessage;)V

    .line 564
    invoke-interface {v0, v1, p4, v2}, Lo/getDataCollectionValueFromSharedPreferences;->onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lo/readCrashlyticsDataCollectionEnabledFromManifest;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 361
    new-instance v0, Lo/ExecutorUtils$2;

    invoke-direct {v0, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/util/List;)V

    .line 362
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "onRangeMergeUpdate: "

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_0
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_1
    iget-wide v1, p0, Lo/getCrashlyticsInstallId;->dataUpdateCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/getCrashlyticsInstallId;->dataUpdateCount:J

    .line 370
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/readCrashlyticsDataCollectionEnabledFromManifest;

    .line 372
    new-instance v2, Lo/onAddFocusables$onNavigationEvent;

    invoke-direct {v2, v1}, Lo/onAddFocusables$onNavigationEvent;-><init>(Lo/readCrashlyticsDataCollectionEnabledFromManifest;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 377
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    new-instance v1, Lo/InstallerPackageNameProvider;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lo/InstallerPackageNameProvider;-><init>(J)V

    invoke-virtual {p2, v0, p1, v1}, Lo/removeForwardSlashesIn;->applyTaggedRangeMerges(Lo/ExecutorUtils$2;Ljava/util/List;Lo/InstallerPackageNameProvider;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 379
    :cond_3
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {p2, v0, p1}, Lo/removeForwardSlashesIn;->applyServerRangeMerges(Lo/ExecutorUtils$2;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 381
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 384
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    .line 387
    :cond_4
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method public onServerInfoUpdate(Ljava/util/Map;)V
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

    .line 620
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 621
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/getCrashlyticsInstallId;->updateInfo(Lo/LogFileManager;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServerInfoUpdate(Lo/LogFileManager;Ljava/lang/Object;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->updateInfo(Lo/LogFileManager;Ljava/lang/Object;)V

    return-void
.end method

.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v0}, Lo/getNamedThreadFactory;->requireStarted()V

    .line 285
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v0}, Lo/getNamedThreadFactory;->getEventTarget()Lo/formatId;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/formatId;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 3

    .line 518
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Purging writes"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0}, Lo/removeForwardSlashesIn;->removeAllWrites()Ljava/util/List;

    move-result-object v0

    .line 522
    invoke-direct {p0, v0}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    .line 524
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    const/16 v1, -0x19

    invoke-direct {p0, v0, v1}, Lo/getCrashlyticsInstallId;->abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;

    .line 526
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-interface {v0}, Lo/getDataCollectionValueFromSharedPreferences;->purgeOutstandingWrites()V

    return-void
.end method

.method public removeEventCallback(Lo/addDelayedShutdownHook;)V
    .locals 2

    .line 533
    sget-object v0, Lo/clearInstancesForTest;->DOT_INFO:Lo/LogFileManager;

    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->infoSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1}, Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    invoke-virtual {v0, p1}, Lo/removeForwardSlashesIn;->removeEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    .line 538
    :goto_0
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method resume()V
    .locals 2

    .line 630
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lo/getDataCollectionValueFromSharedPreferences;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v0}, Lo/getNamedThreadFactory;->requireStarted()V

    .line 280
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v0}, Lo/getNamedThreadFactory;->getRunLoop()Lo/migrateLegacyId;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/migrateLegacyId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHijackHash(Z)V
    .locals 0

    .line 909
    iput-boolean p1, p0, Lo/getCrashlyticsInstallId;->hijackHash:Z

    return-void
.end method

.method public setValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)V
    .locals 12

    .line 430
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "set: "

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {v0}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Lo/removeForwardSlashesIn;->calcCompleteEventCache(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 440
    invoke-static {p2, v1, v0}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 442
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->getNextWriteId()J

    move-result-wide v0

    .line 443
    iget-object v2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p1

    move-object v4, p2

    move-wide v6, v0

    .line 444
    invoke-virtual/range {v2 .. v9}, Lo/removeForwardSlashesIn;->applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-direct {p0, v2}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    .line 448
    iget-object v2, p0, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 449
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 450
    invoke-interface {p2, v4}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    new-instance v4, Lo/getCrashlyticsInstallId$24;

    move-object v6, v4

    move-object v7, p0

    move-object v8, p1

    move-wide v9, v0

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lo/getCrashlyticsInstallId$24;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;JLo/isPresent$onPostMessage;)V

    .line 448
    invoke-interface {v2, v3, p2, v4}, Lo/getDataCollectionValueFromSharedPreferences;->put(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    const/16 p2, -0x9

    .line 461
    invoke-direct {p0, p1, p2}, Lo/getCrashlyticsInstallId;->abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 462
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    return-void
.end method

.method public startTransaction(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Z)V
    .locals 12

    .line 785
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "transaction: "

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_0
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :cond_1
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v0}, Lo/getNamedThreadFactory;->isPersistenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/getCrashlyticsInstallId;->loggedTransactionPersistenceWarning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 793
    iput-boolean v0, p0, Lo/getCrashlyticsInstallId;->loggedTransactionPersistenceWarning:Z

    .line 794
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->transactionLogger:Lo/FileLogStore;

    const-string v1, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v0, v1}, Lo/FileLogStore;->info(Ljava/lang/String;)V

    .line 805
    :cond_2
    invoke-static {p0, p1}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object v0

    .line 806
    new-instance v4, Lo/getCrashlyticsInstallId$3;

    invoke-direct {v4, p0}, Lo/getCrashlyticsInstallId$3;-><init>(Lo/getCrashlyticsInstallId;)V

    .line 818
    new-instance v1, Lo/writeKeyData;

    invoke-virtual {v0}, Lo/buildReportData;->getSpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-direct {v1, p0, v4, v2}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    invoke-virtual {p0, v1}, Lo/getCrashlyticsInstallId;->addEventCallback(Lo/addDelayedShutdownHook;)V

    .line 820
    new-instance v10, Lo/getCrashlyticsInstallId$onPostMessage;

    sget-object v5, Lo/getCrashlyticsInstallId$onMessageChannelReady;->INITIALIZING:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 827
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->nextTransactionOrder()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v9}, Lo/getCrashlyticsInstallId$onPostMessage;-><init>(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Lo/populateSessionDeviceData;Lo/getCrashlyticsInstallId$onMessageChannelReady;ZJLo/getCrashlyticsInstallId$2;)V

    .line 830
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->getLatestState(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 831
    invoke-static {v10, v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1402(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 832
    invoke-static {v1}, Lo/zzac;->createMutableData(Lo/LogFileManager$DirectoryProvider;)Lo/populateSessionData;

    move-result-object v1

    const/4 v2, 0x0

    .line 837
    :try_start_0
    invoke-interface {p2, v1}, Lo/populateExecutionData$onMessageChannelReady;->doTransaction(Lo/populateSessionData;)Lo/populateExecutionData$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v3, v2

    goto :goto_0

    .line 839
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Transaction returned null as result"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 842
    iget-object v3, p0, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    const-string v4, "Caught Throwable."

    invoke-virtual {v3, v4, v1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    invoke-static {v1}, Lo/getMarkerFile;->fromException(Ljava/lang/Throwable;)Lo/getMarkerFile;

    move-result-object v1

    .line 844
    invoke-static {}, Lo/populateExecutionData;->abort()Lo/populateExecutionData$onPostMessage;

    move-result-object v3

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    .line 846
    :goto_0
    invoke-virtual {v1}, Lo/populateExecutionData$onPostMessage;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_4

    .line 848
    invoke-static {v10, v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1502(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 849
    invoke-static {v10, v2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1602(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 853
    invoke-static {v10}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    .line 852
    invoke-static {v0, p1}, Lo/zzac;->createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;

    move-result-object p1

    .line 854
    new-instance p3, Lo/getCrashlyticsInstallId$9;

    invoke-direct {p3, p0, p2, v3, p1}, Lo/getCrashlyticsInstallId$9;-><init>(Lo/getCrashlyticsInstallId;Lo/populateExecutionData$onMessageChannelReady;Lo/getMarkerFile;Lo/CrashlyticsLifecycleEvents;)V

    invoke-virtual {p0, p3}, Lo/getCrashlyticsInstallId;->postEvent(Ljava/lang/Runnable;)V

    return-void

    .line 863
    :cond_4
    sget-object p2, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v10, p2}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 865
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->transactionQueueTree:Lo/persistEvent;

    invoke-virtual {p2, p1}, Lo/persistEvent;->subTree(Lo/ExecutorUtils$2;)Lo/persistEvent;

    move-result-object p2

    .line 866
    invoke-virtual {p2}, Lo/persistEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    :cond_5
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-virtual {p2, v0}, Lo/persistEvent;->setValue(Ljava/lang/Object;)V

    .line 873
    iget-object p2, p0, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {p2}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object p2

    .line 874
    invoke-virtual {v1}, Lo/populateExecutionData$onPostMessage;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    .line 877
    invoke-static {v10}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 876
    invoke-static {v4, v0, p2}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 879
    invoke-static {v10, v4}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1502(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 880
    invoke-static {v10, v5}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1602(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    .line 881
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->getNextWriteId()J

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1802(Lo/getCrashlyticsInstallId$onPostMessage;J)J

    .line 883
    iget-object v2, p0, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    .line 888
    invoke-static {v10}, Lo/getCrashlyticsInstallId$onPostMessage;->access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, p1

    move v8, p3

    .line 884
    invoke-virtual/range {v2 .. v9}, Lo/removeForwardSlashesIn;->applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;

    move-result-object p1

    .line 891
    invoke-direct {p0, p1}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    .line 892
    invoke-direct {p0}, Lo/getCrashlyticsInstallId;->sendAllReadyTransactions()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lo/getCrashlyticsInstallId;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/isPresent$onPostMessage;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/ExecutorUtils$1$1;",
            "Lo/isPresent$onPostMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    .line 470
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const-string v1, "update: "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :cond_0
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->dataLogger:Lo/FileLogStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$1$1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->operationLogger:Lo/FileLogStore;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "update called with no changes. No-op"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    move-object/from16 v5, p3

    .line 481
    invoke-virtual {v6, v5, v0, v14}, Lo/getCrashlyticsInstallId;->callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V

    return-void

    :cond_3
    move-object/from16 v5, p3

    .line 486
    iget-object v0, v6, Lo/getCrashlyticsInstallId;->serverClock:Lo/removeAllReports;

    invoke-static {v0}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v0

    .line 487
    iget-object v1, v6, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    move-object/from16 v3, p2

    .line 488
    invoke-static {v3, v1, v14, v0}, Lo/getOsBuildVersionString;->resolveDeferredValueMerge(Lo/ExecutorUtils$1$1;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v10

    .line 490
    invoke-direct/range {p0 .. p0}, Lo/getCrashlyticsInstallId;->getNextWriteId()J

    move-result-wide v16

    .line 491
    iget-object v7, v6, Lo/getCrashlyticsInstallId;->serverSyncTree:Lo/removeForwardSlashesIn;

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v11, v16

    .line 492
    invoke-virtual/range {v7 .. v13}, Lo/removeForwardSlashesIn;->applyUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$1$1;JZ)Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-direct {v6, v0}, Lo/getCrashlyticsInstallId;->postEvents(Ljava/util/List;)V

    .line 497
    iget-object v7, v6, Lo/getCrashlyticsInstallId;->connection:Lo/getDataCollectionValueFromSharedPreferences;

    .line 498
    invoke-virtual/range {p1 .. p1}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lo/getCrashlyticsInstallId$23;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lo/getCrashlyticsInstallId$23;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;JLo/isPresent$onPostMessage;)V

    .line 497
    invoke-interface {v7, v8, v15, v9}, Lo/getDataCollectionValueFromSharedPreferences;->merge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExecutorUtils$2;

    invoke-virtual {v14, v1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v1

    const/16 v2, -0x9

    .line 512
    invoke-direct {v6, v1, v2}, Lo/getCrashlyticsInstallId;->abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;

    move-result-object v1

    .line 513
    invoke-direct {v6, v1}, Lo/getCrashlyticsInstallId;->rerunTransactions(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    goto :goto_0

    :cond_4
    return-void
.end method
