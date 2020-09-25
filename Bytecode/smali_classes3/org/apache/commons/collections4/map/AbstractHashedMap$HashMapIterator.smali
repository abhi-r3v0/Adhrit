.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 768
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

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

    .line 776
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 778
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

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 772
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 794
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
