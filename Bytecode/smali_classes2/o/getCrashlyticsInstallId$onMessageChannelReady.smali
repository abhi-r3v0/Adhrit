.class final enum Lo/getCrashlyticsInstallId$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCrashlyticsInstallId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getCrashlyticsInstallId$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum INITIALIZING:Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum SENT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

.field public static final enum SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 717
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "INITIALIZING"

    invoke-direct {v0, v2, v1}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->INITIALIZING:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 722
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "RUN"

    invoke-direct {v0, v3, v2}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 725
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "SENT"

    invoke-direct {v0, v4, v3}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 728
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "COMPLETED"

    invoke-direct {v0, v5, v4}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 731
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "SENT_NEEDS_ABORT"

    invoke-direct {v0, v6, v5}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 733
    new-instance v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "NEEDS_ABORT"

    invoke-direct {v0, v7, v6}, Lo/getCrashlyticsInstallId$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/getCrashlyticsInstallId$onMessageChannelReady;

    .line 716
    sget-object v8, Lo/getCrashlyticsInstallId$onMessageChannelReady;->INITIALIZING:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    aput-object v8, v7, v1

    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->RUN:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    aput-object v1, v7, v2

    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    aput-object v1, v7, v3

    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->COMPLETED:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    aput-object v1, v7, v4

    sget-object v1, Lo/getCrashlyticsInstallId$onMessageChannelReady;->SENT_NEEDS_ABORT:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/getCrashlyticsInstallId$onMessageChannelReady;->$VALUES:[Lo/getCrashlyticsInstallId$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getCrashlyticsInstallId$onMessageChannelReady;
    .locals 1

    .line 716
    const-class v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getCrashlyticsInstallId$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getCrashlyticsInstallId$onMessageChannelReady;
    .locals 1

    .line 716
    sget-object v0, Lo/getCrashlyticsInstallId$onMessageChannelReady;->$VALUES:[Lo/getCrashlyticsInstallId$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getCrashlyticsInstallId$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getCrashlyticsInstallId$onMessageChannelReady;

    return-object v0
.end method
