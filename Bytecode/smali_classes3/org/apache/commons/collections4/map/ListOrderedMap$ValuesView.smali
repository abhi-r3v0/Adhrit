.class Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;
.super Ljava/util/AbstractList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 509
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 529
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView$1;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView$1;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/ListOrderedMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method
