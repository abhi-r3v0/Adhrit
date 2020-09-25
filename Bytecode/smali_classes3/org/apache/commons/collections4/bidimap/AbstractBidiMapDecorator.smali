.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/BidiMap;


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
        "Lorg/apache/commons/collections4/BidiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/BidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/BidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/BidiMap;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/BidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BidiMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/BidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
