.class public abstract Lo/updateParents$ICustomTabsCallback;
.super Lo/lastNodeOnPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateParents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lastNodeOnPath<",
        "Lo/updateParents;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008!\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0011\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "newNode",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "oldNext",
        "complete",
        "",
        "affected",
        "failure",
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
.field public onMessageChannelReady:Lo/updateParents;

.field private onPostMessage:Lo/updateParents;


# direct methods
.method public constructor <init>(Lo/updateParents;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/lastNodeOnPath;-><init>()V

    iput-object p1, p0, Lo/updateParents$ICustomTabsCallback;->onPostMessage:Lo/updateParents;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 70
    check-cast p1, Lo/updateParents;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1077
    iget-object v0, p0, Lo/updateParents$ICustomTabsCallback;->onPostMessage:Lo/updateParents;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/updateParents$ICustomTabsCallback;->onMessageChannelReady:Lo/updateParents;

    :goto_1
    if-eqz v0, :cond_3

    .line 1078
    sget-object v1, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1080
    iget-object p1, p0, Lo/updateParents$ICustomTabsCallback;->onPostMessage:Lo/updateParents;

    iget-object p2, p0, Lo/updateParents$ICustomTabsCallback;->onMessageChannelReady:Lo/updateParents;

    if-nez p2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {p1, p2}, Lo/updateParents;->extraCallback(Lo/updateParents;Lo/updateParents;)V

    :cond_3
    return-void
.end method
