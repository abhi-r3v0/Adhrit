.class public Lo/tryParseInt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0012\"\u0004\u0008\u0001\u0010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u00188F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeTaskQueue;",
        "",
        "E",
        "",
        "singleConsumer",
        "<init>",
        "(Z)V",
        "element",
        "addLast",
        "(Ljava/lang/Object;)Z",
        "",
        "close",
        "()V",
        "isClosed",
        "()Z",
        "R",
        "Lkotlin/Function1;",
        "transform",
        "",
        "map",
        "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "isEmpty",
        "",
        "getSize",
        "()I",
        "size",
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
.field private static final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _cur:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/tryParseInt;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/tryParseInt;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lo/doubleToHashString;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/doubleToHashString;-><init>(IZ)V

    iput-object v0, p0, Lo/tryParseInt;->_cur:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 6

    .line 37
    iget-object v0, p0, Lo/tryParseInt;->_cur:Ljava/lang/Object;

    check-cast v0, Lo/doubleToHashString;

    .line 1092
    iget-wide v0, v0, Lo/doubleToHashString;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 312
    :goto_0
    iget-object v0, p0, Lo/tryParseInt;->_cur:Ljava/lang/Object;

    check-cast v0, Lo/doubleToHashString;

    .line 48
    invoke-virtual {v0, p1}, Lo/doubleToHashString;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 51
    :cond_1
    sget-object v1, Lo/tryParseInt;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3214
    invoke-virtual {v0}, Lo/doubleToHashString;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/doubleToHashString;->onNavigationEvent(J)Lo/doubleToHashString;

    move-result-object v2

    .line 51
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 310
    :goto_0
    iget-object v0, p0, Lo/tryParseInt;->_cur:Ljava/lang/Object;

    check-cast v0, Lo/doubleToHashString;

    .line 41
    invoke-virtual {v0}, Lo/doubleToHashString;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v1, Lo/tryParseInt;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2214
    invoke-virtual {v0}, Lo/doubleToHashString;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/doubleToHashString;->onNavigationEvent(J)Lo/doubleToHashString;

    move-result-object v2

    .line 42
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    :goto_0
    iget-object v0, p0, Lo/tryParseInt;->_cur:Ljava/lang/Object;

    check-cast v0, Lo/doubleToHashString;

    .line 59
    invoke-virtual {v0}, Lo/doubleToHashString;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    .line 60
    sget-object v2, Lo/doubleToHashString;->onPostMessage:Lo/AppCompatDrawableManager;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 61
    :cond_0
    sget-object v1, Lo/tryParseInt;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4214
    invoke-virtual {v0}, Lo/doubleToHashString;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/doubleToHashString;->onNavigationEvent(J)Lo/doubleToHashString;

    move-result-object v2

    .line 61
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
