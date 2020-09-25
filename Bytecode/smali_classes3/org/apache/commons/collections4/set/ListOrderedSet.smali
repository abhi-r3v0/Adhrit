.class public Lorg/apache/commons/collections4/set/ListOrderedSet;
.super Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field private final setOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    if-eqz p2, :cond_0

    .line 167
    iput-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static listOrderedSet(Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-interface {p0, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 126
    new-instance v1, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static listOrderedSet(Ljava/util/Set;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static listOrderedSet(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 86
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set and List must be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 321
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 330
    iget-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_2
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->iterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/collections4/OrderedIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Collection;Lorg/apache/commons/collections4/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 346
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 223
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 239
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->clear()V

    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->iterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
