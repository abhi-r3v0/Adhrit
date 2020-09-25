.class public Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final CANNOT_REMOVE_MESSAGE:Ljava/lang/String; = "Cannot remove element at index {0}."

.field private static final UNSUPPORTED_OPERATION_MESSAGE:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."


# instance fields
.field private currentIndex:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private removeState:Z

.field private wrappedIteratorIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 65
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Ljava/util/ListIterator;

    .line 100
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 112
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Ljava/util/ListIterator;

    .line 126
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v3

    .line 143
    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 150
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 151
    iput-boolean v3, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Ljava/util/ListIterator;

    .line 163
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0

    .line 165
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Ljava/util/ListIterator;

    .line 178
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    if-eqz v0, :cond_2

    .line 184
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 182
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Ljava/util/ListIterator;

    .line 196
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0

    .line 198
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 211
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 212
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 215
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    iget v4, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    sub-int/2addr v1, v4

    if-gt v1, v3, :cond_2

    .line 218
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 219
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 221
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 222
    iput-boolean v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    return-void

    .line 216
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Cannot remove element at index {0}."

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    .line 253
    check-cast v0, Ljava/util/ListIterator;

    .line 254
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 255
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/util/ListIterator;

    .line 237
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
