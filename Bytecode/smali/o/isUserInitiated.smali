.class public abstract Lo/isUserInitiated;
.super Lo/getRelative;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008!\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/coroutines/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V",
        "context",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "intercepted",
        "releaseIntercepted",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private transient extraCallback:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/isZombied;


# direct methods
.method public constructor <init>(Lo/setSessionPersistenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lo/isUserInitiated;-><init>(Lo/setSessionPersistenceKey;Lo/isZombied;)V

    return-void
.end method

.method public constructor <init>(Lo/setSessionPersistenceKey;Lo/isZombied;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/isZombied;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lo/getRelative;-><init>(Lo/setSessionPersistenceKey;)V

    iput-object p2, p0, Lo/isUserInitiated;->onPostMessage:Lo/isZombied;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/isZombied;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/isUserInitiated;->onPostMessage:Lo/isZombied;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    return-object v0
.end method

.method protected final onPostMessage()V
    .locals 3

    .line 116
    iget-object v0, p0, Lo/isUserInitiated;->extraCallback:Lo/setSessionPersistenceKey;

    if-eqz v0, :cond_2

    .line 117
    move-object v1, p0

    check-cast v1, Lo/isUserInitiated;

    if-eq v0, v1, :cond_2

    .line 2105
    iget-object v1, p0, Lo/isUserInitiated;->onPostMessage:Lo/isZombied;

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 118
    :cond_0
    sget-object v2, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v2, Lo/isZombied$extraCallback;

    invoke-interface {v1, v2}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v1, Lo/zombify;

    invoke-interface {v1, v0}, Lo/zombify;->onPostMessage(Lo/setSessionPersistenceKey;)V

    .line 120
    :cond_2
    sget-object v0, Lo/setIsUserInitiated;->onPostMessage:Lo/setIsUserInitiated;

    check-cast v0, Lo/setSessionPersistenceKey;

    iput-object v0, p0, Lo/isUserInitiated;->extraCallback:Lo/setSessionPersistenceKey;

    return-void
.end method

.method public final onTransact()Lo/setSessionPersistenceKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/isUserInitiated;->extraCallback:Lo/setSessionPersistenceKey;

    if-nez v0, :cond_2

    .line 1105
    iget-object v0, p0, Lo/isUserInitiated;->onPostMessage:Lo/isZombied;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 112
    :cond_0
    sget-object v1, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v1, Lo/isZombied$extraCallback;

    invoke-interface {v0, v1}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/zombify;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lo/setSessionPersistenceKey;

    invoke-interface {v0, v1}, Lo/zombify;->onMessageChannelReady(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lo/setSessionPersistenceKey;

    .line 113
    :goto_0
    iput-object v0, p0, Lo/isUserInitiated;->extraCallback:Lo/setSessionPersistenceKey;

    :cond_2
    return-object v0
.end method
