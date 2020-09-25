.class public Lo/updateParents;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateParents$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0008\u0017\u0018\u00002\u00020C:\u0005JKLMNB\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J,\u0010\u000b\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\u000e\u0008\u0004\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ4\u0010\u000f\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JD\u0010\u0011\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\r2\u000e\u0008\u0004\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0014\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0000j\u0002`\u0003H\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\"\u0010\u001a\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0082\u0010\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001d\"\u000c\u0008\u0000\u0010\u001c*\u00060\u0000j\u0002`\u00032\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u000c\u0012\u0008\u0012\u00060\u0000j\u0002`\u00030 \u00a2\u0006\u0004\u0008!\u0010\"J \u0010$\u001a\u00060\u0000j\u0002`\u00032\n\u0010#\u001a\u00060\u0000j\u0002`\u0003H\u0082\u0010\u00a2\u0006\u0004\u0008$\u0010%J\u001b\u0010&\u001a\u00020\u00052\n\u0010\u0013\u001a\u00060\u0000j\u0002`\u0003H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0007J\r\u0010\'\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\'\u0010\u0002J\u000f\u0010(\u001a\u00020\u0005H\u0001\u00a2\u0006\u0004\u0008(\u0010\u0002J,\u0010*\u001a\u00020)2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\u000e\u0008\u0004\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0081\u0008\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0003H\u0014\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008.\u0010/J.\u00100\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u001c\u0018\u00012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\rH\u0086\u0008\u00a2\u0006\u0004\u00080\u00101J\u0015\u00102\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0003\u00a2\u0006\u0004\u00082\u0010-J\u0017\u00103\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0003H\u0001\u00a2\u0006\u0004\u00083\u0010-J\u000f\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00085\u00106J\u000f\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00088\u00109J/\u0010<\u001a\u00020;2\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0000j\u0002`\u00032\u0006\u0010:\u001a\u00020)H\u0001\u00a2\u0006\u0004\u0008<\u0010=J\'\u0010A\u001a\u00020\u00052\n\u0010>\u001a\u00060\u0000j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0000j\u0002`\u0003H\u0000\u00a2\u0006\u0004\u0008?\u0010@R\u0016\u0010B\u001a\u00020\t8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010/R\u0013\u0010\u0013\u001a\u00020C8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0017\u0010G\u001a\u00060\u0000j\u0002`\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010-R\u0017\u0010I\u001a\u00060\u0000j\u0002`\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010-\u00a8\u0006O"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/internal/Node;",
        "node",
        "",
        "addLast",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "Lkotlin/Function0;",
        "",
        "condition",
        "addLastIf",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z",
        "Lkotlin/Function1;",
        "predicate",
        "addLastIfPrev",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z",
        "addLastIfPrevAndIf",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z",
        "next",
        "addNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "addOneIfEmpty",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "Lkotlinx/coroutines/internal/OpDescriptor;",
        "op",
        "correctPrev",
        "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "T",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "describeAddLast",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "describeRemoveFirst",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "current",
        "findPrevNonRemoved",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "finishAdd",
        "helpRemove",
        "helpRemovePrev",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "makeCondAddOp",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "nextIfRemoved",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "remove",
        "()Z",
        "removeFirstIfIsInstanceOfOrPeekIf",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "removeFirstOrNull",
        "removeOrNext",
        "Lkotlinx/coroutines/internal/Removed;",
        "removed",
        "()Lkotlinx/coroutines/internal/Removed;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "condAdd",
        "",
        "tryCondAddNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I",
        "prev",
        "validateNode$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "validateNode",
        "isRemoved",
        "",
        "getNext",
        "()Ljava/lang/Object;",
        "getNextNode",
        "nextNode",
        "getPrevNode",
        "prevNode",
        "AbstractAtomicDesc",
        "AddLastDesc",
        "CondAddOp",
        "PrepareOp",
        "RemoveFirstDesc",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _next:Ljava/lang/Object;

