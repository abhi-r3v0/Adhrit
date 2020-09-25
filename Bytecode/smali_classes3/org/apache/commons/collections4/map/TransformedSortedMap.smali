.class public Lorg/apache/commons/collections4/map/TransformedSortedMap;
.super Lorg/apache/commons/collections4/map/TransformedMap;
.source ""

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/TransformedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x797489f887c41572L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 95
    invoke-interface {p0}, Ljava/util/SortedMap;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 96
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 97
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->clear()V

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public static transformingSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
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

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 151
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 146
    new-instance p2, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 156
    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method
