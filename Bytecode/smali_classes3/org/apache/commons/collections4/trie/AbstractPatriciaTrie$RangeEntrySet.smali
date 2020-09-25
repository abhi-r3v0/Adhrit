.class Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RangeEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.RangeMap;"
        }
    .end annotation
.end field

.field private transient expectedModCount:I

.field private transient size:I

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.RangeMap;)V"
        }
    .end annotation

    .line 1965
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 p1, -0x1

    .line 1958
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    if-eqz p2, :cond_0

    .line 1970
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    return-void

    .line 1967
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "delegate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2015
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2019
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2020
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2021
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 2025
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2026
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2009
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getFromKey()Ljava/lang/Object;

    move-result-object v0

    .line 1976
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->getToKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    .line 1980
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    .line 1982
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1987
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 1990
    :goto_1
    new-instance v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet$EntryIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v3
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 2032
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2036
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2037
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2038
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;->inRange(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 2042
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2043
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2044
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public size()I
    .locals 2

    .line 1995
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1996
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    .line 1998
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1999
    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    .line 1998
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 2002
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->expectedModCount:I

    .line 2004
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;->size:I

    return v0
.end method
