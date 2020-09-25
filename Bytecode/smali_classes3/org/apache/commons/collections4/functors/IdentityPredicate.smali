.class public final Lorg/apache/commons/collections4/functors/IdentityPredicate;
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
.field private static final serialVersionUID:J = -0x13f65150348d79dL


# instance fields
.field private final iValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-void
.end method

.method public static identityPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;
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

    .line 48
    invoke-static {}, Lorg/apache/commons/collections4/functors/NullPredicate;->nullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/IdentityPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/IdentityPredicate;-><init>(Ljava/lang/Object;)V

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

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
