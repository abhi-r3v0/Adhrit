.class public Lorg/apache/commons/collections4/PredicateUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 290
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/AllPredicate;->allPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs allPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 274
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/AllPredicate;->allPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static andPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 258
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/AndPredicate;->andPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static anyPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 338
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/AnyPredicate;->anyPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 322
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/AnyPredicate;->anyPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static asPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 470
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/TransformerPredicate;->transformerPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static eitherPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 355
    invoke-static {v0}, Lorg/apache/commons/collections4/PredicateUtils;->onePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->exceptionPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static falsePredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static identityPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/IdentityPredicate;->identityPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static instanceofPredicate(Ljava/lang/Class;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/InstanceofPredicate;->instanceOfPredicate(Ljava/lang/Class;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static invokerPredicate(Ljava/lang/String;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/PredicateUtils;->asPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static invokerPredicate(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/PredicateUtils;->asPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static neitherPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 405
    invoke-static {v0}, Lorg/apache/commons/collections4/PredicateUtils;->nonePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static nonePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 438
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NonePredicate;->nonePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs nonePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 422
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NonePredicate;->nonePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static notNullPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lorg/apache/commons/collections4/functors/NotNullPredicate;->notNullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 452
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NotPredicate;->notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static nullIsExceptionPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 488
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NullIsExceptionPredicate;->nullIsExceptionPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static nullIsFalsePredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 503
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NullIsFalsePredicate;->nullIsFalsePredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static nullIsTruePredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;->nullIsTruePredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static nullPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static onePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 388
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/OnePredicate;->onePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs onePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
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

    .line 372
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/OnePredicate;->onePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static orPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 306
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/OrPredicate;->orPredicate(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static transformedPredicate(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 537
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/TransformedPredicate;->transformedPredicate(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static truePredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static uniquePredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 191
    invoke-static {}, Lorg/apache/commons/collections4/functors/UniquePredicate;->uniquePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method
