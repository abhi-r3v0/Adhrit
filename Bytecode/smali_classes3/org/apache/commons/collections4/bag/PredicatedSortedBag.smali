.class public Lorg/apache/commons/collections4/bag/PredicatedSortedBag;
.super Lorg/apache/commons/collections4/bag/PredicatedBag;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/SortedBag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/PredicatedBag<",
        "TE;>;",
        "Lorg/apache/commons/collections4/SortedBag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2fdbd26f0d2b89d8L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedSortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/bag/PredicatedSortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Lorg/apache/commons/collections4/Bag;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-super {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/SortedBag;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
