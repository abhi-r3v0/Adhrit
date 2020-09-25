.class public Lorg/apache/commons/collections4/trie/PatriciaTrie;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3db4abf059650deeL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TE;>;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->clear()V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
