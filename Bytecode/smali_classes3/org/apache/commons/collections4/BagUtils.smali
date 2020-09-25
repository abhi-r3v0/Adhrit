.class public Lorg/apache/commons/collections4/BagUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EMPTY_BAG:Lorg/apache/commons/collections4/Bag;

.field public static final EMPTY_SORTED_BAG:Lorg/apache/commons/collections4/Bag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/UnmodifiableBag;->unmodifiableBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/BagUtils;->EMPTY_BAG:Lorg/apache/commons/collections4/Bag;

    .line 49
    new-instance v0, Lorg/apache/commons/collections4/bag/TreeBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/TreeBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->unmodifiableSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/BagUtils;->EMPTY_SORTED_BAG:Lorg/apache/commons/collections4/Bag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->collectionBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static emptyBag()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Lorg/apache/commons/collections4/BagUtils;->EMPTY_BAG:Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public static emptySortedBag()Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/apache/commons/collections4/BagUtils;->EMPTY_SORTED_BAG:Lorg/apache/commons/collections4/Bag;

    check-cast v0, Lorg/apache/commons/collections4/SortedBag;

    return-object v0
.end method

.method public static predicatedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Bag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bag/PredicatedBag;->predicatedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedBag;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/SortedBag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 216
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bag/PredicatedSortedBag;->predicatedSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedSortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->synchronizedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/bag/SynchronizedBag;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 181
    invoke-static {p0}, Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;->synchronizedSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/bag/SynchronizedSortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static transformingBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 137
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;->transformingBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static transformingSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/SortedBag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 238
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->transformingSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/bag/TransformedSortedBag;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lorg/apache/commons/collections4/bag/UnmodifiableBag;->unmodifiableBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->unmodifiableSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;

    move-result-object p0

    return-object p0
.end method
