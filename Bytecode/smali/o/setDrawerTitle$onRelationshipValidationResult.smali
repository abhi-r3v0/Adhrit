.class public final enum Lo/setDrawerTitle$onRelationshipValidationResult;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setDrawerTitle$onRelationshipValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

.field public static final enum extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

.field public static final enum onMessageChannelReady:Lo/setDrawerTitle$onRelationshipValidationResult;

.field private static enum onNavigationEvent:Lo/setDrawerTitle$onRelationshipValidationResult;

.field private static final synthetic onPostMessage:[Lo/setDrawerTitle$onRelationshipValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1943
    new-instance v0, Lo/setDrawerTitle$onRelationshipValidationResult;

    const/4 v1, 0x0

    const-string v2, "FIT_CENTER"

    invoke-direct {v0, v2, v1}, Lo/setDrawerTitle$onRelationshipValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onRelationshipValidationResult;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 1950
    new-instance v0, Lo/setDrawerTitle$onRelationshipValidationResult;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v2}, Lo/setDrawerTitle$onRelationshipValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onRelationshipValidationResult;->onNavigationEvent:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 1958
    new-instance v0, Lo/setDrawerTitle$onRelationshipValidationResult;

    const/4 v3, 0x2

    const-string v4, "CENTER_CROP"

    invoke-direct {v0, v4, v3}, Lo/setDrawerTitle$onRelationshipValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 1968
    new-instance v0, Lo/setDrawerTitle$onRelationshipValidationResult;

    const/4 v4, 0x3

    const-string v5, "CENTER_INSIDE"

    invoke-direct {v0, v5, v4}, Lo/setDrawerTitle$onRelationshipValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onRelationshipValidationResult;->onMessageChannelReady:Lo/setDrawerTitle$onRelationshipValidationResult;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 1936
    sget-object v6, Lo/setDrawerTitle$onRelationshipValidationResult;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    aput-object v6, v5, v1

    sget-object v1, Lo/setDrawerTitle$onRelationshipValidationResult;->onNavigationEvent:Lo/setDrawerTitle$onRelationshipValidationResult;

    aput-object v1, v5, v2

    sget-object v1, Lo/setDrawerTitle$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setDrawerTitle$onRelationshipValidationResult;->onPostMessage:[Lo/setDrawerTitle$onRelationshipValidationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1936
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setDrawerTitle$onRelationshipValidationResult;
    .locals 1

    .line 1936
    const-class v0, Lo/setDrawerTitle$onRelationshipValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setDrawerTitle$onRelationshipValidationResult;

    return-object p0
.end method

.method public static values()[Lo/setDrawerTitle$onRelationshipValidationResult;
    .locals 1

    .line 1936
    sget-object v0, Lo/setDrawerTitle$onRelationshipValidationResult;->onPostMessage:[Lo/setDrawerTitle$onRelationshipValidationResult;

    invoke-virtual {v0}, [Lo/setDrawerTitle$onRelationshipValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setDrawerTitle$onRelationshipValidationResult;

    return-object v0
.end method
