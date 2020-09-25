.class public final Lo/jsonToKeysData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NativeSessionFileGzipper;


# instance fields
.field private final cachePolicy:Lo/MetaDataStore$1;

.field private final logger:Lo/FileLogStore;

.field private serverCacheUpdatesSinceLastPruneCheck:J

.field private final storageLayer:Lo/processNativeSessions;

.field private final trackedQueryManager:Lo/persistNonFatalEvent;


# direct methods
.method public constructor <init>(Lo/getNamedThreadFactory;Lo/processNativeSessions;Lo/MetaDataStore$1;)V
    .locals 1

    .line 47
    new-instance v0, Lo/persistUserId;

    invoke-direct {v0}, Lo/persistUserId;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/jsonToKeysData;-><init>(Lo/getNamedThreadFactory;Lo/processNativeSessions;Lo/MetaDataStore$1;Lo/finalizeSessionWithNativeEvent;)V

    return-void
.end method

.method public constructor <init>(Lo/getNamedThreadFactory;Lo/processNativeSessions;Lo/MetaDataStore$1;Lo/finalizeSessionWithNativeEvent;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lo/jsonToKeysData;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 52
    iput-object p2, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    const-string p2, "Persistence"

    .line 53
    invoke-virtual {p1, p2}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    .line 54
    new-instance p1, Lo/persistNonFatalEvent;

    iget-object p2, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    iget-object v0, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-direct {p1, p2, v0, p4}, Lo/persistNonFatalEvent;-><init>(Lo/processNativeSessions;Lo/FileLogStore;Lo/finalizeSessionWithNativeEvent;)V

    iput-object p1, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    .line 55
    iput-object p3, p0, Lo/jsonToKeysData;->cachePolicy:Lo/MetaDataStore$1;

    return-void
.end method

.method private doPruneCheckAfterServerUpdate()V
    .locals 7

    .line 251
    iget-wide v0, p0, Lo/jsonToKeysData;->serverCacheUpdatesSinceLastPruneCheck:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/jsonToKeysData;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 252
    iget-object v2, p0, Lo/jsonToKeysData;->cachePolicy:Lo/MetaDataStore$1;

    invoke-interface {v2, v0, v1}, Lo/MetaDataStore$1;->shouldCheckCacheSize(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Reached prune check threshold."

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v2, 0x0

    .line 256
    iput-wide v2, p0, Lo/jsonToKeysData;->serverCacheUpdatesSinceLastPruneCheck:J

    const/4 v0, 0x1

    .line 258
    iget-object v2, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v2}, Lo/processNativeSessions;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v2

    .line 259
    iget-object v4, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-virtual {v4}, Lo/FileLogStore;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cache size: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 262
    iget-object v4, p0, Lo/jsonToKeysData;->cachePolicy:Lo/MetaDataStore$1;

    iget-object v5, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    .line 263
    invoke-virtual {v5}, Lo/persistNonFatalEvent;->countOfPrunableQueries()J

    move-result-wide v5

    invoke-interface {v4, v2, v3, v5, v6}, Lo/MetaDataStore$1;->shouldPrune(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    iget-object v3, p0, Lo/jsonToKeysData;->cachePolicy:Lo/MetaDataStore$1;

    invoke-virtual {v2, v3}, Lo/persistNonFatalEvent;->pruneOldQueries(Lo/MetaDataStore$1;)Lo/ResponseParser;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lo/ResponseParser;->prunesAnything()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    iget-object v3, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lo/processNativeSessions;->pruneCache(Lo/ExecutorUtils$2;Lo/ResponseParser;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 270
    :goto_1
    iget-object v2, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v2}, Lo/processNativeSessions;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v2

    .line 271
    iget-object v4, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-virtual {v4}, Lo/FileLogStore;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cache size after prune: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 2

    .line 116
    invoke-virtual {p2}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExecutorUtils$2;

    invoke-virtual {p1, v1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v1

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager$DirectoryProvider;

    .line 119
    invoke-virtual {p0, v1, v0}, Lo/jsonToKeysData;->applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->hasActiveDefaultQuery(Lo/ExecutorUtils$2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1, p2}, Lo/processNativeSessions;->overwriteServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    .line 109
    iget-object p2, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {p2, p1}, Lo/persistNonFatalEvent;->ensureCompleteTrackedQuery(Lo/ExecutorUtils$2;)V

    :cond_0
    return-void
.end method

.method public final loadUserWrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->loadUserWrites()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeAllUserWrites()V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->removeAllUserWrites()V

    return-void
.end method

.method public final removeUserWrite(J)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1, p2}, Lo/processNativeSessions;->removeUserWrite(J)V

    return-void
.end method

.method public final runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->beginTransaction()V

    .line 239
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 243
    :try_start_1
    iget-object v0, p0, Lo/jsonToKeysData;->logger:Lo/FileLogStore;

    const-string v1, "Caught Throwable."

    invoke-virtual {v0, v1, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 246
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->endTransaction()V

    .line 247
    throw p1
.end method

.method public final saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/processNativeSessions;->saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V

    return-void
.end method

.method public final saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/processNativeSessions;->saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V

    return-void
.end method

.method public final serverCache(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$getSortedCustomAttributes$0;
    .locals 7

    .line 146
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->isQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lo/parse;->complete:Z

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    iget-wide v4, v0, Lo/parse;->id:J

    invoke-interface {v3, v4, v5}, Lo/processNativeSessions;->loadTrackedQueryKeys(J)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/persistNonFatalEvent;->getKnownCompleteChildren(Lo/ExecutorUtils$2;)Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x0

    .line 160
    :goto_1
    iget-object v4, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/processNativeSessions;->serverCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 162
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v2

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LogFileManager;

    .line 165
    invoke-interface {v4, v5}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    goto :goto_2

    .line 167
    :cond_2
    new-instance v0, Lo/lambda$getSortedCustomAttributes$0;

    .line 168
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object p1

    invoke-static {v2, p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-direct {v0, p1, v3, v1}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    return-object v0

    .line 170
    :cond_3
    new-instance v0, Lo/lambda$getSortedCustomAttributes$0;

    .line 171
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object p1

    invoke-static {v4, p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-direct {v0, p1, v3, v2}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    return-object v0
.end method

.method public final setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-void
.end method

.method public final setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->setQueriesComplete(Lo/ExecutorUtils$2;)V

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->setQueryCompleteIfExists(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-void
.end method

.method public final setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-void
.end method

.method public final setTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "We should only track keys for filtered queries."

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    iget-boolean v0, p1, Lo/parse;->active:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "We only expect tracked keys for currently-active queries."

    invoke-static {v1, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 219
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    iget-wide v1, p1, Lo/parse;->id:J

    invoke-interface {v0, v1, v2, p2}, Lo/processNativeSessions;->saveTrackedQueryKeys(JLjava/util/Set;)V

    return-void
.end method

.method public final updateServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1, p2}, Lo/processNativeSessions;->mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    .line 189
    invoke-direct {p0}, Lo/jsonToKeysData;->doPruneCheckAfterServerUpdate()V

    return-void
.end method

.method public final updateServerCache(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/LogFileManager$DirectoryProvider;)V
    .locals 2

    .line 177
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/processNativeSessions;->overwriteServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/processNativeSessions;->mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lo/jsonToKeysData;->setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 183
    invoke-direct {p0}, Lo/jsonToKeysData;->doPruneCheckAfterServerUpdate()V

    return-void
.end method

.method public final updateTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "We should only track keys for filtered queries."

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lo/jsonToKeysData;->trackedQueryManager:Lo/persistNonFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-boolean v0, p1, Lo/parse;->active:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "We only expect tracked keys for currently-active queries."

    invoke-static {v1, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 231
    iget-object v0, p0, Lo/jsonToKeysData;->storageLayer:Lo/processNativeSessions;

    iget-wide v1, p1, Lo/parse;->id:J

    invoke-interface {v0, v1, v2, p2, p3}, Lo/processNativeSessions;->updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method
