.class Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canGetSet:Z

.field private hasNext:Z

.field private final parent:Lorg/apache/commons/collections4/map/SingletonMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/SingletonMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/SingletonMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/SingletonMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 410
    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

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

    .line 450
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 418
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 423
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 431
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 434
    iput-boolean v1, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 435
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 457
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 458
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 469
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    const-string v0, "Iterator[]"

    return-object v0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
