.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedBidiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field private inverseEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation
.end field

.field private inverseKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private inverseValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2120
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 2066
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 2070
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2139
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    .line 2141
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 2157
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p1

    return p1
.end method

.method public firstKey()Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 2075
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->firstKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2062
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 2162
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2054
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    .line 2127
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 2082
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->lastKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2145
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0

    .line 2148
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2088
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2800(Ljava/lang/Object;)V

    .line 2089
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2090
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2094
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2800(Ljava/lang/Object;)V

    .line 2095
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2096
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 2100
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 2101
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v1, p2, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TV;+TK;>;)V"
        }
    .end annotation

    .line 2106
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 2050
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2167
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$3300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2132
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    .line 2134
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;->inverseValuesSet:Ljava/util/Set;

    return-object v0
.end method
