.class public abstract Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HashIterator"
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
.field private expectedModCount:I

.field private hashIndex:I

.field private last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 1147
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1148
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1151
    aget-object v2, v0, v1

    goto :goto_0

    .line 1153
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1154
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1155
    iget p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1159
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 1166
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1171
    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1172
    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    :goto_0
    if-nez v3, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 1174
    aget-object v3, v1, v2

    goto :goto_0

    .line 1176
    :cond_0
    iput-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1177
    iput v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 1178
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object v0

    .line 1168
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1194
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1195
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->expectedModCount:I

    return-void

    .line 1191
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1188
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1200
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->last:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

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
