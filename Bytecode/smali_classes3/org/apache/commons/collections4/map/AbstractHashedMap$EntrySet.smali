.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


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

    .line 837
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 838
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 848
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 853
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 854
    check-cast p1, Ljava/util/Map$Entry;

    .line 855
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 863
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 866
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 869
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 870
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 843
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
