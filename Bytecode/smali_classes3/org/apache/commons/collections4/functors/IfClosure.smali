.class public Lorg/apache/commons/collections4/functors/IfClosure;
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
.field private final iFalseClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iTrueClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/functors/IfClosure;-><init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 109
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections4/Closure;

    .line 110
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
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

    .line 57
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
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

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/functors/IfClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/IfClosure;-><init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Closures must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
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

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public getFalseClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections4/Closure;

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

    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public getTrueClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method
