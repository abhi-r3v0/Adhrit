.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySet;
.super Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x38126c5d0c9036bcL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 586
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 589
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 590
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 591
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 593
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 594
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
