.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BidiMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

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
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 702
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    .line 703
    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v1, 0x1

    .line 712
    iput-boolean v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 713
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 717
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 723
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    return-void

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 760
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 754
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 746
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 765
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapIterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "MapIterator[]"

    return-object v0
.end method
