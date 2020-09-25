.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected last:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;"
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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 623
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    .line 624
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 629
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    const/4 v1, 0x1

    .line 630
    iput-boolean v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 636
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 641
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 642
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    return-void

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
