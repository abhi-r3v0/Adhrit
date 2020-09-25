.class public final enum Lo/AutoValue_CrashlyticsReport_CustomAttribute;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AutoValue_CrashlyticsReport_CustomAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/AutoValue_CrashlyticsReport_CustomAttribute;

.field public static final enum CACHE:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

.field public static final enum DEFAULT:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

.field public static final enum SERVER:Lo/AutoValue_CrashlyticsReport_CustomAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->DEFAULT:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    .line 36
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lo/AutoValue_CrashlyticsReport_CustomAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->SERVER:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    .line 45
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    const/4 v3, 0x2

    const-string v4, "CACHE"

    invoke-direct {v0, v4, v3}, Lo/AutoValue_CrashlyticsReport_CustomAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->CACHE:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    .line 23
    sget-object v5, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->DEFAULT:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    aput-object v5, v4, v1

    sget-object v1, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->SERVER:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->$VALUES:[Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_CustomAttribute;
    .locals 1

    .line 23
    const-class v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    return-object p0
.end method

.method public static values()[Lo/AutoValue_CrashlyticsReport_CustomAttribute;
    .locals 1

    .line 23
    sget-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->$VALUES:[Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    invoke-virtual {v0}, [Lo/AutoValue_CrashlyticsReport_CustomAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    return-object v0
.end method
