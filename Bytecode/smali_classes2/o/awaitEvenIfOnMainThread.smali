.class public Lo/awaitEvenIfOnMainThread;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/awaitEvenIfOnMainThread$extraCallback;,
        Lo/awaitEvenIfOnMainThread$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static NO_COMPLETE_SOURCE:Lo/Utils$3$onPostMessage;


# instance fields
.field private final filter:Lo/Utils$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 674
    new-instance v0, Lo/awaitEvenIfOnMainThread$3;

    invoke-direct {v0}, Lo/awaitEvenIfOnMainThread$3;-><init>()V

    sput-object v0, Lo/awaitEvenIfOnMainThread;->NO_COMPLETE_SOURCE:Lo/Utils$3$onPostMessage;

    return-void
.end method

.method public constructor <init>(Lo/Utils$3;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    return-void
.end method

.method private ackUserWrite(Lo/race;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/race;",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/MetaDataStore;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/Utils$1;",
            ")",
            "Lo/race;"
        }
    .end annotation

    .line 539
    invoke-virtual {p4, p2}, Lo/MetaDataStore;->shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    .line 544
    :cond_0
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result v7

    .line 548
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    .line 549
    invoke-virtual {p3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 551
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p3

    if-nez p3, :cond_2

    .line 552
    :cond_1
    invoke-virtual {v0, p2}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForPath(Lo/ExecutorUtils$2;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 556
    :cond_2
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-interface {p3, p2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 553
    invoke-direct/range {v1 .. v8}, Lo/awaitEvenIfOnMainThread;->applyServerOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object p1

    return-object p1

    .line 561
    :cond_3
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 564
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object p3

    .line 565
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, p3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/QueueFile;

    .line 566
    invoke-virtual {p3}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p3}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lo/ExecutorUtils$1$1;->addWrite(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 568
    invoke-direct/range {v1 .. v8}, Lo/awaitEvenIfOnMainThread;->applyServerMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object p1

    :cond_5
    return-object p1

    .line 581
    :cond_6
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v1

    .line 582
    invoke-virtual {p3}, Lo/persistFatalEvent;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v4, v1

    :cond_7
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExecutorUtils$2;

    .line 584
    invoke-virtual {p2, v1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 585
    invoke-virtual {v0, v2}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForPath(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 587
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v4

    goto :goto_1

    :cond_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 590
    invoke-direct/range {v1 .. v8}, Lo/awaitEvenIfOnMainThread;->applyServerMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object p1

    return-object p1
.end method

.method private applyServerMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;
    .locals 15

    .line 471
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 483
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lo/ExecutorUtils$1$1;->rootWrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Can\'t have a merge that is an overwrite"

    invoke-static {v0, v3}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p3

    goto :goto_1

    .line 488
    :cond_2
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v3, v4}, Lo/ExecutorUtils$1$1;->addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    .line 490
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v3

    invoke-virtual {v3}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    .line 491
    invoke-virtual {v0}, Lo/ExecutorUtils$1$1;->childCompoundWrites()Ljava/util/Map;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v6, p1

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/LogFileManager;

    .line 494
    invoke-interface {v3, v7}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 495
    invoke-interface {v3, v7}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    .line 496
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ExecutorUtils$1$1;

    invoke-virtual {v5, v8}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    .line 497
    new-instance v9, Lo/ExecutorUtils$2;

    new-array v5, v1, [Lo/LogFileManager;

    aput-object v7, v5, v2

    invoke-direct {v9, v5}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    move-object v5, p0

    move-object v7, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 498
    invoke-direct/range {v5 .. v12}, Lo/awaitEvenIfOnMainThread;->applyServerOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object v6

    goto :goto_2

    .line 508
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v8, v6

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 509
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LogFileManager;

    .line 510
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/ExecutorUtils$1$1;

    .line 512
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v7

    invoke-virtual {v7, v5}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 513
    invoke-virtual {v6}, Lo/ExecutorUtils$1$1;->rootWrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 514
    :goto_4
    invoke-interface {v3, v5}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v7

    if-nez v7, :cond_5

    if-nez v6, :cond_5

    .line 515
    invoke-interface {v3, v5}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    .line 516
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ExecutorUtils$1$1;

    invoke-virtual {v4, v6}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v10

    .line 517
    new-instance v9, Lo/ExecutorUtils$2;

    new-array v4, v1, [Lo/LogFileManager;

    aput-object v5, v4, v2

    invoke-direct {v9, v4}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    move-object v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    .line 518
    invoke-direct/range {v7 .. v14}, Lo/awaitEvenIfOnMainThread;->applyServerOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    :cond_7
    return-object v8
.end method

.method private applyServerOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 290
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v2

    .line 292
    iget-object v3, v6, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lo/Utils$3;->getIndexedFilter()Lo/Utils$3;

    move-result-object v3

    .line 293
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v4

    .line 297
    invoke-interface {v3}, Lo/Utils$3;->getIndex()Lo/setLogFile;

    move-result-object v7

    invoke-static {v1, v7}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v1

    .line 295
    invoke-interface {v3, v4, v1, v5}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v1

    :goto_1
    move-object/from16 v4, p2

    goto/16 :goto_2

    .line 299
    :cond_1
    invoke-interface {v3}, Lo/Utils$3;->filtersNodes()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v14

    const-string v7, "An empty path should have been caught in the other branch"

    .line 302
    invoke-static {v4, v7}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v4

    .line 305
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v7

    .line 307
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    invoke-interface {v8, v4}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    invoke-interface {v8, v7, v1}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 308
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v1

    .line 310
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v4

    invoke-interface {v3, v4, v1, v5}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v1

    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v9

    move-object/from16 v4, p2

    .line 313
    invoke-virtual {v2, v4}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForPath(Lo/ExecutorUtils$2;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->size()I

    move-result v5

    if-le v5, v14, :cond_3

    return-object v0

    .line 317
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v11

    .line 318
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-interface {v5, v9}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 319
    invoke-interface {v5, v11, v1}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v10

    .line 320
    invoke-virtual {v9}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v1

    invoke-interface {v3, v1, v10}, Lo/Utils$3;->updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v1

    goto :goto_2

    .line 325
    :cond_4
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v8

    sget-object v12, Lo/awaitEvenIfOnMainThread;->NO_COMPLETE_SOURCE:Lo/Utils$3$onPostMessage;

    const/4 v13, 0x0

    move-object v7, v3

    .line 324
    invoke-interface/range {v7 .. v13}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v1

    .line 336
    :goto_2
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 337
    :cond_6
    :goto_3
    invoke-interface {v3}, Lo/Utils$3;->filtersNodes()Z

    move-result v2

    .line 334
    invoke-virtual {v0, v1, v14, v2}, Lo/race;->updateServerSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object v1

    .line 338
    new-instance v5, Lo/awaitEvenIfOnMainThread$extraCallback;

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    invoke-direct {v5, v3, v1, v0}, Lo/awaitEvenIfOnMainThread$extraCallback;-><init>(Lo/MetaDataStore;Lo/race;Lo/LogFileManager$DirectoryProvider;)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v4, v5

    move-object/from16 v5, p7

    .line 340
    invoke-direct/range {v0 .. v5}, Lo/awaitEvenIfOnMainThread;->generateEventCacheAfterServerEvent(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/race;

    move-result-object v0

    return-object v0
.end method

.method private applyUserMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;
    .locals 12

    move-object v0, p1

    move-object v1, p2

    .line 429
    invoke-virtual {p3}, Lo/ExecutorUtils$1$1;->rootWrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Can\'t have a merge that is an overwrite"

    invoke-static {v2, v3}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 431
    invoke-virtual {p3}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 432
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ExecutorUtils$2;

    invoke-virtual {p2, v5}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v5

    .line 433
    invoke-virtual {v5}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v6

    invoke-static {p1, v6}, Lo/awaitEvenIfOnMainThread;->cacheHasChild(Lo/race;Lo/LogFileManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lo/LogFileManager$DirectoryProvider;

    move-object v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 435
    invoke-direct/range {v3 .. v9}, Lo/awaitEvenIfOnMainThread;->applyUserOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object v4

    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {p3}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v4

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ExecutorUtils$2;

    invoke-virtual {p2, v4}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v7

    .line 447
    invoke-virtual {v7}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v4

    invoke-static {p1, v4}, Lo/awaitEvenIfOnMainThread;->cacheHasChild(Lo/race;Lo/LogFileManager;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 452
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lo/LogFileManager$DirectoryProvider;

    move-object v5, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 449
    invoke-direct/range {v5 .. v11}, Lo/awaitEvenIfOnMainThread;->applyUserOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object v3

    move-object v6, v3

    goto :goto_2

    :cond_4
    return-object v6
.end method

.method private applyUserOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;
    .locals 8

    .line 351
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    .line 353
    new-instance v6, Lo/awaitEvenIfOnMainThread$extraCallback;

    invoke-direct {v6, p4, p1, p5}, Lo/awaitEvenIfOnMainThread$extraCallback;-><init>(Lo/MetaDataStore;Lo/race;Lo/LogFileManager$DirectoryProvider;)V

    .line 355
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 356
    iget-object p2, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p2}, Lo/Utils$3;->getIndex()Lo/setLogFile;

    move-result-object p2

    invoke-static {p3, p2}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 357
    iget-object p3, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 359
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p4

    .line 358
    invoke-interface {p3, p4, p2, p6}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p2

    const/4 p3, 0x1

    .line 360
    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4}, Lo/Utils$3;->filtersNodes()Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lo/race;->updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object p1

    goto/16 :goto_2

    .line 362
    :cond_0
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 364
    iget-object p2, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 365
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lo/Utils$3;->updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 368
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p3

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result p4

    .line 367
    invoke-virtual {p1, p2, p3, p4}, Lo/race;->updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object p1

    goto :goto_2

    .line 370
    :cond_1
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v5

    .line 371
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {p2, v3}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 373
    invoke-virtual {v5}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 377
    :cond_2
    invoke-interface {v6, v3}, Lo/Utils$3$onPostMessage;->getCompleteChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 379
    invoke-virtual {v5}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object p5

    invoke-virtual {p5}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 380
    invoke-virtual {v5}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object p5

    invoke-interface {p4, p5}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p5

    invoke-interface {p5}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    move-object v4, p4

    goto :goto_1

    .line 385
    :cond_3
    invoke-interface {p4, v5, p3}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    goto :goto_0

    .line 389
    :cond_4
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p3

    goto :goto_0

    .line 392
    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 393
    iget-object v1, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 395
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v2

    move-object v7, p6

    .line 394
    invoke-interface/range {v1 .. v7}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 403
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p3

    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4}, Lo/Utils$3;->filtersNodes()Z

    move-result p4

    .line 402
    invoke-virtual {p1, p2, p3, p4}, Lo/race;->updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method private static cacheHasChild(Lo/race;Lo/LogFileManager;)Z
    .locals 0

    .line 413
    invoke-virtual {p0}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result p0

    return p0
.end method

.method private generateEventCacheAfterServerEvent(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/race;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 193
    invoke-virtual/range {p1 .. p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v4

    .line 194
    invoke-virtual {v3, v2}, Lo/MetaDataStore;->shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v1

    .line 199
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v5

    invoke-virtual {v5}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v5

    const-string v8, "If change path is empty, we must have complete server data"

    .line 201
    invoke-static {v5, v8}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v5

    invoke-virtual {v5}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual/range {p1 .. p1}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 211
    instance-of v8, v5, Lo/setCurrentSession;

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v5

    .line 212
    :goto_0
    invoke-virtual {v3, v5}, Lo/MetaDataStore;->calcCompleteEventChildren(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    .line 217
    :goto_1
    iget-object v5, v0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {v5}, Lo/Utils$3;->getIndex()Lo/setLogFile;

    move-result-object v5

    invoke-static {v3, v5}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v3

    .line 218
    iget-object v5, v0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v8

    invoke-virtual {v8}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v8

    move-object/from16 v15, p5

    .line 219
    invoke-interface {v5, v8, v3, v15}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v3

    goto/16 :goto_4

    :cond_3
    move-object/from16 v15, p5

    .line 222
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v11

    .line 223
    invoke-virtual {v11}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 225
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-string v8, "Can\'t have a priority with additional path components"

    .line 224
    invoke-static {v5, v8}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 227
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v8

    invoke-virtual {v8}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    .line 230
    invoke-virtual {v3, v2, v5, v8}, Lo/MetaDataStore;->calcEventCacheAfterServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 232
    iget-object v5, v0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 233
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v8

    invoke-interface {v5, v8, v3}, Lo/Utils$3;->updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v3

    goto :goto_4

    .line 236
    :cond_5
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v3

    goto :goto_4

    .line 239
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v13

    .line 242
    invoke-virtual {v4, v11}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v5

    invoke-virtual {v5}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 246
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    .line 245
    invoke-virtual {v3, v2, v8, v5}, Lo/MetaDataStore;->calcEventCacheAfterServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 250
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 251
    invoke-interface {v5, v11}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 252
    invoke-interface {v5, v13, v3}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    goto :goto_3

    .line 255
    :cond_7
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-interface {v3, v11}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    goto :goto_3

    .line 258
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v5

    invoke-virtual {v3, v11, v5}, Lo/MetaDataStore;->calcCompleteChild(Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    :goto_3
    move-object v12, v3

    if-eqz v12, :cond_9

    .line 261
    iget-object v9, v0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 263
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v10

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 262
    invoke-interface/range {v9 .. v15}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v3

    goto :goto_4

    .line 271
    :cond_9
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v3

    .line 277
    :goto_4
    invoke-virtual {v4}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/4 v6, 0x1

    :cond_b
    iget-object v2, v0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 278
    invoke-interface {v2}, Lo/Utils$3;->filtersNodes()Z

    move-result v2

    .line 275
    invoke-virtual {v1, v3, v6, v2}, Lo/race;->updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object v1

    return-object v1
.end method

.method private listenComplete(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;
    .locals 8

    .line 663
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    .line 666
    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v0

    .line 667
    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 668
    :goto_1
    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result p4

    .line 665
    invoke-virtual {p1, v0, v1, p4}, Lo/race;->updateServerSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object v3

    .line 669
    sget-object v6, Lo/awaitEvenIfOnMainThread;->NO_COMPLETE_SOURCE:Lo/Utils$3$onPostMessage;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lo/awaitEvenIfOnMainThread;->generateEventCacheAfterServerEvent(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/race;

    move-result-object p1

    return-object p1
.end method

.method private maybeAddValueEvent(Lo/race;Lo/race;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/race;",
            "Lo/race;",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p2}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    .line 173
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 175
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-virtual {p1}, Lo/race;->getCompleteEventSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    :cond_2
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lo/race;->getCompleteEventSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 182
    :cond_3
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p1}, Lo/sanitizeAttribute;->valueChange(Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public applyOperation(Lo/race;Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Lo/awaitEvenIfOnMainThread$onMessageChannelReady;
    .locals 9

    .line 65
    new-instance v8, Lo/Utils$1;

    invoke-direct {v8}, Lo/Utils$1;-><init>()V

    .line 67
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual {p2}, Lo/getKeysFileForSession;->getType()Lo/getKeysFileForSession$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    .line 156
    invoke-direct/range {v0 .. v5}, Lo/awaitEvenIfOnMainThread;->listenComplete(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object p2

    goto/16 :goto_4

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown operation: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/getKeysFileForSession;->getType()Lo/getKeysFileForSession$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 132
    :cond_1
    check-cast p2, Lo/getUserDataFileForSession;

    .line 133
    invoke-virtual {p2}, Lo/getUserDataFileForSession;->isRevert()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Lo/getUserDataFileForSession;->getAffectedTree()Lo/persistFatalEvent;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 135
    invoke-direct/range {v0 .. v6}, Lo/awaitEvenIfOnMainThread;->ackUserWrite(Lo/race;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object p2

    goto/16 :goto_4

    .line 146
    :cond_2
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    .line 144
    invoke-virtual/range {v0 .. v5}, Lo/awaitEvenIfOnMainThread;->revertUserWrite(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object p2

    goto/16 :goto_4

    .line 103
    :cond_3
    check-cast p2, Lo/readKeyData;

    .line 104
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 109
    invoke-virtual {p2}, Lo/readKeyData;->getChildren()Lo/ExecutorUtils$1$1;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 106
    invoke-direct/range {v0 .. v6}, Lo/awaitEvenIfOnMainThread;->applyUserMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object p2

    goto/16 :goto_4

    .line 114
    :cond_4
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isFromServer()Z

    move-result v0

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 117
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isTagged()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v6, 0x1

    .line 121
    :goto_1
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 122
    invoke-virtual {p2}, Lo/readKeyData;->getChildren()Lo/ExecutorUtils$1$1;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    .line 119
    invoke-direct/range {v0 .. v7}, Lo/awaitEvenIfOnMainThread;->applyServerMerge(Lo/race;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object p2

    goto :goto_4

    .line 70
    :cond_7
    check-cast p2, Lo/keysDataToJson;

    .line 71
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 76
    invoke-virtual {p2}, Lo/keysDataToJson;->getSnapshot()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 73
    invoke-direct/range {v0 .. v6}, Lo/awaitEvenIfOnMainThread;->applyUserOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;

    move-result-object p2

    goto :goto_4

    .line 81
    :cond_8
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isFromServer()Z

    move-result v0

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 86
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->isTagged()Z

    move-result v0

    if-nez v0, :cond_a

    .line 87
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v6, 0x1

    .line 92
    :goto_3
    invoke-virtual {p2}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 93
    invoke-virtual {p2}, Lo/keysDataToJson;->getSnapshot()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    .line 90
    invoke-direct/range {v0 .. v7}, Lo/awaitEvenIfOnMainThread;->applyServerOverwrite(Lo/race;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;ZLo/Utils$1;)Lo/race;

    move-result-object p2

    .line 165
    :goto_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lo/Utils$1;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lo/awaitEvenIfOnMainThread;->maybeAddValueEvent(Lo/race;Lo/race;Ljava/util/List;)V

    .line 167
    new-instance p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;

    invoke-direct {p1, p2, p3}, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;-><init>(Lo/race;Ljava/util/List;)V

    return-object p1
.end method

.method public revertUserWrite(Lo/race;Lo/ExecutorUtils$2;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;Lo/Utils$1;)Lo/race;
    .locals 8

    .line 607
    invoke-virtual {p3, p2}, Lo/MetaDataStore;->shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    .line 610
    :cond_0
    new-instance v6, Lo/awaitEvenIfOnMainThread$extraCallback;

    invoke-direct {v6, p3, p1, p4}, Lo/awaitEvenIfOnMainThread$extraCallback;-><init>(Lo/MetaDataStore;Lo/race;Lo/LogFileManager$DirectoryProvider;)V

    .line 612
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v2

    .line 614
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object p4

    invoke-virtual {p4}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_1

    .line 624
    :cond_1
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v3

    .line 625
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lo/MetaDataStore;->calcCompleteChild(Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    if-nez p4, :cond_2

    .line 626
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-virtual {v2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    invoke-interface {p4, v3}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    :cond_2
    move-object v4, p4

    if-eqz v4, :cond_3

    .line 630
    iget-object v1, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 632
    invoke-virtual {p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v5

    move-object v7, p5

    .line 631
    invoke-interface/range {v1 .. v7}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 633
    invoke-virtual {p1}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p4

    invoke-virtual {p4}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    invoke-interface {p4, v3}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 635
    iget-object v1, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    .line 637
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v4

    invoke-virtual {p2}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v5

    move-object v7, p5

    .line 636
    invoke-interface/range {v1 .. v7}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v2

    .line 641
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 643
    invoke-virtual {p1}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 644
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 645
    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4}, Lo/Utils$3;->getIndex()Lo/setLogFile;

    move-result-object p4

    invoke-static {p2, p4}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 646
    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4, v2, p2, p5}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v2

    goto :goto_3

    .line 616
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 617
    invoke-virtual {p1}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    goto :goto_2

    .line 619
    :cond_6
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/MetaDataStore;->calcCompleteEventChildren(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 621
    :goto_2
    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4}, Lo/Utils$3;->getIndex()Lo/setLogFile;

    move-result-object p4

    invoke-static {p2, p4}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 622
    iget-object p4, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p4, v2, p2, p5}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v2

    .line 651
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_9

    .line 652
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/MetaDataStore;->shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p2, 0x1

    .line 653
    :goto_5
    iget-object p3, p0, Lo/awaitEvenIfOnMainThread;->filter:Lo/Utils$3;

    invoke-interface {p3}, Lo/Utils$3;->filtersNodes()Z

    move-result p3

    invoke-virtual {p1, v2, p2, p3}, Lo/race;->updateEventSnap(Lo/discardOldLogFiles;ZZ)Lo/race;

    move-result-object p1

    return-object p1
.end method
