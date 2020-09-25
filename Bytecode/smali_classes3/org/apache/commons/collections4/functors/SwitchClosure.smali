.class public Lorg/apache/commons/collections4/functors/SwitchClosure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Closure;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iDefault:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 122
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    if-eqz p1, :cond_1

    .line 123
    invoke-static {p3}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    if-nez p4, :cond_2

    .line 124
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-void
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 7
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

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 94
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Closure;

    .line 95
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    .line 99
    :cond_1
    new-array v2, v1, [Lorg/apache/commons/collections4/Closure;

    .line 100
    new-array v1, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 102
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/collections4/Predicate;

    aput-object v6, v1, v4

    .line 104
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections4/Closure;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    new-instance p0, Lorg/apache/commons/collections4/functors/SwitchClosure;

    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-object p0

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate and closure map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 2
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

    .line 59
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 60
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 61
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 64
    array-length v0, p0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 65
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2

    .line 67
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and closure arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 147
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public getClosures()[Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method
