.class public Lorg/apache/commons/collections4/iterators/SingletonListIterator;
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


# instance fields
.field private beforeFirst:Z

.field private nextCalled:Z

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    .line 34
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    .line 44
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 147
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported by this iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    .line 105
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    .line 161
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
