.class public final enum Lo/invalidateAnchorPositionInfo$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/invalidateAnchorPositionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/invalidateAnchorPositionInfo$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

.field private static enum extraCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

.field public static final enum onMessageChannelReady:Lo/invalidateAnchorPositionInfo$extraCallback;

.field private static final synthetic onNavigationEvent:[Lo/invalidateAnchorPositionInfo$extraCallback;

.field private static enum onPostMessage:Lo/invalidateAnchorPositionInfo$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lo/invalidateAnchorPositionInfo$extraCallback;

    const/4 v1, 0x0

    const-string v2, "CACHE_FULL"

    invoke-direct {v0, v2, v1}, Lo/invalidateAnchorPositionInfo$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->onMessageChannelReady:Lo/invalidateAnchorPositionInfo$extraCallback;

    .line 50
    new-instance v0, Lo/invalidateAnchorPositionInfo$extraCallback;

    const/4 v2, 0x1

    const-string v3, "CONTENT_STALE"

    invoke-direct {v0, v3, v2}, Lo/invalidateAnchorPositionInfo$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->ICustomTabsCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

    .line 51
    new-instance v0, Lo/invalidateAnchorPositionInfo$extraCallback;

    const/4 v3, 0x2

    const-string v4, "USER_FORCED"

    invoke-direct {v0, v4, v3}, Lo/invalidateAnchorPositionInfo$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->extraCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

    .line 52
    new-instance v0, Lo/invalidateAnchorPositionInfo$extraCallback;

    const/4 v4, 0x3

    const-string v5, "CACHE_MANAGER_TRIMMED"

    invoke-direct {v0, v5, v4}, Lo/invalidateAnchorPositionInfo$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->onPostMessage:Lo/invalidateAnchorPositionInfo$extraCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/invalidateAnchorPositionInfo$extraCallback;

    .line 48
    sget-object v6, Lo/invalidateAnchorPositionInfo$extraCallback;->onMessageChannelReady:Lo/invalidateAnchorPositionInfo$extraCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/invalidateAnchorPositionInfo$extraCallback;->ICustomTabsCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/invalidateAnchorPositionInfo$extraCallback;->extraCallback:Lo/invalidateAnchorPositionInfo$extraCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/invalidateAnchorPositionInfo$extraCallback;->onNavigationEvent:[Lo/invalidateAnchorPositionInfo$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/invalidateAnchorPositionInfo$extraCallback;
    .locals 1

    .line 48
    const-class v0, Lo/invalidateAnchorPositionInfo$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/invalidateAnchorPositionInfo$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/invalidateAnchorPositionInfo$extraCallback;
    .locals 1

    .line 48
    sget-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->onNavigationEvent:[Lo/invalidateAnchorPositionInfo$extraCallback;

    invoke-virtual {v0}, [Lo/invalidateAnchorPositionInfo$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/invalidateAnchorPositionInfo$extraCallback;

    return-object v0
.end method
