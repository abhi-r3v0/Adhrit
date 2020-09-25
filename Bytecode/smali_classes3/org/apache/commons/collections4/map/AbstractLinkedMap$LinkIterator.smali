.class public abstract Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    .line 538
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 539
    iget p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 543
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 558
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 559
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected previousEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 566
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 567
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 570
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 571
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 588
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 593
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
