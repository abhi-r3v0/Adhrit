.class public Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/SortedBidiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;,
        Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/SortedBidiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b1151L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private final valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 73
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 97
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 98
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 86
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TV;TK;>;",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V

    .line 111
    check-cast p1, Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 112
    check-cast p2, Ljava/util/SortedMap;

    invoke-interface {p2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 391
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    .line 392
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    .line 394
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 395
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 386
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/BidiMap;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object p1

    return-object p1
.end method

.method protected createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TV;TK;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 204
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 219
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/SortedBidiMap;

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections4/OrderedMap;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections4/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 155
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections4/OrderedMap;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections4/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 171
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 175
    :cond_2
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 214
    new-instance p2, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 209
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
