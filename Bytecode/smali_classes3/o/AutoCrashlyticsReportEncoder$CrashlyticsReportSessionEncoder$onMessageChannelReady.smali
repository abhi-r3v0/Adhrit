.class public final enum Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

.field public static final enum ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

.field public static final enum MODIFIED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

.field public static final enum REMOVED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "ADDED"

    invoke-direct {v0, v2, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    .line 43
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "MODIFIED"

    invoke-direct {v0, v3, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->MODIFIED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    .line 48
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "REMOVED"

    invoke-direct {v0, v4, v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->REMOVED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    .line 39
    sget-object v5, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->MODIFIED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->$VALUES:[Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

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

.method public static valueOf(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
    .locals 1

    .line 39
    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
    .locals 1

    .line 39
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->$VALUES:[Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object v0
.end method
