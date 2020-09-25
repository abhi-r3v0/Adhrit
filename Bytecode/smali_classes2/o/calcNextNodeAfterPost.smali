.class public final Lo/calcNextNodeAfterPost;
.super Lo/updateLastUse;
.source ""

# interfaces
.implements Lo/shadowingWrite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/updateLastUse<",
        "Lo/setQueryCompleteIfExists;",
        ">;",
        "Lo/shadowingWrite;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildHandleNode;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/ChildHandle;",
        "parent",
        "childJob",
        "Lkotlinx/coroutines/ChildJob;",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/ChildJob;)V",
        "childCancelled",
        "",
        "cause",
        "",
        "invoke",
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
.field public final onNavigationEvent:Lo/calcCompleteChild;


# direct methods
.method public constructor <init>(Lo/setQueryCompleteIfExists;Lo/calcCompleteChild;)V
    .locals 0

    .line 1472
    check-cast p1, Lo/assertValidTrackedQuery;

    invoke-direct {p0, p1}, Lo/updateLastUse;-><init>(Lo/assertValidTrackedQuery;)V

    iput-object p2, p0, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2473
    iget-object p1, p0, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    iget-object v0, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    check-cast v0, Lo/isQueryComplete;

    invoke-interface {p1, v0}, Lo/calcCompleteChild;->extraCallback(Lo/isQueryComplete;)V

    .line 1469
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1474
    iget-object v0, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    check-cast v0, Lo/setQueryCompleteIfExists;

    invoke-virtual {v0, p1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)V
    .locals 1

    .line 1473
    iget-object p1, p0, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    iget-object v0, p0, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    check-cast v0, Lo/isQueryComplete;

    invoke-interface {p1, v0}, Lo/calcCompleteChild;->extraCallback(Lo/isQueryComplete;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChildHandle["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
