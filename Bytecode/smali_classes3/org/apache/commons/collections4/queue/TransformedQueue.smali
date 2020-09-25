.class public Lorg/apache/commons/collections4/queue/TransformedQueue;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source ""

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6da650b15e174a41L


# direct methods
.method protected constructor <init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/queue/TransformedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/commons/collections4/queue/TransformedQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;-><init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V

    .line 77
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    invoke-interface {p0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 80
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    .line 81
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/queue/TransformedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/apache/commons/collections4/queue/TransformedQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;-><init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
