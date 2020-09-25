.class public abstract Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/functors/PredicateDecorator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2af2924fb7a8adbfL


# instance fields
.field protected final iPredicates:[Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    return-void
.end method


# virtual methods
.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method
