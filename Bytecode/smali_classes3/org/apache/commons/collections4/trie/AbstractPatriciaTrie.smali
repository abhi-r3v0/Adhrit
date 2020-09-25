.class abstract Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.super Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x478b23ab55314feaL


# instance fields
.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected transient modCount:I

.field private transient root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient size:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    .line 49
    new-instance p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 67
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
            "-TK;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    .line 49
    new-instance p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 67
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 81
    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private getPrefixMapByBits(Ljava/lang/Object;II)Ljava/util/SortedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    add-int v0, p2, p3

    .line 854
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    return-object p0

    .line 863
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;IILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v0

    .line 855
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private incrementModCount()V
    .locals 1

    .line 125
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-void
.end method

.method static isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "**>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1253
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2402
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2403
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 2407
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 2408
    invoke-virtual {p0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeExternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_4

    .line 502
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isExternalNode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 507
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 509
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v2, p1, :cond_1

    .line 510
    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 512
    :cond_1
    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 516
    :goto_1
    iget p1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le p1, v2, :cond_2

    .line 517
    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void

    .line 519
    :cond_2
    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void

    .line 503
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an external Entry!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delete root Entry!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeInternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_a

    .line 534
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 538
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 541
    iget v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iput v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 545
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 546
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 554
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v3, v0, :cond_1

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v3, p1, :cond_1

    .line 555
    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 558
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v3, v0, :cond_2

    .line 559
    iput-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 561
    :cond_2
    iput-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 564
    :goto_1
    iget v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v4, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v3, v4, :cond_3

    .line 565
    iput-object v1, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 573
    :cond_3
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_4

    .line 574
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 577
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_5

    .line 578
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 582
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_6

    .line 583
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_2

    .line 585
    :cond_6
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 591
    :goto_2
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 592
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 593
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 597
    iget-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 598
    iget-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 601
    :cond_7
    iget-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 602
    iget-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :cond_8
    return-void

    .line 535
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an internal Entry!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delete root Entry!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;ITK;I",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 354
    :goto_0
    iget v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    const/4 v1, 0x0

    if-gt v0, p2, :cond_1

    .line 358
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 359
    invoke-virtual {p5, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->set(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 365
    :cond_1
    iget p2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, p3, p2, p4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 366
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 367
    iget-object p2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    goto :goto_1

    .line 370
    :cond_2
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 371
    iget-object p2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    :goto_1
    move-object v8, p2

    move p2, p1

    move-object p1, v8

    goto :goto_0

    :cond_3
    return v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2416
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2417
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2418
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;I)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 196
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 198
    :goto_0
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ge v2, v3, :cond_2

    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v3, :cond_0

    goto :goto_2

    .line 231
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 234
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :goto_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 200
    :cond_2
    :goto_2
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 202
    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 204
    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_3

    .line 206
    :cond_3
    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 207
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 210
    :goto_3
    iput-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 211
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt v2, v3, :cond_4

    .line 212
    iput-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 216
    :cond_4
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v3, :cond_5

    .line 217
    iput-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 220
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v1, v0, :cond_7

    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    iget v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v0, v2, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    .line 223
    :cond_6
    iput-object p1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_5

    .line 221
    :cond_7
    :goto_4
    iput-object p1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :goto_5
    return-object p1
.end method

.method ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 955
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 958
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 959
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 961
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 965
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 966
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 970
    :cond_2
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 971
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 972
    new-instance v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 973
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 974
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 975
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    .line 976
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 977
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-object p1

    .line 979
    :cond_3
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 981
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 983
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 985
    :cond_5
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    .line 990
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid lookup: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 3

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v2, -0x1

    iput v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->value:Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    .line 385
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method decrementSize()V
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 118
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 782
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method floorEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1053
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1056
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1057
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    :cond_0
    return-object v1

    .line 1063
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 1064
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 1068
    :cond_2
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1069
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1070
    new-instance v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v2, p1, v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1071
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 1073
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    .line 1074
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 1075
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-object p1

    .line 1077
    :cond_3
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1078
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1079
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    :cond_4
    return-object v1

    .line 1083
    :cond_5
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    .line 1088
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid lookup: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
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

    .line 760
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 762
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 766
    :cond_0
    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v1, p1, :cond_1

    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
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

    .line 1164
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1169
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v0, v1, :cond_1

    .line 1170
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1173
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    .line 259
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 458
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 460
    :goto_0
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v1, :cond_0

    return-object v0

    .line 465
    :cond_0
    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 468
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :goto_1
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 867
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method higherEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 889
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 891
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 892
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    .line 898
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 902
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 903
    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 904
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 907
    :cond_3
    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 908
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 909
    new-instance v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v1, p1, v2, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 910
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 911
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 912
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    .line 913
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 914
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-object p1

    .line 916
    :cond_4
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 917
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 918
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 919
    :cond_5
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    .line 920
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2

    .line 924
    :cond_7
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 925
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 929
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid lookup: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method incrementSize()V
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 110
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 788
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 792
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method lowerEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1015
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1021
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 1022
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 1026
    :cond_1
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1027
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1028
    new-instance v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v2, p1, v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1029
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1030
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 1031
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    .line 1032
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 1033
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    return-object p1

    .line 1035
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 1037
    :cond_3
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1038
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 1042
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid lookup: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 823
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v0
.end method

.method nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
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

    if-nez p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 614
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1
.end method

.method nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_2

    .line 660
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p2, v0, :cond_2

    .line 667
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 671
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    .line 689
    :cond_3
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_4

    return-object v1

    .line 694
    :cond_4
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p2, v0, :cond_6

    .line 696
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 701
    :cond_5
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 706
    :cond_6
    :goto_1
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne p1, v0, :cond_8

    if-ne p1, p3, :cond_7

    return-object v1

    .line 712
    :cond_7
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    :cond_8
    if-ne p1, p3, :cond_9

    return-object v1

    .line 721
    :cond_9
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_a

    return-object v1

    .line 726
    :cond_a
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p2, v0, :cond_b

    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 728
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 732
    :cond_b
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, v2, :cond_c

    return-object v1

    .line 737
    :cond_c
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1
.end method

.method nextEntryInSubtree(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1243
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 800
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 802
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 798
    :cond_1
    throw v0
.end method

.method public prefixMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 827
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getPrefixMapByBits(Ljava/lang/Object;II)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1196
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_7

    .line 1200
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, p1, :cond_1

    .line 1201
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 1204
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 1207
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1208
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne p1, v0, :cond_2

    .line 1209
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return-object v1

    .line 1216
    :cond_3
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1217
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, v2, :cond_5

    .line 1218
    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    .line 1221
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 1225
    :cond_5
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p1

    .line 1228
    :cond_6
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must have come from somewhere!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 813
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 815
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 811
    :cond_1
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 144
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 147
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 148
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_1

    .line 152
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 154
    :goto_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 157
    :cond_3
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 158
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isOutOfBoundsIndex(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 159
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    new-instance v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 162
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_4
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_2

    .line 173
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 175
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 177
    :cond_6
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v1, v0, :cond_7

    .line 182
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 183
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 188
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to put: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 425
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    .line 426
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 427
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 429
    :goto_0
    iget v4, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v4, v3, :cond_2

    .line 430
    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v2, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 439
    :cond_2
    iget v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, p1, v3, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 442
    :cond_3
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :goto_1
    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0
.end method

.method removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_1

    .line 482
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeInternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeExternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    .line 489
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->decrementSize()V

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p1, v0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public select(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v4

    .line 284
    new-instance v6, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 286
    invoke-virtual {v6}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :cond_0
    return-object v7
.end method

.method public selectKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->select(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public selectValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->select(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 871
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1099
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1101
    :goto_0
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v2, v3, :cond_1

    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt p3, v2, :cond_1

    .line 1106
    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    add-int/2addr v1, p2

    add-int v2, p2, p3

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1107
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 1109
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :goto_1
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1117
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    add-int v1, p2, p3

    .line 1127
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, v3, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, v1, :cond_4

    return-object v2

    .line 1133
    :cond_4
    invoke-virtual {p0, p1, v1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3, p3, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eq v1, v3, :cond_5

    return-object v2

    .line 1139
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v4

    iget-object v8, v0, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->key:Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->bitIndex(Ljava/lang/Object;IILjava/lang/Object;II)I

    move-result p1

    if-ltz p1, :cond_6

    if-ge p1, p3, :cond_6

    return-object v2

    :cond_6
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 875
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    return-object v0
.end method
