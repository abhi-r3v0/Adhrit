.class public Lorg/apache/commons/collections4/functors/ChainedTransformer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30c797ec287a9704L


# instance fields
.field private final iTransformers:[Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>(Z[Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
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

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections4/Transformer;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/collections4/Transformer;

    .line 79
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Transformer;)V

    .line 80
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>(Z[Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformer collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs chainedTransformer([Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
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

    .line 51
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Transformer;)V

    .line 52
    array-length v0, p0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public getTransformers()[Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    invoke-interface {v3, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
