.class public abstract Lorg/apache/commons/collections4/bag/AbstractMapBag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;,
        Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private size:I

.field private transient uniqueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    return p0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 2

    .line 44
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 241
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 252
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 254
    iget-object v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 255
    iget v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    if-nez v2, :cond_0

    .line 257
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 260
    :cond_0
    iget p1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr p1, p2

    iput p1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public clear()V
    .locals 1

    .line 287
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 288
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

    .line 136
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1

    .line 139
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1
.end method

.method containsAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;",
            "Ljava/io/ObjectInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 519
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 522
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 523
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 524
    new-instance v4, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 502
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 504
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    iget v1, v1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 542
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 545
    :cond_1
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    .line 546
    invoke-interface {p1}, Lorg/apache/commons/collections4/Bag;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 549
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 550
    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-eqz p1, :cond_0

    .line 112
    iget p1, p1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 569
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 570
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 571
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 572
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iget v3, v3, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;-><init>(Lorg/apache/commons/collections4/bag/AbstractMapBag;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 304
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget v0, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v2
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 3

    .line 317
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gtz p2, :cond_1

    return v1

    .line 324
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 325
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    if-ge p2, v1, :cond_2

    .line 326
    iget p1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    .line 327
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    goto :goto_0

    .line 329
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget p2, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 345
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    .line 346
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 362
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1

    .line 365
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1
.end method

.method retainAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 378
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 380
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 382
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 383
    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    if-gt v4, v3, :cond_0

    sub-int/2addr v3, v4

    .line 385
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 387
    :cond_0
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 390
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 391
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public size()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 436
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 438
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 439
    aput-object v3, v0, v2

    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    .line 459
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 469
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 473
    aput-object v2, p1, v0

    add-int/lit8 v3, v3, -0x1

    move v0, v4

    goto :goto_0

    .line 476
    :cond_2
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 477
    aput-object v2, p1, v0

    move v0, v1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 590
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 592
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 593
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 594
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
