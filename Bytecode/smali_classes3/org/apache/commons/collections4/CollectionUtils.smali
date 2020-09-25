.class public Lorg/apache/commons/collections4/CollectionUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;,
        Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;,
        Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;
    }
.end annotation


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1105
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1106
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 1108
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Enumeration<",
            "+TC;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1139
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Iterator<",
            "+TC;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1122
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;[TC;)Z"
        }
    .end annotation

    .line 1156
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 1157
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1090
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1088
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The collection must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/lang/Iterable<",
            "-TO;>;)I"
        }
    .end annotation

    .line 607
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 608
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    .line 610
    :cond_1
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_2

    .line 611
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    invoke-interface {p1, p0}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_2
    if-nez p0, :cond_4

    .line 615
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method private static checkIndexBounds(I)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Index cannot be negative: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1529
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1569
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 1599
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1602
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v1, p2, p0, p1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    if-eqz p3, :cond_1

    .line 1604
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1606
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 1609
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 1611
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1612
    :cond_2
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p1, p2

    goto :goto_1

    .line 1617
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    return-object p0

    .line 1595
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The comparator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1592
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The collections must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1550
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 996
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1040
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1066
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1068
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1069
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 370
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 371
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 372
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 373
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 379
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 380
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    return v4

    :cond_5
    return v1
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 410
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 411
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 417
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 418
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 826
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 827
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static disjunction(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 280
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 281
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 282
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static emptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-object v0
.end method

.method public static emptyIfNull(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 209
    sget-object p0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    :cond_0
    return-object p0
.end method

.method public static exists(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 848
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 849
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static extractSingleton(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1784
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1787
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1785
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can extract singleton only when collection size == 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 750
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static filterInverse(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/PredicateUtils;->notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 643
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 644
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forAllButLastDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 707
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->forAllButLastDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forAllButLastDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 724
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 726
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forAllDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 665
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 666
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static forAllDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 686
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1213
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1214
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1215
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1217
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_a

    .line 1255
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1256
    check-cast p0, Ljava/util/Map;

    .line 1257
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1258
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1259
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1260
    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    .line 1261
    :cond_1
    instance-of v0, p0, Ljava/util/Iterator;

    const-string v1, "Entry does not exist: "

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 1262
    check-cast p0, Ljava/util/Iterator;

    .line 1263
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v2, :cond_2

    .line 1266
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1268
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1270
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1271
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 1272
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1273
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1274
    :cond_5
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_8

    .line 1275
    check-cast p0, Ljava/util/Enumeration;

    .line 1276
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v2, :cond_6

    .line 1279
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1281
    :cond_6
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_1

    .line 1284
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz p0, :cond_9

    .line 1289
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1291
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported object type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1286
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported object type: null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1253
    :cond_a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Index cannot be negative: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1178
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1179
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1182
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1184
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1186
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Entry does not exist: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljava/util/Map;I)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1308
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1309
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public static getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 443
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 253
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 254
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1415
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 511
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 514
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 515
    iget-object p0, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    iget-object p1, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v2

    .line 518
    :cond_1
    iget-object p0, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 519
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result p1

    if-eq v1, p1, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/commons/collections4/Equator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;",
            "Lorg/apache/commons/collections4/Equator<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 547
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 551
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$1;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$1;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 557
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 544
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "equator may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1470
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1471
    check-cast p0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {p0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result p0

    return p0

    .line 1474
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object p0

    .line 1476
    invoke-interface {p0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    .line 1468
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1428
    invoke-static {p0}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 495
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 464
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 465
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 466
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result p1

    if-le v1, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    .line 877
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 878
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1501
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1502
    check-cast p0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {p0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result p0

    return p0

    .line 1505
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object p0

    .line 1507
    invoke-interface {p0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0

    .line 1499
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static permutations(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1643
    new-instance v0, Lorg/apache/commons/collections4/iterators/PermutationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;-><init>(Ljava/util/Collection;)V

    .line 1644
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1645
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1646
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1751
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/collection/PredicatedCollection;

    move-result-object p0

    return-object p0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1690
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1669
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .locals 4

    .line 1439
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    .line 1443
    aget-object v2, p0, v0

    .line 1444
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 1445
    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 900
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 924
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 925
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 948
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 972
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 973
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1334
    :cond_0
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1335
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_2

    .line 1336
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1337
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_2

    .line 1338
    :cond_2
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1339
    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    goto :goto_2

    .line 1340
    :cond_3
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_5

    .line 1341
    check-cast p0, Ljava/util/Iterator;

    .line 1342
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1344
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move p0, v0

    goto :goto_2

    .line 1346
    :cond_5
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_6

    .line 1347
    check-cast p0, Ljava/util/Enumeration;

    .line 1348
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1350
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_1

    .line 1354
    :cond_6
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return p0

    .line 1356
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1385
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 1386
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    .line 1387
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1388
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    .line 1389
    :cond_2
    instance-of v1, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1390
    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v2

    .line 1391
    :cond_4
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_6

    .line 1392
    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2

    .line 1393
    :cond_6
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_8

    .line 1394
    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    return v2

    .line 1397
    :cond_8
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_9

    return v0

    :cond_9
    return v2

    .line 1399
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 301
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    .line 302
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 331
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 332
    invoke-interface {p2, v2}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    .line 337
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 338
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1718
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->synchronizedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TC;+TC;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 799
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 800
    check-cast p0, Ljava/util/List;

    .line 801
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 805
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object p1

    .line 806
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 807
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public static transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1772
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/TransformedCollection;->transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/TransformedCollection;

    move-result-object p0

    return-object p0
.end method

.method public static union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 228
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 229
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1732
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
