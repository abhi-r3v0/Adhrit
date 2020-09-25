.class public Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;
.super Lorg/apache/commons/collections4/bag/SynchronizedBag;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/SortedBag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/SynchronizedBag<",
        "TE;>;",
        "Lorg/apache/commons/collections4/SortedBag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa06636095a9f842L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections4/Bag;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/SortedBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections4/Bag;)V

    return-void
.end method

.method public static synchronizedSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/bag/SynchronizedSortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/SortedBag;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/SortedBag;

    return-object v0
.end method

.method public declared-synchronized last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/SortedBag;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 96
    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
