.class public Lorg/apache/commons/collections4/bag/TransformedBag;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b3bde38a2a97889L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->clear()V

    .line 82
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 83
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

.method public static transformingBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
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

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedSet;->transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;

    move-result-object v0

    return-object v0
.end method
