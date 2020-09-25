.class public Lo/persistNonFatalEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HAS_ACTIVE_DEFAULT_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/parse;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final HAS_DEFAULT_COMPLETE_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/parse;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_PRUNABLE_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Lo/parse;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_UNPRUNABLE_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Lo/parse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lo/finalizeSessionWithNativeEvent;

.field private currentQueryId:J

.field private final logger:Lo/FileLogStore;

.field private final storageLayer:Lo/processNativeSessions;

.field private trackedQueryTree:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/parse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/persistNonFatalEvent$2;

    invoke-direct {v0}, Lo/persistNonFatalEvent$2;-><init>()V

    sput-object v0, Lo/persistNonFatalEvent;->HAS_DEFAULT_COMPLETE_PREDICATE:Lo/onReportSendComplete;

    .line 48
    new-instance v0, Lo/persistNonFatalEvent$3;

    invoke-direct {v0}, Lo/persistNonFatalEvent$3;-><init>()V

    sput-object v0, Lo/persistNonFatalEvent;->HAS_ACTIVE_DEFAULT_PREDICATE:Lo/onReportSendComplete;

    .line 57
    new-instance v0, Lo/persistNonFatalEvent$4;

    invoke-direct {v0}, Lo/persistNonFatalEvent$4;-><init>()V

    sput-object v0, Lo/persistNonFatalEvent;->IS_QUERY_PRUNABLE_PREDICATE:Lo/onReportSendComplete;

    .line 65
    new-instance v0, Lo/persistNonFatalEvent$5;

    invoke-direct {v0}, Lo/persistNonFatalEvent$5;-><init>()V

    sput-object v0, Lo/persistNonFatalEvent;->IS_QUERY_UNPRUNABLE_PREDICATE:Lo/onReportSendComplete;

    return-void
.end method

