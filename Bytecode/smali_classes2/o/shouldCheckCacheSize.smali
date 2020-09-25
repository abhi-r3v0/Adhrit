.class public final Lo/shouldCheckCacheSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\u0008\u001a.\u0010\u0011\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0015H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001a\u0012\u0010\u0017\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00100\u0008H\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "REUSABLE_CLAIMED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "REUSABLE_CLAIMED$annotations",
        "()V",
        "UNDEFINED",
        "UNDEFINED$annotations",
        "executeUnconfined",
        "",
        "Lkotlinx/coroutines/DispatchedContinuation;",
        "contState",
        "",
        "mode",
        "",
        "doYield",
        "block",
        "Lkotlin/Function0;",
        "",
        "resumeCancellableWith",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "result",
        "Lkotlin/Result;",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V",
        "yieldUndispatched",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/AppCompatDrawableManager;

.field private static final onPostMessage:Lo/AppCompatDrawableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/shouldCheckCacheSize;->onPostMessage:Lo/AppCompatDrawableManager;

    .line 17
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/shouldCheckCacheSize;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Lo/AppCompatDrawableManager;
    .locals 1

    .line 1
    sget-object v0, Lo/shouldCheckCacheSize;->onPostMessage:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public static final onNavigationEvent(Lo/setSessionPersistenceKey;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 249
    instance-of v0, p0, Lo/getMaxNumberOfQueriesToKeep;

    if-eqz v0, :cond_9

    check-cast p0, Lo/getMaxNumberOfQueriesToKeep;

    .line 1012
    invoke-static {p1}, Lo/emptyWrite;->extraCallback(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lo/evaluate;

    invoke-direct {v1, v0}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    .line 2000
    iget-object v2, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v2}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    .line 285
    invoke-virtual {v0}, Lo/zombifyForRemove;->ICustomTabsCallback()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 286
    iput-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 287
    iput v2, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    .line 288
    iget-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    .line 3000
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v0}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    .line 288
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lo/zombifyForRemove;->onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V

    return-void

    .line 294
    :cond_1
    sget-object v0, Lo/includedInDefaultCompleteQuery;->extraCallback:Lo/includedInDefaultCompleteQuery;

    invoke-static {}, Lo/includedInDefaultCompleteQuery;->onPostMessage()Lo/doPruneCheckAfterServerUpdate;

    move-result-object v0

    .line 3094
    iget-wide v3, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    invoke-static {v2}, Lo/doPruneCheckAfterServerUpdate;->ICustomTabsCallback(Z)J

    move-result-wide v5

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-ltz v8, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 299
    iput-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 300
    iput v2, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    .line 301
    check-cast p0, Lo/setQueryActive;

    .line 4085
    iget-object p1, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    if-nez p1, :cond_3

    .line 4086
    new-instance p1, Lo/getFirst;

    invoke-direct {p1}, Lo/getFirst;-><init>()V

    iput-object p1, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    .line 4087
    :cond_3
    invoke-virtual {p1, p0}, Lo/getFirst;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 305
    :cond_4
    move-object v1, p0

    check-cast v1, Lo/setQueryActive;

    .line 4104
    iget-wide v3, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    invoke-static {v2}, Lo/doPruneCheckAfterServerUpdate;->ICustomTabsCallback(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    .line 5000
    :try_start_0
    iget-object v3, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v3}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v3

    .line 318
    sget-object v4, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v4, Lo/isZombied$extraCallback;

    invoke-interface {v3, v4}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v3

    check-cast v3, Lo/assertValidTrackedQuery;

    if-eqz v3, :cond_5

    .line 319
    invoke-interface {v3}, Lo/assertValidTrackedQuery;->ICustomTabsCallback()Z

    move-result v4

    if-nez v4, :cond_5

    .line 320
    invoke-interface {v3}, Lo/assertValidTrackedQuery;->asBinder()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v4, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v4, "exception"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    new-instance v4, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v4, v3}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 320
    invoke-static {v4}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    .line 6000
    iget-object v3, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v3}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v3

    .line 326
    iget-object v4, p0, Lo/getMaxNumberOfQueriesToKeep;->onMessageChannelReady:Ljava/lang/Object;

    .line 327
    invoke-static {v3, v4}, Lo/compareInts;->onNavigationEvent(Lo/isZombied;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :try_start_1
    iget-object p0, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {p0, p1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    .line 331
    sget-object p0, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-static {v3, v4}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    throw p0

    .line 6067
    :cond_6
    :goto_3
    iget-object p0, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    if-nez p0, :cond_7

    :goto_4
    const/4 p0, 0x0

    goto :goto_5

    .line 6068
    :cond_7
    invoke-virtual {p0}, Lo/getFirst;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setQueryActive;

    if-nez p0, :cond_8

    goto :goto_4

    .line 6069
    :cond_8
    invoke-virtual {p0}, Lo/setQueryActive;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, 0x1

    :goto_5
    if-nez p0, :cond_6

    .line 346
    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    return-void

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    .line 353
    :try_start_3
    invoke-virtual {v1, p0, p1}, Lo/setQueryActive;->ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 346
    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    throw p0

    .line 250
    :cond_9
    invoke-interface {p0, p1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
