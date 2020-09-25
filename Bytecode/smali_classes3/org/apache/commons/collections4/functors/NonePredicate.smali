.class public final Lorg/apache/commons/collections4/functors/NonePredicate;
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
.field private static final serialVersionUID:J = 0x1bdc79727f17bb61L


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

.method public static nonePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
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

    .line 70
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    .line 71
    array-length v0, p0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/NonePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/NonePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static varargs nonePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
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

    .line 51
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 52
    array-length v0, p0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/NonePredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/NonePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

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

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 95
    invoke-interface {v4, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
