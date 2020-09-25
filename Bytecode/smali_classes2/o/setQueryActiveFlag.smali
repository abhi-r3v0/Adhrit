.class public abstract Lo/setQueryActiveFlag;
.super Lo/unRecordEventRegistration;
.source ""

# interfaces
.implements Lo/setQueryInactive;
.implements Lo/pruneAll;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lo/assertValidTrackedQuery;",
        ">",
        "Lo/unRecordEventRegistration;",
        "Lo/setQueryInactive;",
        "Lo/pruneAll;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008 \u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0012\u0010\u0006\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/JobNode;",
        "J",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Incomplete;",
        "job",
        "(Lkotlinx/coroutines/Job;)V",
        "isActive",
        "",
        "()Z",
        "Lkotlinx/coroutines/Job;",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "dispose",
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
.field public final extraCallback:Lo/assertValidTrackedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/assertValidTrackedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1349
    invoke-direct {p0}, Lo/unRecordEventRegistration;-><init>()V

    iput-object p1, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/pruneOldQueries;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 1352
    iget-object v0, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    if-eqz v0, :cond_5

    check-cast v0, Lo/setQueryCompleteIfExists;

    .line 4492
    :cond_0
    :goto_0
    iget-object v1, v0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 3167
    instance-of v2, v1, Lo/stringHashV2Representation;

    if-nez v2, :cond_4

    .line 1589
    instance-of v2, v1, Lo/setQueryActiveFlag;

    if-eqz v2, :cond_2

    if-ne v1, p0, :cond_1

    .line 1592
    sget-object v2, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/findTrackedQuery;->extraCallback()Lo/prunesAnything;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void

    .line 1594
    :cond_2
    instance-of v0, v1, Lo/pruneAll;

    if-eqz v0, :cond_3

    .line 1596
    check-cast v1, Lo/pruneAll;

    invoke-interface {v1}, Lo/pruneAll;->ICustomTabsCallback()Lo/pruneOldQueries;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lo/updateParents;->X_()Z

    :cond_3
    return-void

    .line 3168
    :cond_4
    check-cast v1, Lo/stringHashV2Representation;

    invoke-virtual {v1, v0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1352
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
