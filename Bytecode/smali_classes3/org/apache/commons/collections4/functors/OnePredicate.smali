.class public final Lorg/apache/commons/collections4/functors/OnePredicate;
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
.field private static final serialVersionUID:J = -0x70c32e53becc8a39L


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

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static onePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
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

    .line 73
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    .line 74
    new-instance v0, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static varargs onePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
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

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 54
    array-length v0, p0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 58
    aget-object p0, p0, v0

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 97
    invoke-interface {v5, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method
