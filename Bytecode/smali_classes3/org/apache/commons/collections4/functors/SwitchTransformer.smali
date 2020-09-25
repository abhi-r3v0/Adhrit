.class public Lorg/apache/commons/collections4/functors/SwitchTransformer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TI;TO;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x58e1373f7c2edd14L


# instance fields
.field private final iDefault:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;"
        }
    .end annotation
.end field

.field private final iTransformers:[Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 133
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    if-eqz p1, :cond_1

    .line 134
    invoke-static {p3}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    if-nez p4, :cond_2

    .line 135
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;+",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 98
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Transformer;

    .line 103
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 108
    :cond_2
    new-array v2, v1, [Lorg/apache/commons/collections4/Transformer;

    .line 109
    new-array v1, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 112
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/collections4/Predicate;

    aput-object v6, v1, v4

    .line 114
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections4/Transformer;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_3
    new-instance p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object p0

    .line 96
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate and transformer map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
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

    .line 60
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 61
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Transformer;)V

    .line 62
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 65
    array-length v0, p0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 66
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2

    .line 69
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and transformer arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public getTransformers()[Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 162
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
