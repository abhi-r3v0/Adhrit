.class public Lorg/apache/commons/collections4/iterators/FilterIterator;
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
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private nextObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private setNextObject()Z
    .locals 2

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    .line 99
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method
