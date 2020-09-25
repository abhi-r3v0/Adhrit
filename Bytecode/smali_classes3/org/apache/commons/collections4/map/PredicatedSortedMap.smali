.class public Lorg/apache/commons/collections4/map/PredicatedSortedMap;
.super Lorg/apache/commons/collections4/map/PredicatedMap;
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
        "Lorg/apache/commons/collections4/map/PredicatedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ea0924bb894128cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedSortedMap;
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
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Lorg/apache/commons/collections4/map/PredicatedSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

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

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

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

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

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

    .line 92
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

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 115
    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/Predicate;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

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

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 110
    new-instance p2, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

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

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 120
    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/Predicate;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method
