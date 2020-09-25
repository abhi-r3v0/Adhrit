.class Lorg/apache/commons/collections4/map/Flat3Map$Values;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "*TV;>;"
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
            "*TV;>;)V"
        }
    .end annotation

    .line 1036
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1037
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1042
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$Values;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    return v0
.end method
