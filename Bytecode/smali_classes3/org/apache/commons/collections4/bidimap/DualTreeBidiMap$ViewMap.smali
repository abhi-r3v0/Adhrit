.class public Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;
.super Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<",
            "TK;TV;>;",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 236
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    iget-object v1, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    invoke-direct {v0, p2, v1, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decorated()Ljava/util/SortedMap;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 266
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method
