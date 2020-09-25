.class public final Lorg/apache/commons/collections4/functors/NullPredicate;
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

.field private static final serialVersionUID:J = 0x688d610bc4aab5e4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/NullPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/NullPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nullPredicate()Lorg/apache/commons/collections4/Predicate;
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

    .line 47
    sget-object v0, Lorg/apache/commons/collections4/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/collections4/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
