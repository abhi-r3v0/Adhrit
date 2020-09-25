.class public abstract Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

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

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextIndex()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 25
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->reset()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
