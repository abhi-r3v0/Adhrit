.class public final enum Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field public static final enum Argument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field public static final enum ArrayArgument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field public static final enum MergeSet:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field public static final enum Set:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field public static final enum Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "Set"

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Set:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 48
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "MergeSet"

    invoke-direct {v0, v3, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->MergeSet:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 50
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "Update"

    invoke-direct {v0, v4, v3}, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 55
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "Argument"

    invoke-direct {v0, v5, v4}, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Argument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 60
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "ArrayArgument"

    invoke-direct {v0, v6, v5}, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->ArrayArgument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 44
    sget-object v7, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Set:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    aput-object v7, v6, v1

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->MergeSet:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    aput-object v1, v6, v2

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    aput-object v1, v6, v3

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Argument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    .locals 1

    .line 44
    const-class v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    .locals 1

    .line 44
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->$VALUES:[Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    return-object v0
.end method
