.class public final Lo/calcEventCacheAfterServerOverwrite;
.super Lo/updateLastUse;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/updateLastUse<",
        "Lo/assertValidTrackedQuery;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildContinuation;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "child",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/CancellableContinuationImpl;)V",
        "invoke",
        "",
        "cause",
        "",
        "toString",
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


# instance fields
.field private onMessageChannelReady:Lo/getWrite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getWrite<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/assertValidTrackedQuery;Lo/getWrite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/assertValidTrackedQuery;",
            "Lo/getWrite<",
            "*>;)V"
        }
    .end annotation

    .line 1482
    invoke-direct {p0, p1}, Lo/updateLastUse;-><init>(Lo/assertValidTrackedQuery;)V

    iput-object p2, p0, Lo/calcEventCacheAfterServerOverwrite;->onMessageChannelReady:Lo/getWrite;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1479
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/unRecordEventRegistration;->onPostMessage(Ljava/lang/Throwable;)V

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)V
    .locals 7

    .line 1484
    iget-object p1, p0, Lo/calcEventCacheAfterServerOverwrite;->onMessageChannelReady:Lo/getWrite;

    iget-object v0, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    invoke-static {v0}, Lo/getWrite;->onPostMessage(Lo/assertValidTrackedQuery;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3162
    iget v1, p1, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3163
    :cond_0
    iget-object v1, p1, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    instance-of v4, v1, Lo/getMaxNumberOfQueriesToKeep;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v1, v5

    :cond_1
    check-cast v1, Lo/getMaxNumberOfQueriesToKeep;

    if-nez v1, :cond_2

    goto :goto_0

    .line 4289
    :cond_2
    iget-object v4, v1, Lo/getMaxNumberOfQueriesToKeep;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 4154
    sget-object v6, Lo/shouldCheckCacheSize;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4155
    sget-object v4, Lo/getMaxNumberOfQueriesToKeep;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v6, Lo/shouldCheckCacheSize;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    invoke-virtual {v4, v1, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 4158
    :cond_3
    instance-of v6, v4, Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    goto :goto_1

    .line 4161
    :cond_4
    sget-object v6, Lo/getMaxNumberOfQueriesToKeep;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :goto_1
    if-nez v2, :cond_5

    .line 2184
    invoke-virtual {p1, v0}, Lo/getWrite;->onNavigationEvent(Ljava/lang/Throwable;)Z

    .line 2186
    invoke-virtual {p1}, Lo/getWrite;->onRelationshipValidationResult()V

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChildContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/calcEventCacheAfterServerOverwrite;->onMessageChannelReady:Lo/getWrite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
