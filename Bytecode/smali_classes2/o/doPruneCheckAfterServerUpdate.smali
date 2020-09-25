.class public abstract Lo/doPruneCheckAfterServerUpdate;
.super Lo/zombifyForRemove;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0012\u0010\u0016\u001a\u00020\u00132\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0010J\u0010\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u0008\u0010\u0019\u001a\u00020\nH\u0016J\u0006\u0010\u001a\u001a\u00020\u0004J\u0008\u0010\u001b\u001a\u00020\u0004H\u0016J\u0008\u0010\u001c\u001a\u00020\u0013H\u0014R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0005R\u0014\u0010\t\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoop;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "isActive",
        "",
        "()Z",
        "isEmpty",
        "isUnconfinedLoopActive",
        "isUnconfinedQueueEmpty",
        "nextTime",
        "",
        "getNextTime",
        "()J",
        "shared",
        "unconfinedQueue",
        "Lkotlinx/coroutines/internal/ArrayQueue;",
        "Lkotlinx/coroutines/DispatchedTask;",
        "useCount",
        "decrementUseCount",
        "",
        "unconfined",
        "delta",
        "dispatchUnconfined",
        "task",
        "incrementUseCount",
        "processNextEvent",
        "processUnconfinedEvent",
        "shouldBeProcessedFromContext",
        "shutdown",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public asBinder:Lo/getFirst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getFirst<",
            "Lo/setQueryActive<",
            "*>;>;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Z

.field public onPostMessage:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/zombifyForRemove;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Z)J
    .locals 2

    const-wide v0, 0x100000000L

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4012
    iget v2, v0, Lo/getFirst;->extraCallback:I

    iget v0, v0, Lo/getFirst;->onPostMessage:I

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final asBinder()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Lo/getFirst;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setQueryActive;

    if-nez v0, :cond_1

    return v1

    .line 69
    :cond_1
    invoke-virtual {v0}, Lo/setQueryActive;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public extraCallback()J
    .locals 2

    .line 1067
    iget-object v0, p0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    invoke-virtual {v0}, Lo/getFirst;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setQueryActive;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1069
    :cond_1
    invoke-virtual {v0}, Lo/setQueryActive;->run()V

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onNavigationEvent()Z
    .locals 3

    .line 1098
    iget-object v0, p0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2012
    iget v2, v0, Lo/getFirst;->extraCallback:I

    iget v0, v0, Lo/getFirst;->onPostMessage:I

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method protected onPostMessage()J
    .locals 4

    .line 62
    iget-object v0, p0, Lo/doPruneCheckAfterServerUpdate;->asBinder:Lo/getFirst;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    .line 3012
    :cond_0
    iget v3, v0, Lo/getFirst;->extraCallback:I

    iget v0, v0, Lo/getFirst;->onPostMessage:I

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 5

    .line 109
    iget-wide v0, p0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 112
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lo/doPruneCheckAfterServerUpdate;->onNavigationEvent:Z

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p0}, Lo/doPruneCheckAfterServerUpdate;->onTransact()V

    :cond_4
    return-void
.end method

.method protected onTransact()V
    .locals 0

    return-void
.end method
