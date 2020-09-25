.class public final Lorg/apache/commons/collections4/functors/ExceptionClosure;
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
.field public static final INSTANCE:Lorg/apache/commons/collections4/Closure;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionClosure;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 65
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "ExceptionClosure invoked"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
