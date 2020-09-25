.class final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.TrieIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lastOne:Z

.field private final lengthInBits:I

.field private final offset:I

.field private final prefix:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;TK;II)V"
        }
    .end annotation

    .line 2346
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    .line 2347
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2348
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2349
    iput-object p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->prefix:Ljava/lang/Object;

    .line 2350
    iput p4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->offset:I

    .line 2351
    iput p5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->lengthInBits:I

    return-void
.end method


# virtual methods
.method protected final findNext(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2364
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryInSubtree(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2331
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2355
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->nextEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 2356
    iget-boolean v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->lastOne:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2357
    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->next:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :cond_0
    return-object v0
.end method

.method public final remove()V
    .locals 5

    .line 2372
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 2373
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->current:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2377
    :goto_0
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;->remove()V

    .line 2381
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v2, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_2

    .line 2382
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->prefix:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->offset:I

    iget v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->lengthInBits:I

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2388
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->lengthInBits:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->subtree:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt v0, v1, :cond_3

    .line 2389
    iput-boolean v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$EntryIterator;->lastOne:Z

    :cond_3
    return-void
.end method
