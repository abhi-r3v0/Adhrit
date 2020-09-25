.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseEntryView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.View<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1

    .line 1569
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1570
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1575
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1578
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1579
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1580
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1581
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 1601
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1586
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1589
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1590
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1591
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1592
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
