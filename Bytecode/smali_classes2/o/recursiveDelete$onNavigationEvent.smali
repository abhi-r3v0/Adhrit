.class public final enum Lo/recursiveDelete$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recursiveDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/recursiveDelete$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/recursiveDelete$onNavigationEvent;

.field public static final enum LEFT:Lo/recursiveDelete$onNavigationEvent;

.field public static final enum RIGHT:Lo/recursiveDelete$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lo/recursiveDelete$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lo/recursiveDelete$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    .line 52
    new-instance v0, Lo/recursiveDelete$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lo/recursiveDelete$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recursiveDelete$onNavigationEvent;->RIGHT:Lo/recursiveDelete$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/recursiveDelete$onNavigationEvent;

    .line 50
    sget-object v4, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/recursiveDelete$onNavigationEvent;->$VALUES:[Lo/recursiveDelete$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/recursiveDelete$onNavigationEvent;
    .locals 1

    .line 50
    const-class v0, Lo/recursiveDelete$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/recursiveDelete$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/recursiveDelete$onNavigationEvent;
    .locals 1

    .line 50
    sget-object v0, Lo/recursiveDelete$onNavigationEvent;->$VALUES:[Lo/recursiveDelete$onNavigationEvent;

    invoke-virtual {v0}, [Lo/recursiveDelete$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/recursiveDelete$onNavigationEvent;

    return-object v0
.end method
