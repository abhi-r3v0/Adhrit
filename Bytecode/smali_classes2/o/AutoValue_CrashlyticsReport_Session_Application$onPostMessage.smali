.class public final enum Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

.field public static final enum LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

.field public static final enum LIMIT_TO_LAST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "LIMIT_TO_FIRST"

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    .line 41
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "LIMIT_TO_LAST"

    invoke-direct {v0, v3, v2}, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_LAST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    .line 39
    sget-object v4, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;
    .locals 1

    .line 39
    const-class v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;
    .locals 1

    .line 39
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    invoke-virtual {v0}, [Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    return-object v0
.end method
