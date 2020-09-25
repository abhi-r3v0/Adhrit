.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseViewMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.ViewIterator;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1

    .line 1803
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1804
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private createEntry(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1816
    new-instance v0, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->navigateNext()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->createEntry(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->previous()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1812
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->navigatePrevious()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;->createEntry(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
