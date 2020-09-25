.class public final enum Lo/isCrashed$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCrashed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isCrashed$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/isCrashed$onNavigationEvent;

.field public static final enum ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

.field public static final enum ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

.field public static final enum EQUAL:Lo/isCrashed$onNavigationEvent;

.field public static final enum GREATER_THAN:Lo/isCrashed$onNavigationEvent;

.field public static final enum GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

.field public static final enum IN:Lo/isCrashed$onNavigationEvent;

.field public static final enum LESS_THAN:Lo/isCrashed$onNavigationEvent;

.field public static final enum LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

.field public static final enum NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

.field public static final enum NOT_IN:Lo/isCrashed$onNavigationEvent;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "LESS_THAN"

    const-string v3, "<"

    invoke-direct {v0, v2, v1, v3}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    .line 24
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN_OR_EQUAL"

    const-string v4, "<="

    invoke-direct {v0, v3, v2, v4}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    .line 25
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "EQUAL"

    const-string v5, "=="

    invoke-direct {v0, v4, v3, v5}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    .line 26
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "NOT_EQUAL"

    const-string v6, "!="

    invoke-direct {v0, v5, v4, v6}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    .line 27
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "GREATER_THAN"

    const-string v7, ">"

    invoke-direct {v0, v6, v5, v7}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    .line 28
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v6, 0x5

    const-string v7, "GREATER_THAN_OR_EQUAL"

    const-string v8, ">="

    invoke-direct {v0, v7, v6, v8}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    .line 29
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v7, 0x6

    const-string v8, "ARRAY_CONTAINS"

    const-string v9, "array_contains"

    invoke-direct {v0, v8, v7, v9}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    .line 30
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/4 v8, 0x7

    const-string v9, "ARRAY_CONTAINS_ANY"

    const-string v10, "array_contains_any"

    invoke-direct {v0, v9, v8, v10}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    .line 31
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/16 v9, 0x8

    const-string v10, "IN"

    const-string v11, "in"

    invoke-direct {v0, v10, v9, v11}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    .line 32
    new-instance v0, Lo/isCrashed$onNavigationEvent;

    const/16 v10, 0x9

    const-string v11, "NOT_IN"

    const-string v12, "not_in"

    invoke-direct {v0, v11, v10, v12}, Lo/isCrashed$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    const/16 v11, 0xa

    new-array v11, v11, [Lo/isCrashed$onNavigationEvent;

    .line 22
    sget-object v12, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    aput-object v12, v11, v1

    sget-object v1, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v2

    sget-object v1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v3

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v4

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v5

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v6

    sget-object v1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v7

    sget-object v1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v8

    sget-object v1, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/isCrashed$onNavigationEvent;->$VALUES:[Lo/isCrashed$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lo/isCrashed$onNavigationEvent;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isCrashed$onNavigationEvent;
    .locals 1

    .line 22
    const-class v0, Lo/isCrashed$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isCrashed$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/isCrashed$onNavigationEvent;
    .locals 1

    .line 22
    sget-object v0, Lo/isCrashed$onNavigationEvent;->$VALUES:[Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v0}, [Lo/isCrashed$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isCrashed$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/isCrashed$onNavigationEvent;->text:Ljava/lang/String;

    return-object v0
.end method
