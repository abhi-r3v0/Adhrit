.class public final Lorg/apache/commons/collections4/functors/ExceptionTransformer;
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
.field public static final INSTANCE:Lorg/apache/commons/collections4/Transformer;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 71
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method


# virtual methods
.method public final transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 67
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "ExceptionTransformer invoked"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
