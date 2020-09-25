.class public final enum Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnknownObjectBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const/4 v1, 0x0

    const-string v2, "BEFORE"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const/4 v2, 0x1

    const-string v3, "AFTER"

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const/4 v3, 0x2

    const-string v4, "EXCEPTION"

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 58
    sget-object v5, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    aput-object v5, v4, v1

    sget-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 58
    const-class v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method
