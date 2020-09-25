.class public Lorg/apache/commons/collections4/bag/PredicatedBag;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23bf329802ed4c6cL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/bag/PredicatedBag<",
            "TE;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/commons/collections4/bag/PredicatedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 87
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
