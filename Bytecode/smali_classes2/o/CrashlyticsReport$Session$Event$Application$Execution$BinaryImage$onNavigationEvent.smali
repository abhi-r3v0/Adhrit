.class public final enum Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

.field public static final enum REACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

.field public static final enum UNREACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "UNREACHABLE"

    invoke-direct {v0, v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->UNREACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    .line 23
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "REACHABLE"

    invoke-direct {v0, v3, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->REACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    .line 21
    sget-object v4, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->UNREACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

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

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;
    .locals 1

    .line 21
    const-class v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;
    .locals 1

    .line 21
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    return-object v0
.end method
