.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TK;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 442
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 445
    iput-boolean p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    .line 454
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 459
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 460
    iput-boolean v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 471
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
