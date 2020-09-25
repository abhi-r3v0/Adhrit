.class public final enum Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

.field public static final enum ADDED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

.field public static final enum REMOVED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "ADDED"

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->ADDED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    .line 24
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "REMOVED"

    invoke-direct {v0, v3, v2}, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->REMOVED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    .line 22
    sget-object v4, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->ADDED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;
    .locals 1

    .line 22
    const-class v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;
    .locals 1

    .line 22
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-virtual {v0}, [Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    return-object v0
.end method
