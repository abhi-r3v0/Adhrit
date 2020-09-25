.class public final Lorg/apache/commons/collections4/functors/ExceptionPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Predicate;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 70
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 66
    new-instance p1, Lorg/apache/commons/collections4/FunctorException;

    const-string v0, "ExceptionPredicate invoked"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
