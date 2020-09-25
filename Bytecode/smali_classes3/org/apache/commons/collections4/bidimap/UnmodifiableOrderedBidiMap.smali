.class public final Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;
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
        "Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    return-void
.end method

.method public static unmodifiableOrderedBidiMap(Lorg/apache/commons/collections4/OrderedBidiMap;)Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 80
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

    .line 100
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public final inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public final inverseOrderedBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/OrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    .line 142
    iput-object p0, v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

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

    .line 106
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 37
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

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 131
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

    .line 85
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

    .line 90
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

    .line 95
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

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 37
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

    .line 112
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
