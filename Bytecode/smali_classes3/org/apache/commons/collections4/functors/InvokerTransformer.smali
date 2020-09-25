.class public Lorg/apache/commons/collections4/functors/InvokerTransformer;
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
.field private static final serialVersionUID:J = -0x78170094848331c8L


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iMethodName:Ljava/lang/String;

.field private final iParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 95
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    if-eqz p3, :cond_1

    .line 112
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    return-void
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

    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The method to invoke must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
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

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 75
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    .line 80
    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    .line 83
    :cond_4
    new-instance v0, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 81
    :cond_5
    :goto_1
    new-instance p1, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {p1, p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 73
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The method to invoke must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TO;"
        }
    .end annotation

    const-string v0, "\' on \'"

    const-string v1, "InvokerTransformer: The method \'"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 137
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' threw an exception"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 134
    :catch_1
    new-instance v2, Lorg/apache/commons/collections4/FunctorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be accessed"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :catch_2
    new-instance v2, Lorg/apache/commons/collections4/FunctorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
