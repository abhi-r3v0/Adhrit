.class public final enum Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/functors/ComparatorPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Criterion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum LESS_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 84
    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v1, 0x0

    const-string v2, "EQUAL"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v2, 0x1

    const-string v3, "GREATER"

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v3, 0x2

    const-string v4, "LESS"

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v4, 0x3

    const-string v5, "GREATER_OR_EQUAL"

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v5, 0x4

    const-string v6, "LESS_OR_EQUAL"

    invoke-direct {v0, v6, v5}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v6, 0x5

    new-array v6, v6, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    .line 83
    sget-object v7, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v7, v6, v1

    sget-object v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v1, v6, v2

    sget-object v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v1, v6, v3

    sget-object v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->$VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .locals 1

    .line 83
    const-class v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .locals 1

    .line 83
    sget-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->$VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-object v0
.end method
