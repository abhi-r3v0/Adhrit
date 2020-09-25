.class public final enum Lo/setInstallationUuid$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setInstallationUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setInstallationUuid$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/setInstallationUuid$onNavigationEvent;

.field public static final enum ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

.field public static final enum DESCENDING:Lo/setInstallationUuid$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lo/setInstallationUuid$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "ASCENDING"

    invoke-direct {v0, v2, v1}, Lo/setInstallationUuid$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setInstallationUuid$onNavigationEvent;->ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

    .line 70
    new-instance v0, Lo/setInstallationUuid$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "DESCENDING"

    invoke-direct {v0, v3, v2}, Lo/setInstallationUuid$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setInstallationUuid$onNavigationEvent;->DESCENDING:Lo/setInstallationUuid$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setInstallationUuid$onNavigationEvent;

    .line 68
    sget-object v4, Lo/setInstallationUuid$onNavigationEvent;->ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setInstallationUuid$onNavigationEvent;->$VALUES:[Lo/setInstallationUuid$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setInstallationUuid$onNavigationEvent;
    .locals 1

    .line 68
    const-class v0, Lo/setInstallationUuid$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setInstallationUuid$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/setInstallationUuid$onNavigationEvent;
    .locals 1

    .line 68
    sget-object v0, Lo/setInstallationUuid$onNavigationEvent;->$VALUES:[Lo/setInstallationUuid$onNavigationEvent;

    invoke-virtual {v0}, [Lo/setInstallationUuid$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setInstallationUuid$onNavigationEvent;

    return-object v0
.end method
