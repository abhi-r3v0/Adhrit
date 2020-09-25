.class public Lorg/apache/commons/collections4/ClosureUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/TransformerClosure;->transformerClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;->chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static varargs chainedClosure([Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;->chainedClosure([Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static doWhileClosure(Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 147
    invoke-static {p1, p0, v0}, Lorg/apache/commons/collections4/functors/WhileClosure;->whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionClosure;->exceptionClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 114
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/ForClosure;->forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 238
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 258
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static invokerClosure(Ljava/lang/String;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/ClosureUtils;->asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static invokerClosure(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 185
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/ClosureUtils;->asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static nopClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/collections4/Predicate<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 332
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 281
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 307
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchMapClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TE;",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 358
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Closure;

    .line 359
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 360
    new-array v2, v1, [Lorg/apache/commons/collections4/Closure;

    .line 361
    new-array v1, v1, [Lorg/apache/commons/collections4/Predicate;

    const/4 v3, 0x0

    .line 363
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

    .line 364
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v5

    aput-object v5, v1, v3

    .line 365
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/Closure;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections4/ClosureUtils;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0

    .line 356
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object and closure map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/WhileClosure;->whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method
