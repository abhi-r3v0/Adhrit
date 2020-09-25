.class public abstract Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/OrderedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/OrderedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMap;->firstKey()Ljava/lang/Object;

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

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
