.class public Lorg/apache/commons/collections4/TransformerUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ClosureTransformer;->closureTransformer(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/PredicateTransformer;->predicateTransformer(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 210
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;->chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs chainedTransformer([Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;->chainedTransformer([Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lorg/apache/commons/collections4/functors/CloneTransformer;->cloneTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionTransformer;->exceptionTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 349
    invoke-static {}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->instantiateTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 366
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 400
    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 419
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 380
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/MapTransformer;->mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static nopTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static stringValueTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-static {}, Lorg/apache/commons/collections4/functors/StringValueTransformer;->stringValueTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchMapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TI;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 329
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Transformer;

    .line 330
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 331
    new-array v2, v1, [Lorg/apache/commons/collections4/Transformer;

    .line 332
    new-array v1, v1, [Lorg/apache/commons/collections4/Predicate;

    const/4 v3, 0x0

    .line 334
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    .line 336
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/Transformer;

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections4/TransformerUtils;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    .line 327
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object and transformer map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/collections4/Predicate<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 302
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [Lorg/apache/commons/collections4/Transformer;

    aput-object p1, p0, v2

    .line 230
    invoke-static {v1, p0, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 276
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0
.end method
