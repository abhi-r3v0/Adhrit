.class public Lorg/apache/commons/collections4/comparators/NullComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x50c789d15007a6d3L


# instance fields
.field private final nonNullComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final nullsAreHigh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;Z)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 114
    iput-boolean p2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null nonNullComparator"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 90
    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 140
    iget-boolean p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    if-nez p2, :cond_4

    .line 141
    iget-boolean p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 142
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 174
    :cond_2
    check-cast p1, Lorg/apache/commons/collections4/comparators/NullComparator;

    .line 176
    iget-boolean v2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    iget-boolean v3, p1, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v2, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
