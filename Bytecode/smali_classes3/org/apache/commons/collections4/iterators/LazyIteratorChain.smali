.class public abstract Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private callCounter:I

.field private chainExhausted:Z

.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private lastUsedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->callCounter:I

    .line 55
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->chainExhausted:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    return-void
.end method

.method private updateCurrentIterator()V
    .locals 2

    .line 83
    iget v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->callCounter:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    add-int/2addr v0, v1

    .line 84
    iput v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->callCounter:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->nextIterator(I)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 87
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->chainExhausted:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->chainExhausted:Z

    if-nez v0, :cond_3

    .line 95
    iget v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->callCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->callCounter:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->nextIterator(I)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 99
    :cond_2
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->chainExhausted:Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->updateCurrentIterator()V

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->updateCurrentIterator()V

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract nextIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->updateCurrentIterator()V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
