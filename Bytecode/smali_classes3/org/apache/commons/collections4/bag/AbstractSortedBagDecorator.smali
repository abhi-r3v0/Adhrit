.class public abstract Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;
.super Lorg/apache/commons/collections4/bag/AbstractBagDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/SortedBag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/SortedBag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x721fa5b0f5528386L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/SortedBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;-><init>(Lorg/apache/commons/collections4/Bag;)V

    return-void
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

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Lorg/apache/commons/collections4/Bag;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;->decorated()Lorg/apache/commons/collections4/SortedBag;

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

    .line 62
    invoke-super {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

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

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;->decorated()Lorg/apache/commons/collections4/SortedBag;

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

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
