.class public final Lorg/apache/commons/collections4/bag/CollectionSortedBag;
.super Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2387111919426757L


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/SortedBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    return-void
.end method

.method public static collectionSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/apache/commons/collections4/bag/CollectionSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->setCollection(Ljava/util/Collection;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public final add(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBag;->add(Ljava/lang/Object;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->add(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 94
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->remove(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 136
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/SortedBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/SortedBag;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
