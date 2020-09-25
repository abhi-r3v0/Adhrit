.class public final Lorg/apache/commons/collections4/functors/EqualPredicate;
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
.field private static final serialVersionUID:J = 0x4e2f2937b0cc6c91L


# instance fields
.field private final equator:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/collections4/Equator<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->equator:Lorg/apache/commons/collections4/Equator;

    return-void
.end method

.method public static equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/EqualPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static equalPredicate(Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/collections4/Equator<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 71
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/EqualPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/EqualPredicate;-><init>(Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)V

    return-object v0
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->equator:Lorg/apache/commons/collections4/Equator;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
