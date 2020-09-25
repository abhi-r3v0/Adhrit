.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 662
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 663
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
