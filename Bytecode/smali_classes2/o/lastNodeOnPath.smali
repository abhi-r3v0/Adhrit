.class public abstract Lo/lastNodeOnPath;
.super Lo/stringHashV2Representation;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/stringHashV2Representation;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00008V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0013\u001a\u00020\u00128F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "T",
        "<init>",
        "()V",
        "affected",
        "",
        "failure",
        "",
        "complete",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "decision",
        "decide",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "perform",
        "prepare",
        "getAtomicOp",
        "()Lkotlinx/coroutines/internal/AtomicOp;",
        "atomicOp",
        "",
        "isDecided",
        "()Z",
        "",
        "getOpSequence",
        "()J",
        "opSequence",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/internal/OpDescriptor;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/lastNodeOnPath;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/lastNodeOnPath;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lo/stringHashV2Representation;-><init>()V

    .line 56
    invoke-static {}, Lo/getSecond;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/lastNodeOnPath;->_consensus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 89
    iget-object v0, p0, Lo/lastNodeOnPath;->_consensus:Ljava/lang/Object;

    .line 90
    invoke-static {}, Lo/getSecond;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 91
    invoke-virtual {p0}, Lo/lastNodeOnPath;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    .line 1074
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lo/getSecond;->onNavigationEvent()Ljava/lang/Object;

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
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1075
    :cond_2
    :goto_1
    iget-object v1, p0, Lo/lastNodeOnPath;->_consensus:Ljava/lang/Object;

    .line 1076
    invoke-static {}, Lo/getSecond;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 1077
    :cond_3
    sget-object v1, Lo/lastNodeOnPath;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/getSecond;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 1078
    :cond_4
    iget-object v0, p0, Lo/lastNodeOnPath;->_consensus:Ljava/lang/Object;

    .line 94
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v0}, Lo/lastNodeOnPath;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract onPostMessage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