.field public volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/updateParents;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/updateParents;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 63
    iput-object p0, p0, Lo/updateParents;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lo/updateParents;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/updateParents;)V
    .locals 3

    .line 668
    :cond_0
    iget-object v0, p1, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/updateParents;

    .line 7660
    :goto_0
    iget-object v1, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 7096
    instance-of v2, v1, Lo/stringHashV2Representation;

    if-nez v2, :cond_3

    if-eq v1, p1, :cond_1

    return-void

    .line 535
    :cond_1
    sget-object v1, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lo/updateParents;->Z_()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    :cond_2
    return-void

    .line 7097
    :cond_3
    check-cast v1, Lo/stringHashV2Representation;

    invoke-virtual {v1, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final synthetic extraCallback(Lo/updateParents;Lo/updateParents;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lo/updateParents;->ICustomTabsCallback(Lo/updateParents;)V

    return-void
.end method

.method public static onNavigationEvent(Lo/updateParents;)Lo/updateParents;
    .locals 1

    .line 113
    :goto_0
    invoke-virtual {p0}, Lo/updateParents;->Z_()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 114
    :cond_0
    iget-object p0, p0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast p0, Lo/updateParents;

    goto :goto_0
.end method

.method private final onPostMessage()Lo/getOrNull;
    .locals 2

    .line 67
    iget-object v0, p0, Lo/updateParents;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lo/getOrNull;

    if-nez v0, :cond_0

    new-instance v0, Lo/getOrNull;

    invoke-direct {v0, p0}, Lo/getOrNull;-><init>(Lo/updateParents;)V

    sget-object v1, Lo/updateParents;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updateParents;Lo/updateParents;Lo/updateParents$ICustomTabsCallback;)I
    .locals 1

    .line 222
    sget-object v0, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    sget-object v0, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    iput-object p2, p3, Lo/updateParents$ICustomTabsCallback;->onMessageChannelReady:Lo/updateParents;

    .line 225
    sget-object p1, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 227
    :cond_0
    invoke-virtual {p3, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public final ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;
    .locals 5

    .line 560
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast p1, Lo/updateParents;

    const/4 v0, 0x0

    move-object v1, p1

    :goto_1
    move-object v2, v0

    .line 564
    :goto_2
    iget-object v3, v1, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 567
    move-object v4, p0

    check-cast v4, Lo/updateParents;

    if-ne v3, v4, :cond_2

    if-ne p1, v1, :cond_1

    return-object v1

    .line 570
    :cond_1
    sget-object v0, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    .line 577
    :cond_2
    invoke-virtual {p0}, Lo/updateParents;->Z_()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    .line 579
    :cond_4
    instance-of v4, v3, Lo/stringHashV2Representation;

    if-eqz v4, :cond_5

    .line 582
    check-cast v3, Lo/stringHashV2Representation;

    invoke-virtual {v3, v1}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_5
    instance-of v4, v3, Lo/getOrNull;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    .line 588
    sget-object v4, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lo/getOrNull;

    iget-object v3, v3, Lo/getOrNull;->ICustomTabsCallback:Lo/updateParents;

    invoke-virtual {v4, v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 594
    :cond_6
    iget-object v3, v1, Lo/updateParents;->_prev:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    move-object v2, v1

    .line 599
    :goto_3
    move-object v1, v3

    check-cast v1, Lo/updateParents;

    goto :goto_2

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()Lo/updateParents;
    .locals 2

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/updateParents;

    .line 3113
    :goto_0
    invoke-virtual {v0}, Lo/updateParents;->Z_()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3114
    :cond_0
    iget-object v0, v0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/updateParents;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public X_()Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lo/updateParents;->asBinder()Lo/updateParents;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Z_()Z
    .locals 2

    .line 1660
    :goto_0
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 1096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_0

    .line 91
    instance-of v0, v0, Lo/getOrNull;

    return v0

    .line 1097
    :cond_0
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final asBinder()Lo/updateParents;
    .locals 4

    .line 5660
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 5096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_4

    .line 248
    instance-of v1, v0, Lo/getOrNull;

    if-eqz v1, :cond_1

    check-cast v0, Lo/getOrNull;

    iget-object v0, v0, Lo/getOrNull;->ICustomTabsCallback:Lo/updateParents;

    return-object v0

    .line 249
    :cond_1
    move-object v1, p0

    check-cast v1, Lo/updateParents;

    if-ne v0, v1, :cond_2

    check-cast v0, Lo/updateParents;

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 250
    move-object v1, v0

    check-cast v1, Lo/updateParents;

    invoke-direct {v1}, Lo/updateParents;->onPostMessage()Lo/getOrNull;

    move-result-object v2

    .line 251
    sget-object v3, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 253
    invoke-virtual {v1, v0}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    return-object v0

    .line 250
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5097
    :cond_4
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final asInterface()V
    .locals 3

    .line 270
    move-object v0, p0

    check-cast v0, Lo/updateParents;

    .line 6660
    :goto_0
    iget-object v1, v0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 6096
    instance-of v2, v1, Lo/stringHashV2Representation;

    if-nez v2, :cond_1

    .line 273
    instance-of v2, v1, Lo/getOrNull;

    if-eqz v2, :cond_0

    .line 274
    check-cast v1, Lo/getOrNull;

    iget-object v0, v1, Lo/getOrNull;->ICustomTabsCallback:Lo/updateParents;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    return-void

    .line 6097
    :cond_1
    check-cast v1, Lo/stringHashV2Representation;

    invoke-virtual {v1, v0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final extraCallback(Lo/updateParents;)Z
    .locals 2

    .line 120
    sget-object v0, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4660
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 4096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_2

    .line 124
    move-object v1, p0

    check-cast v1, Lo/updateParents;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_1
    sget-object v0, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p1, p0}, Lo/updateParents;->ICustomTabsCallback(Lo/updateParents;)V

    const/4 p1, 0x1

    return p1

    .line 4097
    :cond_2
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onPostMessage(Lo/updateParents;Lo/updateParents;)Z
    .locals 1

    .line 211
    sget-object v0, Lo/updateParents;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    sget-object v0, Lo/updateParents;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 215
    :cond_0
    invoke-direct {p1, p2}, Lo/updateParents;->ICustomTabsCallback(Lo/updateParents;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onRelationshipValidationResult()Ljava/lang/Object;
    .locals 2

    .line 660
    :goto_0
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 96
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_0

    return-object v0

    .line 97
    :cond_0
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onTransact()Lo/updateParents;
    .locals 2

    .line 2660
    :goto_0
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 2096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_0

    .line 102
    invoke-static {v0}, Lo/forEachAncestor;->extraCallback(Ljava/lang/Object;)Lo/updateParents;

    move-result-object v0

    return-object v0

    .line 2097
    :cond_0
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
