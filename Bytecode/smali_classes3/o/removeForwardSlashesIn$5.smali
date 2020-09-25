.class final Lo/removeForwardSlashesIn$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->addEventRegistration(Lo/addDelayedShutdownHook;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lo/Utils;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/removeForwardSlashesIn;

.field final synthetic val$eventRegistration:Lo/addDelayedShutdownHook;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/addDelayedShutdownHook;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$5;->val$eventRegistration:Lo/addDelayedShutdownHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$5;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lo/removeForwardSlashesIn$5;->val$eventRegistration:Lo/addDelayedShutdownHook;

    invoke-virtual {v0}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v2}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    .line 476
    :goto_0
    invoke-virtual {v2}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    .line 477
    invoke-virtual {v2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/getModelName;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    invoke-virtual {v7, v6}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    :goto_1
    if-nez v5, :cond_2

    .line 484
    invoke-virtual {v7}, Lo/getModelName;->hasCompleteView()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, 0x1

    .line 487
    :cond_3
    :goto_3
    invoke-virtual {v6}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v7

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v7

    .line 488
    :goto_4
    invoke-virtual {v2, v7}, Lo/persistFatalEvent;->getChild(Lo/LogFileManager;)Lo/persistFatalEvent;

    move-result-object v2

    .line 489
    invoke-virtual {v6}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v6

    goto :goto_0

    .line 493
    :cond_5
    iget-object v2, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v2}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getModelName;

    if-nez v2, :cond_6

    .line 495
    new-instance v2, Lo/getModelName;

    iget-object v6, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v6}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v6

    invoke-direct {v2, v6}, Lo/getModelName;-><init>(Lo/NativeSessionFileGzipper;)V

    .line 496
    iget-object v6, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v6}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v7

    invoke-static {v6, v7}, Lo/removeForwardSlashesIn;->access$702(Lo/removeForwardSlashesIn;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    goto :goto_7

    :cond_6
    if-nez v5, :cond_8

    .line 498
    invoke-virtual {v2}, Lo/getModelName;->hasCompleteView()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v4, :cond_9

    goto :goto_7

    .line 502
    :cond_9
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    .line 505
    :goto_7
    iget-object v6, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v6}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v6

    invoke-interface {v6, v0}, Lo/NativeSessionFileGzipper;->setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    if-eqz v4, :cond_a

    .line 509
    new-instance v6, Lo/lambda$getSortedCustomAttributes$0;

    .line 510
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object v7

    invoke-static {v4, v7}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v4

    invoke-direct {v6, v4, v8, v3}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    goto/16 :goto_a

    .line 513
    :cond_a
    iget-object v4, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v4}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v4

    invoke-interface {v4, v0}, Lo/NativeSessionFileGzipper;->serverCache(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v6

    .line 514
    invoke-virtual {v6}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_a

    .line 517
    :cond_b
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v4

    .line 518
    iget-object v7, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v7}, Lo/removeForwardSlashesIn;->access$700(Lo/removeForwardSlashesIn;)Lo/persistFatalEvent;

    move-result-object v7

    invoke-virtual {v7, v1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object v7

    .line 519
    invoke-virtual {v7}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object v7

    invoke-virtual {v7}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/persistFatalEvent;

    invoke-virtual {v10}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/getModelName;

    if-eqz v10, :cond_c

    .line 522
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lo/getModelName;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 525
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/LogFileManager;

    invoke-interface {v4, v9, v10}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    goto :goto_8

    .line 530
    :cond_d
    invoke-virtual {v6}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    invoke-interface {v6}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/QueueFile;

    .line 531
    invoke-virtual {v7}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v9

    invoke-interface {v4, v9}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 533
    invoke-virtual {v7}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v9

    invoke-virtual {v7}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v7

    invoke-interface {v4, v9, v7}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    goto :goto_9

    .line 536
    :cond_f
    new-instance v6, Lo/lambda$getSortedCustomAttributes$0;

    .line 538
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object v7

    invoke-static {v4, v7}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v4

    invoke-direct {v6, v4, v3, v3}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    .line 542
    :goto_a
    invoke-virtual {v2, v0}, Lo/getModelName;->viewExistsForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 543
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_10

    .line 545
    iget-object v4, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    .line 546
    invoke-static {v4}, Lo/removeForwardSlashesIn;->access$800(Lo/removeForwardSlashesIn;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    const-string v7, "View does not exist but we have a tag"

    .line 545
    invoke-static {v4, v7}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 547
    iget-object v4, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v4}, Lo/removeForwardSlashesIn;->access$900(Lo/removeForwardSlashesIn;)Lo/InstallerPackageNameProvider;

    move-result-object v4

    .line 548
    iget-object v7, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v7}, Lo/removeForwardSlashesIn;->access$800(Lo/removeForwardSlashesIn;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v7, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v7}, Lo/removeForwardSlashesIn;->access$1000(Lo/removeForwardSlashesIn;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_10
    iget-object v4, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v4}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lo/writeUserData;->childWrites(Lo/ExecutorUtils$2;)Lo/MetaDataStore;

    move-result-object v1

    .line 552
    iget-object v4, p0, Lo/removeForwardSlashesIn$5;->val$eventRegistration:Lo/addDelayedShutdownHook;

    .line 553
    invoke-virtual {v2, v4, v1, v6}, Lo/getModelName;->addEventRegistration(Lo/addDelayedShutdownHook;Lo/MetaDataStore;Lo/lambda$getSortedCustomAttributes$0;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_11

    if-nez v5, :cond_11

    .line 555
    invoke-virtual {v2, v0}, Lo/getModelName;->viewForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/callTask;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lo/removeForwardSlashesIn$5;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3, v0, v2}, Lo/removeForwardSlashesIn;->access$1100(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/callTask;)V

    :cond_11
    return-object v1
.end method
