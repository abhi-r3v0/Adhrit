.class public final enum Lo/Utils$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/Utils$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/Utils$onNavigationEvent;

.field public static final enum CHILD_ADDED:Lo/Utils$onNavigationEvent;

.field public static final enum CHILD_CHANGED:Lo/Utils$onNavigationEvent;

.field public static final enum CHILD_MOVED:Lo/Utils$onNavigationEvent;

.field public static final enum CHILD_REMOVED:Lo/Utils$onNavigationEvent;

.field public static final enum VALUE:Lo/Utils$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lo/Utils$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "CHILD_REMOVED"

    invoke-direct {v0, v2, v1}, Lo/Utils$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    .line 24
    new-instance v0, Lo/Utils$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "CHILD_ADDED"

    invoke-direct {v0, v3, v2}, Lo/Utils$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    .line 25
    new-instance v0, Lo/Utils$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "CHILD_MOVED"

    invoke-direct {v0, v4, v3}, Lo/Utils$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Utils$onNavigationEvent;->CHILD_MOVED:Lo/Utils$onNavigationEvent;

    .line 26
    new-instance v0, Lo/Utils$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "CHILD_CHANGED"

    invoke-direct {v0, v5, v4}, Lo/Utils$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    .line 27
    new-instance v0, Lo/Utils$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "VALUE"

    invoke-direct {v0, v6, v5}, Lo/Utils$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/Utils$onNavigationEvent;

    .line 21
    sget-object v7, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    aput-object v7, v6, v1

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    aput-object v1, v6, v2

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_MOVED:Lo/Utils$onNavigationEvent;

    aput-object v1, v6, v3

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/Utils$onNavigationEvent;->$VALUES:[Lo/Utils$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/Utils$onNavigationEvent;
    .locals 1

    .line 21
    const-class v0, Lo/Utils$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/Utils$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/Utils$onNavigationEvent;
    .locals 1

    .line 21
    sget-object v0, Lo/Utils$onNavigationEvent;->$VALUES:[Lo/Utils$onNavigationEvent;

    invoke-virtual {v0}, [Lo/Utils$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/Utils$onNavigationEvent;

    return-object v0
.end method
