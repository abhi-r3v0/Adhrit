.class public abstract Lorg/apache/commons/collections4/bag/AbstractBagDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x344b24d6999449c9L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

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

    .line 63
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

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

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
