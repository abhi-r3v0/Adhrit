.class public final Lo/millis;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "T",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "afterResume",
        "",
        "state",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
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

    .line 209
    invoke-direct {p0, p1, p2}, Lo/castOrNull;-><init>(Lo/isZombied;Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-static {p1, v0}, Lo/extraCallback;->onPostMessage(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-interface {v0}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    invoke-static {v0, v1}, Lo/compareInts;->onNavigationEvent(Lo/isZombied;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    :try_start_0
    iget-object v2, p0, Lo/castOrNull;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    invoke-interface {v2, p1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    .line 215
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-static {v0, v1}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    throw p1
.end method
