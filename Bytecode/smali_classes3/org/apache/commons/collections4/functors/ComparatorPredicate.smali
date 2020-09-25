.class public Lorg/apache/commons/collections4/functors/ComparatorPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    }
.end annotation

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
.field private static final serialVersionUID:J = -0x19db72edcc0d6457L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->object:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparator:Ljava/util/Comparator;

    .line 144
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-void
.end method

.method public static comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
            ")",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 129
    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/ComparatorPredicate;-><init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)V

    return-object v0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Criterion must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Comparator must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->object:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 169
    sget-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$1;->$SwitchMap$org$apache$commons$collections4$functors$ComparatorPredicate$Criterion:[I

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    if-gtz p1, :cond_5

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The current criterion \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is invalid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ltz p1, :cond_5

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method
