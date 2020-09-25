.class public Lorg/apache/commons/collections4/iterators/IteratorChain;
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
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private isLocked:Z

.field private final iteratorChain:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 146
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 147
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 113
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 127
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 128
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkLocked()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lockChain()V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->checkLocked()V

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 235
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 237
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 252
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 271
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 272
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method protected updateCurrentIterator()V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 220
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 223
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_2
    return-void
.end method
