.class public final Lo/getMaxNumberOfQueriesToKeep;
.super Lo/setQueryActive;
.source ""

# interfaces
.implements Lo/wireFormat;
.implements Lo/setSessionPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setQueryActive<",
        "TT;>;",
        "Lo/wireFormat;",
        "Lo/setSessionPersistenceKey<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000E2\u000604j\u0002`52\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u001b2\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010 J!\u0010#\u001a\u00020\u00122\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010%\u001a\u00020\u001bH\u0086\u0008\u00a2\u0006\u0004\u0008%\u0010&J!\u0010\'\u001a\u00020\u00122\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010$J \u0010(\u001a\u00020\u00122\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010$J\u0011\u0010,\u001a\u0004\u0018\u00010)H\u0010\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008.\u0010/R\u001e\u00100\u001a\u0004\u0018\u00010)8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000c\n\u0004\u00080\u00101\u0012\u0004\u00082\u00103R$\u00106\u001a\n\u0018\u000104j\u0004\u0018\u0001`58\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u0016\u0010\u0010\u001a\u00020\u000f8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010<R\u0016\u0010=\u001a\u00020)8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u00101R\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048P@\u0010X\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010AR\u0019\u0010C\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006D"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "dispatcher",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "checkPostponedCancellation",
        "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "claimReusableCancellableContinuation",
        "()Lkotlinx/coroutines/CancellableContinuationImpl;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "value",
        "",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "dispatchYield",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "requester",
        "",
        "isReusable",
        "(Lkotlinx/coroutines/CancellableContinuationImpl;)Z",
        "cause",
        "postponeCancellation",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Result;",
        "result",
        "resumeCancellableWith",
        "(Ljava/lang/Object;)V",
        "resumeCancelled",
        "()Z",
        "resumeUndispatchedWith",
        "resumeWith",
        "",
        "takeState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "takeState",
        "",
        "toString",
        "()Ljava/lang/String;",
        "_state",
        "Ljava/lang/Object;",
        "_state$annotations",
        "()V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "callerFrame",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/Continuation;",
        "countOrElement",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "delegate",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getReusableCancellableContinuation",
        "reusableCancellableContinuation",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/DispatchedTask;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Object;

.field public volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final extraCallback:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/lang/Object;

.field public final onNavigationEvent:Lo/zombifyForRemove;

.field private final onRelationshipValidationResult:Lo/wireFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/getMaxNumberOfQueriesToKeep;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/getMaxNumberOfQueriesToKeep;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/zombifyForRemove;Lo/setSessionPersistenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zombifyForRemove;",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lo/setQueryActive;-><init>(I)V

    iput-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    iput-object p2, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    .line 25
    invoke-static {}, Lo/shouldCheckCacheSize;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object p1

    iput-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    instance-of p2, p1, Lo/wireFormat;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/wireFormat;

    iput-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->onRelationshipValidationResult:Lo/wireFormat;

    .line 4000
    iget-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {p1}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->onMessageChannelReady:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/addMerge;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addMerge<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 287
    :cond_0
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 134
    sget-object v1, Lo/shouldCheckCacheSize;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Lo/getMaxNumberOfQueriesToKeep;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lo/shouldCheckCacheSize;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 138
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 139
    sget-object p1, Lo/getMaxNumberOfQueriesToKeep;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 142
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Inconsistent state "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final asBinder()Lo/setSessionPersistenceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation

    .line 176
    move-object v0, p0

    check-cast v0, Lo/setSessionPersistenceKey;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/wireFormat;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->onRelationshipValidationResult:Lo/wireFormat;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isZombied;
    .locals 1

    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v0}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 9

    .line 179
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v0}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    .line 1012
    invoke-static {p1}, Lo/emptyWrite;->extraCallback(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Lo/evaluate;

    invoke-direct {v2, v1}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    .line 181
    :goto_0
    iget-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    invoke-virtual {v1}, Lo/zombifyForRemove;->ICustomTabsCallback()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 182
    iput-object v2, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 183
    iput v3, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    .line 184
    iget-object p1, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo/zombifyForRemove;->onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V

    return-void

    .line 293
    :cond_1
    sget-object v0, Lo/includedInDefaultCompleteQuery;->extraCallback:Lo/includedInDefaultCompleteQuery;

    invoke-static {}, Lo/includedInDefaultCompleteQuery;->onPostMessage()Lo/doPruneCheckAfterServerUpdate;

    move-result-object v0

    .line 1094
    iget-wide v4, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    const/4 v1, 0x1

    invoke-static {v1}, Lo/doPruneCheckAfterServerUpdate;->ICustomTabsCallback(Z)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 298
    iput-object v2, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 299
    iput v3, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    .line 300
    move-object p1, p0

    check-cast p1, Lo/setQueryActive;

    .line 2085
    iget-object v1, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    if-nez v1, :cond_3

    .line 2086
    new-instance v1, Lo/getFirst;

    invoke-direct {v1}, Lo/getFirst;-><init>()V

    iput-object v1, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    .line 2087
    :cond_3
    invoke-virtual {v1, p1}, Lo/getFirst;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 304
    :cond_4
    move-object v2, p0

    check-cast v2, Lo/setQueryActive;

    .line 2104
    iget-wide v4, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    invoke-static {v1}, Lo/doPruneCheckAfterServerUpdate;->ICustomTabsCallback(Z)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    .line 3000
    :try_start_0
    iget-object v4, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v4}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v4

    .line 187
    iget-object v5, p0, Lo/getMaxNumberOfQueriesToKeep;->onMessageChannelReady:Ljava/lang/Object;

    .line 308
    invoke-static {v4, v5}, Lo/compareInts;->onNavigationEvent(Lo/isZombied;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v6, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-interface {v6, p1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    .line 189
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :try_start_2
    invoke-static {v4, v5}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    .line 3067
    :cond_5
    iget-object p1, v0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    if-nez p1, :cond_6

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    .line 3068
    :cond_6
    invoke-virtual {p1}, Lo/getFirst;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setQueryActive;

    if-nez p1, :cond_7

    goto :goto_2

    .line 3069
    :cond_7
    invoke-virtual {p1}, Lo/setQueryActive;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_5

    .line 324
    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    return-void

    :catchall_0
    move-exception p1

    .line 312
    :try_start_3
    invoke-static {v4, v5}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    .line 331
    :try_start_4
    invoke-virtual {v2, p1, v1}, Lo/setQueryActive;->ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 324
    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lo/doPruneCheckAfterServerUpdate;->onRelationshipValidationResult()V

    throw p1
.end method

.method public final onTransact()Ljava/lang/Object;
    .locals 2

    .line 169
    iget-object v0, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    .line 170
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lo/shouldCheckCacheSize;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 171
    :cond_2
    :goto_1
    invoke-static {}, Lo/shouldCheckCacheSize;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v1

    iput-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    invoke-static {v1}, Lo/extraCallback;->ICustomTabsCallback(Lo/setSessionPersistenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
