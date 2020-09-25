.class public Lorg/apache/commons/collections4/functors/WhileClosure;
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
.field private static final serialVersionUID:J = -0x2b2ad9efdef5076cL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iDoLoop:Z

.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 75
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    .line 76
    iput-boolean p3, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    return-void
.end method

.method public static whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;Z)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lorg/apache/commons/collections4/functors/WhileClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/WhileClosure;-><init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)V

    return-object v0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Closure must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public isDoLoop()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    return v0
.end method
