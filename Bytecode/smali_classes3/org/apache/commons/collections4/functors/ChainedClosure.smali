.class public Lorg/apache/commons/collections4/functors/ChainedClosure;
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
.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


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


# direct methods
.method private varargs constructor <init>(Z[Lorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 92
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lorg/apache/commons/collections4/Closure;)V

    return-void
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;
    .locals 5
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

    if-eqz p0, :cond_2

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections4/Closure;

    .line 77
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/Closure;

    add-int/lit8 v4, v2, 0x1

    .line 78
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 81
    new-instance p0, Lorg/apache/commons/collections4/functors/ChainedClosure;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lorg/apache/commons/collections4/Closure;)V

    return-object p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Closure collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs chainedClosure([Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
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

    .line 48
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 49
    array-length v0, p0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections4/Closure;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    invoke-interface {v3, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method
