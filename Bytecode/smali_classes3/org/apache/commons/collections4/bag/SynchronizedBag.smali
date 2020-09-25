.class public Lorg/apache/commons/collections4/bag/SynchronizedBag;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x703288b00a6a8835L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

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
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static synchronizedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/bag/SynchronizedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/bag/SynchronizedBag<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/collections4/bag/SynchronizedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections4/Bag;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0

    throw p1
.end method

.method protected getBag()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v0

    throw p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0

    throw p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    .line 102
    new-instance v2, Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;

    iget-object v3, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v2, p0, v1, v3}, Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;-><init>(Lorg/apache/commons/collections4/bag/SynchronizedBag;Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method
