.class final enum Lo/startTracking$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/startTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/startTracking$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/startTracking$extraCallback;

.field private static final synthetic extraCallback:[Lo/startTracking$extraCallback;

.field public static final enum onMessageChannelReady:Lo/startTracking$extraCallback;

.field public static final enum onNavigationEvent:Lo/startTracking$extraCallback;

.field public static final enum onPostMessage:Lo/startTracking$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Lo/startTracking$extraCallback;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lo/startTracking$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/startTracking$extraCallback;->onNavigationEvent:Lo/startTracking$extraCallback;

    .line 54
    new-instance v0, Lo/startTracking$extraCallback;

    const/4 v2, 0x1

    const-string v3, "QUEUED"

    invoke-direct {v0, v3, v2}, Lo/startTracking$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/startTracking$extraCallback;->ICustomTabsCallback:Lo/startTracking$extraCallback;

    .line 55
    new-instance v0, Lo/startTracking$extraCallback;

    const/4 v3, 0x2

    const-string v4, "RUNNING"

    invoke-direct {v0, v4, v3}, Lo/startTracking$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/startTracking$extraCallback;->onMessageChannelReady:Lo/startTracking$extraCallback;

    .line 56
    new-instance v0, Lo/startTracking$extraCallback;

    const/4 v4, 0x3

    const-string v5, "RUNNING_AND_PENDING"

    invoke-direct {v0, v5, v4}, Lo/startTracking$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/startTracking$extraCallback;->onPostMessage:Lo/startTracking$extraCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/startTracking$extraCallback;

    .line 51
    sget-object v6, Lo/startTracking$extraCallback;->onNavigationEvent:Lo/startTracking$extraCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/startTracking$extraCallback;->ICustomTabsCallback:Lo/startTracking$extraCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/startTracking$extraCallback;->onMessageChannelReady:Lo/startTracking$extraCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/startTracking$extraCallback;->extraCallback:[Lo/startTracking$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/startTracking$extraCallback;
    .locals 1

    .line 51
    const-class v0, Lo/startTracking$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/startTracking$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/startTracking$extraCallback;
    .locals 1

    .line 51
    sget-object v0, Lo/startTracking$extraCallback;->extraCallback:[Lo/startTracking$extraCallback;

    invoke-virtual {v0}, [Lo/startTracking$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/startTracking$extraCallback;

    return-object v0
.end method
