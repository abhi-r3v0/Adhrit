.class public Lo/isWritableKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/validateRootPathString;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0008\u0017\u0018\u0000*\u0012\u0008\u0000\u0010\u0003*\u00020\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000602j\u0002`3B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\n\u0010\tJ.\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00028\u00002\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0011\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ&\u0010\u001e\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008 \u0010\u0012J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010\u00a2\u0006\u0004\u0008\"\u0010#J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010\u00a2\u0006\u0004\u0008$\u0010#J\u001f\u0010&\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008&\u0010\'R \u0010(\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0013\u0010*\u001a\u00020\u000c8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R$\u00100\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00198F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u0010#\u00a8\u00061"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "",
        "T",
        "<init>",
        "()V",
        "node",
        "",
        "addImpl",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V",
        "addLast",
        "Lkotlin/Function1;",
        "",
        "cond",
        "addLastIf",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z",
        "clear",
        "firstImpl",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "peek",
        "",
        "realloc",
        "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "remove",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z",
        "",
        "index",
        "removeAtImpl",
        "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "predicate",
        "removeFirstIf",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "removeFirstOrNull",
        "i",
        "siftDownFrom",
        "(I)V",
        "siftUpFrom",
        "j",
        "swap",
        "(II)V",
        "a",
        "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "isEmpty",
        "()Z",
        "value",
        "getSize",
        "()I",
        "setSize",
        "size",
        "kotlinx-coroutines-core",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public volatile _size:I

.field public onNavigationEvent:[Lo/validateRootPathString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/isWritableKey;->_size:I

    return-void
.end method

.method private final extraCallback(I)V
    .locals 5

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 9030
    iget v1, p0, Lo/isWritableKey;->_size:I

    if-lt v0, v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 10030
    iget v3, p0, Lo/isWritableKey;->_size:I

    if-ge v2, v3, :cond_4

    .line 134
    aget-object v3, v1, v2

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    if-nez v4, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    move v0, v2

    .line 135
    :cond_4
    aget-object v2, v1, p1

    if-nez v2, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7

    return-void

    .line 136
    :cond_7
    invoke-direct {p0, p1, v0}, Lo/isWritableKey;->onMessageChannelReady(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final onMessageChannelReady(II)V
    .locals 3

    .line 151
    iget-object v0, p0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 152
    :cond_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 153
    :cond_1
    aget-object v2, v0, p1

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 154
    :cond_2
    aput-object v1, v0, p1

    .line 155
    aput-object v2, v0, p2

    .line 156
    invoke-interface {v1, p1}, Lo/validateRootPathString;->onMessageChannelReady(I)V

    .line 157
    invoke-interface {v2, p2}, Lo/validateRootPathString;->onMessageChannelReady(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/validateRootPathString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 163
    monitor-enter p0

    .line 2030
    :try_start_0
    iget v0, p0, Lo/isWritableKey;->_size:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lo/isWritableKey;->onPostMessage(I)Lo/validateRootPathString;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady()Lo/validateRootPathString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 162
    monitor-enter p0

    .line 1085
    :try_start_0
    iget-object v0, p0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 124
    div-int/lit8 v1, v1, 0x2

    .line 125
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    .line 126
    :cond_4
    invoke-direct {p0, p1, v1}, Lo/isWritableKey;->onMessageChannelReady(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final onMessageChannelReady(Lo/validateRootPathString;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-interface {p1}, Lo/validateRootPathString;->extraCallback()Lo/isWritableKey;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 77
    :cond_0
    invoke-interface {p1}, Lo/validateRootPathString;->onMessageChannelReady()I

    move-result p1

    .line 78
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 79
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lo/isWritableKey;->onPostMessage(I)Lo/validateRootPathString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage(I)Lo/validateRootPathString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3030
    iget v0, p0, Lo/isWritableKey;->_size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 90
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4030
    :cond_3
    iget v3, p0, Lo/isWritableKey;->_size:I

    const/4 v4, -0x1

    add-int/2addr v3, v4

    .line 4031
    iput v3, p0, Lo/isWritableKey;->_size:I

    .line 5030
    iget v3, p0, Lo/isWritableKey;->_size:I

    if-ge p1, v3, :cond_7

    .line 6030
    iget v3, p0, Lo/isWritableKey;->_size:I

    .line 93
    invoke-direct {p0, p1, v3}, Lo/isWritableKey;->onMessageChannelReady(II)V

    add-int/lit8 v3, p1, -0x1

    .line 94
    div-int/lit8 v3, v3, 0x2

    if-lez p1, :cond_6

    .line 95
    aget-object v5, v0, p1

    if-nez v5, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v0, v3

    if-nez v6, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_6

    .line 96
    invoke-direct {p0, p1, v3}, Lo/isWritableKey;->onMessageChannelReady(II)V

    .line 97
    invoke-virtual {p0, v3}, Lo/isWritableKey;->onMessageChannelReady(I)V

    goto :goto_2

    .line 99
    :cond_6
    invoke-direct {p0, p1}, Lo/isWritableKey;->extraCallback(I)V

    .line 7030
    :cond_7
    :goto_2
    iget p1, p0, Lo/isWritableKey;->_size:I

    .line 102
    aget-object p1, v0, p1

    if-nez p1, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 103
    :cond_8
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Lo/validateRootPathString;->extraCallback()Lo/isWritableKey;

    move-result-object v3

    move-object v5, p0

    check-cast v5, Lo/isWritableKey;

    if-ne v3, v5, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_b
    :goto_3
    const/4 v1, 0x0

    .line 104
    invoke-interface {p1, v1}, Lo/validateRootPathString;->onPostMessage(Lo/isWritableKey;)V

    .line 105
    invoke-interface {p1, v4}, Lo/validateRootPathString;->onMessageChannelReady(I)V

    .line 8030
    iget v2, p0, Lo/isWritableKey;->_size:I

    .line 106
    aput-object v1, v0, v2

    return-object p1
.end method
