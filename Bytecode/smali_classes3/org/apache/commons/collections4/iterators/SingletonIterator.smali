.class public Lorg/apache/commons/collections4/iterators/SingletonIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private beforeFirst:Z

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final removeAllowed:Z

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    .line 63
    iput-boolean p2, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removeAllowed:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

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

    .line 88
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removeAllowed:Z

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    return-void
.end method
