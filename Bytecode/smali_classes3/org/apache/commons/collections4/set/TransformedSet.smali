.class public Lorg/apache/commons/collections4/set/TransformedSet;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43f953bbd8fce12L


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 82
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 83
    invoke-virtual {v0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSet<",
            "TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method
