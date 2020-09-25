.class public final Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/SortedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    return-void
.end method

.method public static unmodifiableSortedBidiMap(Lorg/apache/commons/collections4/SortedBidiMap;)Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 63
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 101
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public final inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    .line 135
    iput-object p0, v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 107
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public final mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBidiMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 143
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 113
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
