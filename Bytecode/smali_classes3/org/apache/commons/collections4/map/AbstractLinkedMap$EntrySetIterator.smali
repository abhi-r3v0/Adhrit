.class public Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 415
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$EntrySetIterator;->previous()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 419
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    return-object v0
.end method