.method public constructor <init>(Lo/processNativeSessions;Lo/FileLogStore;Lo/finalizeSessionWithNativeEvent;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    .line 99
    iput-object p1, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    .line 100
    iput-object p2, p0, Lo/persistNonFatalEvent;->logger:Lo/FileLogStore;

    .line 101
    iput-object p3, p0, Lo/persistNonFatalEvent;->clock:Lo/finalizeSessionWithNativeEvent;

    .line 102
    new-instance p1, Lo/persistFatalEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    .line 104
    invoke-direct {p0}, Lo/persistNonFatalEvent;->resetPreviouslyActiveTrackedQueries()V

    .line 107
    iget-object p1, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {p1}, Lo/processNativeSessions;->loadTrackedQueries()Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/parse;

    .line 109
    iget-wide v0, p2, Lo/parse;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    .line 110
    invoke-direct {p0, p2}, Lo/persistNonFatalEvent;->cacheTrackedQuery(Lo/parse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lo/onReportSendComplete;
    .locals 1

    .line 37
    sget-object v0, Lo/persistNonFatalEvent;->IS_QUERY_PRUNABLE_PREDICATE:Lo/onReportSendComplete;

    return-object v0
.end method

.method static synthetic access$100(Lo/persistNonFatalEvent;Lo/parse;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->saveTrackedQuery(Lo/parse;)V

    return-void
.end method

.method private static assertValidTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "Can\'t have tracked non-default query that loads all data"

    .line 86
    invoke-static {p0, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private cacheTrackedQuery(Lo/parse;)V
    .locals 6

    .line 388
    iget-object v0, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-static {v0}, Lo/persistNonFatalEvent;->assertValidTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 390
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    iget-object v1, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 391
    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    iget-object v1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    iget-object v2, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v1

    iput-object v1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    .line 398
    :cond_0
    iget-object v1, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/parse;

    if-eqz v1, :cond_2

    .line 399
    iget-wide v1, v1, Lo/parse;->id:J

    iget-wide v3, p1, Lo/parse;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 401
    iget-object v1, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static calculateCountToPrune(Lo/MetaDataStore$1;J)J
    .locals 4

    .line 262
    invoke-interface {p0}, Lo/MetaDataStore$1;->getPercentOfQueriesToPruneAtOnce()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    long-to-float v0, p1

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 266
    invoke-interface {p0}, Lo/MetaDataStore$1;->getMaxNumberOfQueriesToKeep()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private filteredQueryIdsAtPath(Lo/ExecutorUtils$2;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 376
    iget-object v1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {v1, p1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 378
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/parse;

    .line 379
    iget-object v2, v1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-wide v1, v1, Lo/parse;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getQueriesMatching(Lo/onReportSendComplete;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onReportSendComplete<",
            "Lo/parse;",
            ">;)",
            "Ljava/util/List<",
            "Lo/parse;",
            ">;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-object v1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/parse;

    .line 413
    invoke-interface {p1, v3}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private includedInDefaultCompleteQuery(Lo/ExecutorUtils$2;)Z
    .locals 2

    .line 369
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    sget-object v1, Lo/persistNonFatalEvent;->HAS_DEFAULT_COMPLETE_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->findRootMostMatchingPath(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Lo/ExecutorUtils$2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static normalizeQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p0

    invoke-static {p0}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private resetPreviouslyActiveTrackedQueries()V
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->beginTransaction()V

    .line 119
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    iget-object v1, p0, Lo/persistNonFatalEvent;->clock:Lo/finalizeSessionWithNativeEvent;

    invoke-interface {v1}, Lo/finalizeSessionWithNativeEvent;->millis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo/processNativeSessions;->resetPreviouslyActiveTrackedQueries(J)V

    .line 120
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v1}, Lo/processNativeSessions;->endTransaction()V

    .line 123
    throw v0
.end method

.method private saveTrackedQuery(Lo/parse;)V
    .locals 1

    .line 405
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->cacheTrackedQuery(Lo/parse;)V

    .line 406
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0, p1}, Lo/processNativeSessions;->saveTrackedQuery(Lo/parse;)V

    return-void
.end method

.method private setQueryActiveFlag(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V
    .locals 8

    .line 154
    invoke-static {p1}, Lo/persistNonFatalEvent;->normalizeQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    .line 155
    invoke-virtual {p0, v3}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lo/persistNonFatalEvent;->clock:Lo/finalizeSessionWithNativeEvent;

    invoke-interface {v0}, Lo/finalizeSessionWithNativeEvent;->millis()J

    move-result-wide v4

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, v4, v5}, Lo/parse;->updateLastUse(J)Lo/parse;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/parse;->setActiveState(Z)Lo/parse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "If we\'re setting the query to inactive, we should already be tracking it!"

    .line 162
    invoke-static {p2, p1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 164
    new-instance p1, Lo/parse;

    iget-wide v1, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    const/4 v6, 0x0

    move-object v0, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->saveTrackedQuery(Lo/parse;)V

    return-void
.end method


# virtual methods
.method public countOfPrunableQueries()J
    .locals 2

    .line 331
    sget-object v0, Lo/persistNonFatalEvent;->IS_QUERY_PRUNABLE_PREDICATE:Lo/onReportSendComplete;

    invoke-direct {p0, v0}, Lo/persistNonFatalEvent;->getQueriesMatching(Lo/onReportSendComplete;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public ensureCompleteTrackedQuery(Lo/ExecutorUtils$2;)V
    .locals 9

    .line 304
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->includedInDefaultCompleteQuery(Lo/ExecutorUtils$2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-static {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v4

    .line 309
    invoke-virtual {p0, v4}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object p1

    if-nez p1, :cond_0

    .line 311
    new-instance p1, Lo/parse;

    iget-wide v2, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/persistNonFatalEvent;->currentQueryId:J

    iget-object v0, p0, Lo/persistNonFatalEvent;->clock:Lo/finalizeSessionWithNativeEvent;

    .line 315
    invoke-interface {v0}, Lo/finalizeSessionWithNativeEvent;->millis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    goto :goto_0

    .line 319
    :cond_0
    iget-boolean v0, p1, Lo/parse;->complete:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "This should have been handled above!"

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lo/parse;->setComplete()Lo/parse;

    move-result-object p1

    .line 322
    :goto_0
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->saveTrackedQuery(Lo/parse;)V

    :cond_1
    return-void
.end method

.method public findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;
    .locals 2

    .line 127
    invoke-static {p1}, Lo/persistNonFatalEvent;->normalizeQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/parse;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKnownCompleteChildren(Lo/ExecutorUtils$2;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/persistNonFatalEvent;->isQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Path is fully complete."

    .line 279
    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 284
    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->filteredQueryIdsAtPath(Lo/ExecutorUtils$2;)Ljava/util/Set;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    iget-object v2, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v2, v1}, Lo/processNativeSessions;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_0
    iget-object v1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {v1, p1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p1

    invoke-virtual {p1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/persistFatalEvent;

    .line 294
    invoke-virtual {v1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lo/persistNonFatalEvent;->HAS_DEFAULT_COMPLETE_PREDICATE:Lo/onReportSendComplete;

    .line 295
    invoke-virtual {v1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hasActiveDefaultQuery(Lo/ExecutorUtils$2;)Z
    .locals 2

    .line 327
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    sget-object v1, Lo/persistNonFatalEvent;->HAS_ACTIVE_DEFAULT_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)Z
    .locals 4

    .line 199
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/persistNonFatalEvent;->includedInDefaultCompleteQuery(Lo/ExecutorUtils$2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 205
    :cond_1
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/parse;

    iget-boolean p1, p1, Lo/parse;->complete:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public pruneOldQueries(Lo/MetaDataStore$1;)Lo/ResponseParser;
    .locals 8

    .line 213
    sget-object v0, Lo/persistNonFatalEvent;->IS_QUERY_PRUNABLE_PREDICATE:Lo/onReportSendComplete;

    invoke-direct {p0, v0}, Lo/persistNonFatalEvent;->getQueriesMatching(Lo/onReportSendComplete;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lo/persistNonFatalEvent;->calculateCountToPrune(Lo/MetaDataStore$1;J)J

    move-result-wide v1

    .line 215
    new-instance p1, Lo/ResponseParser;

    invoke-direct {p1}, Lo/ResponseParser;-><init>()V

    .line 217
    iget-object v3, p0, Lo/persistNonFatalEvent;->logger:Lo/FileLogStore;

    invoke-virtual {v3}, Lo/FileLogStore;->logsDebug()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lo/persistNonFatalEvent;->logger:Lo/FileLogStore;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pruning old queries.  Prunable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Count to prune: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v3, v5, v6}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_0
    new-instance v3, Lo/persistNonFatalEvent$8;

    invoke-direct {v3, p0}, Lo/persistNonFatalEvent$8;-><init>(Lo/persistNonFatalEvent;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_0
    int-to-long v5, v3

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    .line 235
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/parse;

    .line 236
    iget-object v6, v5, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v6}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-virtual {p1, v6}, Lo/ResponseParser;->prune(Lo/ExecutorUtils$2;)Lo/ResponseParser;

    move-result-object p1

    .line 237
    iget-object v5, v5, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {p0, v5}, Lo/persistNonFatalEvent;->removeTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    long-to-int v2, v1

    .line 241
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/parse;

    .line 243
    iget-object v1, v1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/ResponseParser;->keep(Lo/ExecutorUtils$2;)Lo/ResponseParser;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    :cond_2
    sget-object v0, Lo/persistNonFatalEvent;->IS_QUERY_UNPRUNABLE_PREDICATE:Lo/onReportSendComplete;

    invoke-direct {p0, v0}, Lo/persistNonFatalEvent;->getQueriesMatching(Lo/onReportSendComplete;)Ljava/util/List;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lo/persistNonFatalEvent;->logger:Lo/FileLogStore;

    invoke-virtual {v1}, Lo/FileLogStore;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lo/persistNonFatalEvent;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unprunable queries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/parse;

    .line 252
    iget-object v1, v1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/ResponseParser;->keep(Lo/ExecutorUtils$2;)Lo/ResponseParser;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public removeTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 4

    .line 133
    invoke-static {p1}, Lo/persistNonFatalEvent;->normalizeQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Query must exist to be removed."

    .line 135
    invoke-static {v1, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    iget-wide v2, v0, Lo/parse;->id:J

    invoke-interface {v1, v2, v3}, Lo/processNativeSessions;->deleteTrackedQuery(J)V

    .line 138
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 139
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->remove(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    iput-object p1, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    :cond_1
    return-void
.end method

.method public setQueriesComplete(Lo/ExecutorUtils$2;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    .line 181
    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    new-instance v0, Lo/persistNonFatalEvent$1;

    invoke-direct {v0, p0}, Lo/persistNonFatalEvent$1;-><init>(Lo/persistNonFatalEvent;)V

    .line 182
    invoke-virtual {p1, v0}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    return-void
.end method

.method public setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, v0}, Lo/persistNonFatalEvent;->setQueryActiveFlag(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V

    return-void
.end method

.method public setQueryCompleteIfExists(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    .line 172
    invoke-static {p1}, Lo/persistNonFatalEvent;->normalizeQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lo/persistNonFatalEvent;->findTrackedQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/parse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-boolean v0, p1, Lo/parse;->complete:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lo/parse;->setComplete()Lo/parse;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/persistNonFatalEvent;->saveTrackedQuery(Lo/parse;)V

    :cond_0
    return-void
.end method

.method public setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lo/persistNonFatalEvent;->setQueryActiveFlag(Lo/lambda$awaitEvenIfOnMainThread$0;Z)V

    return-void
.end method

.method verifyCache()V
    .locals 5

    .line 337
    iget-object v0, p0, Lo/persistNonFatalEvent;->storageLayer:Lo/processNativeSessions;

    invoke-interface {v0}, Lo/processNativeSessions;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v2, p0, Lo/persistNonFatalEvent;->trackedQueryTree:Lo/persistFatalEvent;

    new-instance v3, Lo/persistNonFatalEvent$9;

    invoke-direct {v3, p0, v1}, Lo/persistNonFatalEvent$9;-><init>(Lo/persistNonFatalEvent;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    .line 351
    new-instance v2, Lo/persistNonFatalEvent$6;

    invoke-direct {v2, p0}, Lo/persistNonFatalEvent$6;-><init>(Lo/persistNonFatalEvent;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tracked queries out of sync.  Tracked queries: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Stored queries: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v2, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method
