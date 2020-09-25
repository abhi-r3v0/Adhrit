.class public final enum Lo/saveTrackedQueryKeys$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveTrackedQueryKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/saveTrackedQueryKeys$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

.field public static final enum extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

.field public static final enum onMessageChannelReady:Lo/saveTrackedQueryKeys$extraCallback;

.field private static final synthetic onNavigationEvent:[Lo/saveTrackedQueryKeys$extraCallback;

.field public static final enum onPostMessage:Lo/saveTrackedQueryKeys$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lo/saveTrackedQueryKeys$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    .line 47
    new-instance v0, Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v2, 0x1

    const-string v3, "INFO"

    invoke-direct {v0, v3, v2}, Lo/saveTrackedQueryKeys$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    .line 48
    new-instance v0, Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v3, 0x2

    const-string v4, "WARNING"

    invoke-direct {v0, v4, v3}, Lo/saveTrackedQueryKeys$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/saveTrackedQueryKeys$extraCallback;->onPostMessage:Lo/saveTrackedQueryKeys$extraCallback;

    .line 49
    new-instance v0, Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lo/saveTrackedQueryKeys$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/saveTrackedQueryKeys$extraCallback;->onMessageChannelReady:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/saveTrackedQueryKeys$extraCallback;

    .line 45
    sget-object v6, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->onPostMessage:Lo/saveTrackedQueryKeys$extraCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/saveTrackedQueryKeys$extraCallback;->onNavigationEvent:[Lo/saveTrackedQueryKeys$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/saveTrackedQueryKeys$extraCallback;
    .locals 1

    .line 45
    const-class v0, Lo/saveTrackedQueryKeys$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/saveTrackedQueryKeys$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/saveTrackedQueryKeys$extraCallback;
    .locals 1

    .line 45
    sget-object v0, Lo/saveTrackedQueryKeys$extraCallback;->onNavigationEvent:[Lo/saveTrackedQueryKeys$extraCallback;

    invoke-virtual {v0}, [Lo/saveTrackedQueryKeys$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/saveTrackedQueryKeys$extraCallback;

    return-object v0
.end method
