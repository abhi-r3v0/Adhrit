.class final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrefixRangeEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.RangeEntrySet;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.PrefixRangeMap;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.PrefixRangeMap;)V"
        }
    .end annotation

    .line 2265
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    .line 2266
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;)V

    const/4 p1, 0x0

    .line 2260
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->expectedModCount:I

    .line 2267
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 2278
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1200(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1300(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1400(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2279
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->expectedModCount:I

    .line 2282
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_1

    .line 2283
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2284
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 2285
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1400(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt v0, v1, :cond_2

    .line 2286
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    return-object v0

    .line 2288
    :cond_2
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;

    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->prefixStart:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1200(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1300(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v6

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1400(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2272
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->delegate:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;->access$1100(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;)I

    move-result v0

    return v0
.end method
