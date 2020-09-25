.class public abstract Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lo/setQueryInactive;
.implements Lo/validateRootPathString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldPruneUnkeptDescendants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;",
        ">;",
        "Lo/setQueryInactive;",
        "Lo/validateRootPathString;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u0007J\u0008\u0010$\u001a\u00020%H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "nanoTime",
        "",
        "(J)V",
        "_heap",
        "",
        "value",
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "heap",
        "getHeap",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "setHeap",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "compareTo",
        "other",
        "dispose",
        "",
        "scheduleTask",
        "now",
        "delayed",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "timeToExecute",
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
.field private extraCallback:Ljava/lang/Object;

.field public onMessageChannelReady:J

.field private onNavigationEvent:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    const/4 p1, -0x1

    .line 417
    iput p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(JLo/shouldPruneUnkeptDescendants$onNavigationEvent;Lo/shouldPruneUnkeptDescendants;)I
    .locals 11

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    invoke-static {}, Lo/shouldKeep;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 433
    :cond_0
    :try_start_1
    move-object v0, p3

    check-cast v0, Lo/isWritableKey;

    move-object v1, p0

    check-cast v1, Lo/validateRootPathString;

    .line 531
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2085
    :try_start_2
    iget-object v2, v0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    aget-object v2, v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 532
    :goto_0
    check-cast v2, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    .line 434
    invoke-static {p4}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(Lo/shouldPruneUnkeptDescendants;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    if-eqz p4, :cond_2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v4

    :cond_2
    const-wide/16 v5, 0x0

    if-nez v2, :cond_3

    .line 447
    :try_start_4
    iput-wide p1, p3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;->extraCallback:J

    goto :goto_2

    .line 454
    :cond_3
    iget-wide v7, v2, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    sub-long v9, v7, p1

    cmp-long p4, v9, v5

    if-ltz p4, :cond_4

    goto :goto_1

    :cond_4
    move-wide p1, v7

    .line 458
    :goto_1
    iget-wide v7, p3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;->extraCallback:J

    sub-long v7, p1, v7

    cmp-long p4, v7, v5

    if-lez p4, :cond_5

    iput-wide p1, p3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;->extraCallback:J

    .line 467
    :cond_5
    :goto_2
    iget-wide p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    iget-wide v7, p3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;->extraCallback:J

    sub-long/2addr p1, v7

    cmp-long p4, p1, v5

    if-gez p4, :cond_6

    iget-wide p1, p3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;->extraCallback:J

    iput-wide p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    .line 2112
    :cond_6
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Lo/validateRootPathString;->extraCallback()Lo/isWritableKey;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 2113
    :cond_9
    :goto_4
    move-object p1, v0

    check-cast p1, Lo/isWritableKey;

    invoke-interface {v1, p1}, Lo/validateRootPathString;->onPostMessage(Lo/isWritableKey;)V

    .line 2142
    iget-object p1, v0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-nez p1, :cond_a

    const/4 p1, 0x4

    new-array p1, p1, [Lo/validateRootPathString;

    .line 2144
    iput-object p1, v0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    goto :goto_5

    .line 3030
    :cond_a
    iget p2, v0, Lo/isWritableKey;->_size:I

    .line 2145
    array-length p3, p1

    if-lt p2, p3, :cond_b

    .line 4030
    iget p2, v0, Lo/isWritableKey;->_size:I

    shl-int/2addr p2, v4

    .line 2145
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, [Lo/validateRootPathString;

    iput-object p2, v0, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    check-cast p1, [Lo/validateRootPathString;

    .line 5030
    :cond_b
    :goto_5
    iget p2, v0, Lo/isWritableKey;->_size:I

    add-int/lit8 p3, p2, 0x1

    .line 5031
    iput p3, v0, Lo/isWritableKey;->_size:I

    .line 2116
    aput-object v1, p1, p2

    .line 2117
    invoke-interface {v1, p2}, Lo/validateRootPathString;->onMessageChannelReady(I)V

    .line 2118
    invoke-virtual {v0, p2}, Lo/isWritableKey;->onMessageChannelReady(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 470
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 537
    :try_start_6
    monitor-exit v0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 401
    check-cast p1, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    .line 1420
    iget-wide v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    iget-wide v2, p1, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Lo/isWritableKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isWritableKey<",
            "*>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    instance-of v1, v0, Lo/isWritableKey;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/isWritableKey;

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 417
    iget v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    .line 417
    iput p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method public final declared-synchronized onNavigationEvent()V
    .locals 2

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 476
    invoke-static {}, Lo/shouldKeep;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 478
    :cond_0
    :try_start_1
    instance-of v1, v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lo/validateRootPathString;

    invoke-virtual {v0, v1}, Lo/isWritableKey;->onMessageChannelReady(Lo/validateRootPathString;)Z

    .line 479
    :cond_2
    invoke-static {}, Lo/shouldKeep;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage(Lo/isWritableKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isWritableKey<",
            "*>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    invoke-static {}, Lo/shouldKeep;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 414
    iput-object p1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    return-void

    .line 413
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delayed[nanos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
