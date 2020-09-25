.class public Lorg/apache/commons/collections4/list/SetUniqueList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;,
        Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63e0d12ac47e0a26L


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 100
    iput-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Set must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setUniqueList(Ljava/util/List;)Lorg/apache/commons/collections4/list/SetUniqueList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/SetUniqueList<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 75
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 80
    new-instance v1, Lorg/apache/commons/collections4/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 81
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->addAll(Ljava/util/Collection;)Z

    return-object v1

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->add(ILjava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->size()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->add(ILjava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->size()I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-super {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 279
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->clear()V

    .line 280
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance p1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_0

    .line 337
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 339
    :catch_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 344
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(Ljava/lang/Object;)Z

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

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 249
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

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 257
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 266
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->clear()V

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 215
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 220
    invoke-super {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 224
    iget-object p1, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 316
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 317
    iget-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections4/list/SetUniqueList;->createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    .line 318
    new-instance v0, Lorg/apache/commons/collections4/list/SetUniqueList;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    invoke-static {v0}, Lorg/apache/commons/collections4/ListUtils;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
