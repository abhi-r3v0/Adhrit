.class public Lorg/apache/commons/collections4/ComparatorUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NATURAL_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/apache/commons/collections4/comparators/ComparableComparator;->comparableComparator()Lorg/apache/commons/collections4/comparators/ComparableComparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanComparator(Z)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lorg/apache/commons/collections4/comparators/BooleanComparator;->booleanComparator(Z)Lorg/apache/commons/collections4/comparators/BooleanComparator;

    move-result-object p0

    return-object p0
.end method

.method public static chainedComparator(Ljava/util/Collection;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(",
            "Ljava/util/Collection<",
            "Ljava/util/Comparator<",
            "TE;>;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 106
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Comparator;

    invoke-static {p0}, Lorg/apache/commons/collections4/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    .line 81
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Comparator cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static max(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;",
            "Ljava/util/Comparator<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 237
    sget-object p2, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 239
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static min(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;",
            "Ljava/util/Comparator<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 217
    sget-object p2, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 219
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static nullHighComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 174
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 176
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static nullLowComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 154
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static reversedComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/apache/commons/collections4/comparators/ReverseComparator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static transformedComparator(Ljava/util/Comparator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Comparator<",
            "TI;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 198
    sget-object p0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 200
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/TransformingComparator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections4/Transformer;Ljava/util/Comparator;)V

    return-object v0
.end method
