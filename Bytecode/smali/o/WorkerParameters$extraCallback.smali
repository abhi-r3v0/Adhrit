.class final enum Lo/WorkerParameters$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WorkerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/WorkerParameters$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/WorkerParameters$extraCallback;

.field public static final enum onMessageChannelReady:Lo/WorkerParameters$extraCallback;

.field private static final synthetic onNavigationEvent:[Lo/WorkerParameters$extraCallback;

.field public static final enum onPostMessage:Lo/WorkerParameters$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lo/WorkerParameters$extraCallback;

    const/4 v1, 0x0

    const-string v2, "IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Lo/WorkerParameters$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    .line 38
    new-instance v0, Lo/WorkerParameters$extraCallback;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lo/WorkerParameters$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/WorkerParameters$extraCallback;->onPostMessage:Lo/WorkerParameters$extraCallback;

    .line 41
    new-instance v0, Lo/WorkerParameters$extraCallback;

    const/4 v3, 0x2

    const-string v4, "FAILURE"

    invoke-direct {v0, v4, v3}, Lo/WorkerParameters$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/WorkerParameters$extraCallback;->extraCallback:Lo/WorkerParameters$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/WorkerParameters$extraCallback;

    .line 33
    sget-object v5, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/WorkerParameters$extraCallback;->onPostMessage:Lo/WorkerParameters$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/WorkerParameters$extraCallback;->onNavigationEvent:[Lo/WorkerParameters$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/WorkerParameters$extraCallback;
    .locals 1

    .line 33
    const-class v0, Lo/WorkerParameters$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/WorkerParameters$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/WorkerParameters$extraCallback;
    .locals 1

    .line 33
    sget-object v0, Lo/WorkerParameters$extraCallback;->onNavigationEvent:[Lo/WorkerParameters$extraCallback;

    invoke-virtual {v0}, [Lo/WorkerParameters$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/WorkerParameters$extraCallback;

    return-object v0
.end method
