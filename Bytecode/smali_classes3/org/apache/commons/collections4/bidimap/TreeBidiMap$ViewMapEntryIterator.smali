.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;
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
    name = "ViewMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.ViewIterator;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1

    .line 1782
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1783
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1777
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;->next()Ljava/util/Map$Entry;

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

    .line 1787
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;->navigateNext()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1777
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;->previous()Ljava/util/Map$Entry;

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

    .line 1791
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;->navigatePrevious()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method
