.class Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 743
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 744
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->clear()V

    return-void
.end method

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

    .line 771
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 774
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 775
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 777
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map$EntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 759
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 762
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 763
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 764
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 765
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public size()I
    .locals 1

    .line 749
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    return v0
.end method
