.class final Lo/shouldPruneUnkeptDescendants$extraCallback;
.super Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldPruneUnkeptDescendants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "nanoTime",
        "",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V",
        "run",
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
.field private synthetic extraCallback:Lo/shouldPruneUnkeptDescendants;

.field private final onPostMessage:Lo/addMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addMerge<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/shouldPruneUnkeptDescendants;JLo/addMerge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lo/addMerge<",
            "-",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lo/shouldPruneUnkeptDescendants$extraCallback;->extraCallback:Lo/shouldPruneUnkeptDescendants;

    .line 488
    invoke-direct {p0, p2, p3}, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;-><init>(J)V

    iput-object p4, p0, Lo/shouldPruneUnkeptDescendants$extraCallback;->onPostMessage:Lo/addMerge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 489
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants$extraCallback;->onPostMessage:Lo/addMerge;

    iget-object v1, p0, Lo/shouldPruneUnkeptDescendants$extraCallback;->extraCallback:Lo/shouldPruneUnkeptDescendants;

    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-interface {v0, v1, v2}, Lo/addMerge;->onNavigationEvent(Lo/zombifyForRemove;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/shouldPruneUnkeptDescendants$extraCallback;->onPostMessage:Lo/addMerge;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
