.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceBaseIterator"
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
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 776
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 779
    iget p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 808
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 814
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 832
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 833
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 783
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 784
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 786
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    :goto_1
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 789
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_1

    .line 791
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 792
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 795
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    .line 798
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 799
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 800
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 819
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 822
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 823
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 824
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 826
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 827
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 837
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 838
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 842
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 843
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 844
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
