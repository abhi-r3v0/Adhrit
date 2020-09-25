.class public final enum Lo/setCurrentControllerInfo$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCurrentControllerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setCurrentControllerInfo$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

.field public static final enum extraCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/setCurrentControllerInfo$onNavigationEvent;

.field private static final synthetic onPostMessage:[Lo/setCurrentControllerInfo$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 493
    new-instance v0, Lo/setCurrentControllerInfo$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Lo/setCurrentControllerInfo$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setCurrentControllerInfo$onNavigationEvent;->extraCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    .line 498
    new-instance v0, Lo/setCurrentControllerInfo$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "TRUNCATE"

    invoke-direct {v0, v3, v2}, Lo/setCurrentControllerInfo$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setCurrentControllerInfo$onNavigationEvent;->onMessageChannelReady:Lo/setCurrentControllerInfo$onNavigationEvent;

    .line 503
    new-instance v0, Lo/setCurrentControllerInfo$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "WRITE_AHEAD_LOGGING"

    invoke-direct {v0, v4, v3}, Lo/setCurrentControllerInfo$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setCurrentControllerInfo$onNavigationEvent;->ICustomTabsCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setCurrentControllerInfo$onNavigationEvent;

    .line 484
    sget-object v5, Lo/setCurrentControllerInfo$onNavigationEvent;->extraCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    aput-object v5, v4, v1

    sget-object v1, Lo/setCurrentControllerInfo$onNavigationEvent;->onMessageChannelReady:Lo/setCurrentControllerInfo$onNavigationEvent;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setCurrentControllerInfo$onNavigationEvent;->onPostMessage:[Lo/setCurrentControllerInfo$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static onPostMessage(Landroid/app/ActivityManager;)Z
    .locals 2

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setCurrentControllerInfo$onNavigationEvent;
    .locals 1

    .line 484
    const-class v0, Lo/setCurrentControllerInfo$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setCurrentControllerInfo$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/setCurrentControllerInfo$onNavigationEvent;
    .locals 1

    .line 484
    sget-object v0, Lo/setCurrentControllerInfo$onNavigationEvent;->onPostMessage:[Lo/setCurrentControllerInfo$onNavigationEvent;

    invoke-virtual {v0}, [Lo/setCurrentControllerInfo$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setCurrentControllerInfo$onNavigationEvent;

    return-object v0
.end method
