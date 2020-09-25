.class public final Lorg/apache/commons/collections4/functors/TransformedPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/functors/PredicateDecorator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4da94f0ac59e76baL


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final iTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 72
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method public static transformedPredicate(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
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

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lorg/apache/commons/collections4/functors/TransformedPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/TransformedPredicate;-><init>(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate to call must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The transformer to call must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    .line 95
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method
