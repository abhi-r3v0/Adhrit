.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;
.super Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedBidiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/BidiMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/OrderedBidiMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

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

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedBidiMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedBidiMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
