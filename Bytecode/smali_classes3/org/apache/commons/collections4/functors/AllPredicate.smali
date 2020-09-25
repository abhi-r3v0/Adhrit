.class public final Lorg/apache/commons/collections4/functors/AllPredicate;
.super Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2af2924fb7a8adbfL


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static allPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    .line 81
    array-length v0, p0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 85
    aget-object p0, p0, v0

    return-object p0

    .line 87
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/AllPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/AllPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static varargs allPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 57
    array-length v0, p0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 61
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->coerce(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/AllPredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/AllPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 108
    invoke-interface {v4, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
