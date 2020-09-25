.class public Lorg/apache/commons/collections4/functors/InstantiateTransformer;
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
        "Ljava/lang/Class<",
        "+TT;>;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;

.field private static final serialVersionUID:J = 0x348bf47fa486d03bL


# instance fields
.field private final iArgs:[Ljava/lang/Object;

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
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    return-void
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

    .line 54
    sget-object v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
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

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 67
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    .line 73
    array-length v0, p0

    if-nez v0, :cond_4

    goto :goto_1

    .line 76
    :cond_4
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 74
    :cond_5
    :goto_1
    new-instance p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {p0}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>()V

    return-object p0
.end method


# virtual methods
.method public transform(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    .line 112
    :cond_0
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "InstantiateTransformer: Input object was not an instanceof Class, it was a null object"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateTransformer: Constructor threw an exception"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :goto_1
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateTransformer: Constructor must be public"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 120
    :goto_2
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateTransformer: InstantiationException"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :catch_3
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "InstantiateTransformer: The constructor must exist and be public "

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->transform(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
