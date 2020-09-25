.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4022e75e5da6958fL


# instance fields
.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 342
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->clear()V

    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 352
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 372
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 373
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->clear()V

    return v2

    .line 377
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
