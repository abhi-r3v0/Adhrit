.class public final Lo/runInTransaction;
.super Lo/castOrNull;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/castOrNull<",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0015B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedCoroutine;",
        "T",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/coroutines/Continuation;",
        "uCont",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "",
        "state",
        "",
        "afterCompletion",
        "(Ljava/lang/Object;)V",
        "afterResume",
        "getResult",
        "()Ljava/lang/Object;",
        "",
        "tryResume",
        "()Z",
        "trySuspend",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo/runInTransaction;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/runInTransaction;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/isZombied;Lo/setSessionPersistenceKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied;",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Lo/castOrNull;-><init>(Lo/isZombied;Lo/setSessionPersistenceKey;)V

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lo/runInTransaction;->_decision:I

    return-void
.end method

.method private final updateVisuals()Z
    .locals 4

    .line 277
    :cond_0
    iget v0, p0, Lo/runInTransaction;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 245
    :cond_2
    sget-object v0, Lo/runInTransaction;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1259
    invoke-direct {p0}, Lo/runInTransaction;->updateVisuals()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    iget-object v0, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-static {v0}, Lo/onZombied;->onNavigationEvent(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object v0

    iget-object v1, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-static {p1, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/shouldCheckCacheSize;->onNavigationEvent(Lo/setSessionPersistenceKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Lo/runInTransaction;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-static {v0}, Lo/onZombied;->onNavigationEvent(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object v0

    iget-object v1, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-static {p1, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/shouldCheckCacheSize;->onNavigationEvent(Lo/setSessionPersistenceKey;Ljava/lang/Object;)V

    return-void
.end method
