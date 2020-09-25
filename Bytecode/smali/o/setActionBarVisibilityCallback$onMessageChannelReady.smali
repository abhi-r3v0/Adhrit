.class public final enum Lo/setActionBarVisibilityCallback$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setActionBarVisibilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setActionBarVisibilityCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/setActionBarVisibilityCallback$onMessageChannelReady;

.field private static enum extraCallback:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/setActionBarVisibilityCallback$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/setActionBarVisibilityCallback$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 31
    new-instance v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lo/setActionBarVisibilityCallback$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 32
    new-instance v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "INVERT"

    invoke-direct {v0, v4, v3}, Lo/setActionBarVisibilityCallback$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onPostMessage:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 33
    new-instance v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lo/setActionBarVisibilityCallback$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->extraCallback:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 29
    sget-object v6, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    aput-object v6, v5, v1

    sget-object v1, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    aput-object v1, v5, v2

    sget-object v1, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onPostMessage:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->ICustomTabsCallback:[Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setActionBarVisibilityCallback$onMessageChannelReady;
    .locals 1

    .line 29
    const-class v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setActionBarVisibilityCallback$onMessageChannelReady;
    .locals 1

    .line 29
    sget-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->ICustomTabsCallback:[Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setActionBarVisibilityCallback$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    return-object v0
.end method
