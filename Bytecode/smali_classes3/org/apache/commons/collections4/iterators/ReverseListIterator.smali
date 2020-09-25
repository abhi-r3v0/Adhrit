.class public Lorg/apache/commons/collections4/iterators/ReverseListIterator;
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
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
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

.field private validForUpdate:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 56
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->list:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

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

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add to list until next() or previous() called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove from list until next() or previous() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set to list until next() or previous() called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
