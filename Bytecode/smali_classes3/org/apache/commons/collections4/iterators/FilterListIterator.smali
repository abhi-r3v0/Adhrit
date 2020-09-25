.class public Lorg/apache/commons/collections4/iterators/FilterListIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

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

.field private previousObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private previousObjectSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 88
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 99
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 100
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 111
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private clearNextObject()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    return-void
.end method

.method private clearPreviousObject()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    return-void
.end method

.method private setNextObject()Z
    .locals 3

    .line 220
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 222
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 225
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    return v1

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    return v0

    :cond_3
    return v1
.end method

.method private setPreviousObject()Z
    .locals 3

    .line 252
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 254
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    return v1

    .line 263
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 117
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.add(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

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

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

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

.method public hasPrevious()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

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

    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 134
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_1

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 150
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.set(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

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

    .line 206
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method
