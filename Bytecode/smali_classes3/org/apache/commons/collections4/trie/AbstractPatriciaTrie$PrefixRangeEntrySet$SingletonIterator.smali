.class final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entry:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private hit:I

.field final synthetic this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2301
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2299
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    .line 2302
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->entry:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 2306
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2295
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2310
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2314
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    .line 2315
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->entry:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0

    .line 2311
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 2319
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 2323
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->hit:I

    .line 2324
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->this$1:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;->this$0:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet$SingletonIterator;->entry:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    return-void

    .line 2320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
