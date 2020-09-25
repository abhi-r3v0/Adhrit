.class public Lorg/apache/commons/collections4/iterators/PermutationIterator;
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
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private direction:[Z

.field private keys:[I

.field private nextPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    add-int/lit8 v4, v2, -0x1

    aput v2, v3, v4

    add-int/2addr v2, v1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The collection must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 115
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v2, v6, :cond_3

    .line 116
    iget-object v6, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_0

    array-length v6, v5

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_0

    aget v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    aget v5, v5, v7

    if-gt v6, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    if-lez v2, :cond_2

    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget v5, v5, v7

    if-le v6, v5, :cond_2

    .line 118
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v6, v5, v2

    if-le v6, v3, :cond_2

    .line 119
    aget v3, v5, v2

    move v4, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-object v0

    .line 131
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    .line 132
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v5, v2, v4

    add-int/2addr v1, v4

    .line 133
    aget v6, v2, v1

    aput v6, v2, v4

    .line 134
    aput v5, v2, v1

    .line 135
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v5, v2, v4

    .line 136
    aget-boolean v6, v2, v1

    aput-boolean v6, v2, v4

    .line 137
    aput-boolean v5, v2, v1

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v4, v2

    if-ge v0, v4, :cond_7

    .line 142
    aget v2, v2, v0

    if-le v2, v3, :cond_6

    .line 143
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v4, v2, v0

    xor-int/2addr v4, v7

    aput-boolean v4, v2, v0

    .line 145
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 148
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-object v0

    .line 109
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
