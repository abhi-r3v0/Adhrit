.class final enum Lo/setLastBaselineToBottomHeight$onTransact;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setLastBaselineToBottomHeight$onTransact;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

.field public static final enum extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

.field public static final enum onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

.field public static final enum onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

.field public static final enum onPostMessage:Lo/setLastBaselineToBottomHeight$onTransact;

.field public static final enum onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

.field private static final synthetic onTransact:[Lo/setLastBaselineToBottomHeight$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 740
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v1, 0x0

    const-string v2, "INITIALIZE"

    invoke-direct {v0, v2, v1}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 742
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v2, 0x1

    const-string v3, "RESOURCE_CACHE"

    invoke-direct {v0, v3, v2}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 744
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v3, 0x2

    const-string v4, "DATA_CACHE"

    invoke-direct {v0, v4, v3}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 746
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v4, 0x3

    const-string v5, "SOURCE"

    invoke-direct {v0, v5, v4}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 748
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v5, 0x4

    const-string v6, "ENCODE"

    invoke-direct {v0, v6, v5}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onPostMessage:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 750
    new-instance v0, Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v6, 0x5

    const-string v7, "FINISHED"

    invoke-direct {v0, v7, v6}, Lo/setLastBaselineToBottomHeight$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/setLastBaselineToBottomHeight$onTransact;

    .line 738
    sget-object v8, Lo/setLastBaselineToBottomHeight$onTransact;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

    aput-object v8, v7, v1

    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    aput-object v1, v7, v2

    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    aput-object v1, v7, v3

    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    aput-object v1, v7, v4

    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->onPostMessage:Lo/setLastBaselineToBottomHeight$onTransact;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/setLastBaselineToBottomHeight$onTransact;->onTransact:[Lo/setLastBaselineToBottomHeight$onTransact;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 738
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setLastBaselineToBottomHeight$onTransact;
    .locals 1

    .line 738
    const-class v0, Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p0
.end method

.method public static values()[Lo/setLastBaselineToBottomHeight$onTransact;
    .locals 1

    .line 738
    sget-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onTransact:[Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v0}, [Lo/setLastBaselineToBottomHeight$onTransact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setLastBaselineToBottomHeight$onTransact;

    return-object v0
.end method
