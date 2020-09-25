.class public final enum Lo/setActionBarVisibilityCallback$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setActionBarVisibilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setActionBarVisibilityCallback$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum asBinder:Lo/setActionBarVisibilityCallback$onPostMessage;

.field private static final synthetic asInterface:[Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum extraCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum onNavigationEvent:Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/setActionBarVisibilityCallback$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 20
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "PRE_COMP"

    invoke-direct {v0, v2, v1}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 21
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "SOLID"

    invoke-direct {v0, v3, v2}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 22
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "IMAGE"

    invoke-direct {v0, v4, v3}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->extraCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 23
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "NULL"

    invoke-direct {v0, v5, v4}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->onMessageChannelReady:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 24
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "SHAPE"

    invoke-direct {v0, v6, v5}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->ICustomTabsCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 25
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "TEXT"

    invoke-direct {v0, v7, v6}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->asBinder:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 26
    new-instance v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN"

    invoke-direct {v0, v8, v7}, Lo/setActionBarVisibilityCallback$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->onRelationshipValidationResult:Lo/setActionBarVisibilityCallback$onPostMessage;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 19
    sget-object v9, Lo/setActionBarVisibilityCallback$onPostMessage;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v9, v8, v1

    sget-object v1, Lo/setActionBarVisibilityCallback$onPostMessage;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v1, v8, v2

    sget-object v1, Lo/setActionBarVisibilityCallback$onPostMessage;->extraCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v1, v8, v3

    sget-object v1, Lo/setActionBarVisibilityCallback$onPostMessage;->onMessageChannelReady:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v1, v8, v4

    sget-object v1, Lo/setActionBarVisibilityCallback$onPostMessage;->ICustomTabsCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v1, v8, v5

    sget-object v1, Lo/setActionBarVisibilityCallback$onPostMessage;->asBinder:Lo/setActionBarVisibilityCallback$onPostMessage;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/setActionBarVisibilityCallback$onPostMessage;->asInterface:[Lo/setActionBarVisibilityCallback$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setActionBarVisibilityCallback$onPostMessage;
    .locals 1

    .line 19
    const-class v0, Lo/setActionBarVisibilityCallback$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setActionBarVisibilityCallback$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/setActionBarVisibilityCallback$onPostMessage;
    .locals 1

    .line 19
    sget-object v0, Lo/setActionBarVisibilityCallback$onPostMessage;->asInterface:[Lo/setActionBarVisibilityCallback$onPostMessage;

    invoke-virtual {v0}, [Lo/setActionBarVisibilityCallback$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setActionBarVisibilityCallback$onPostMessage;

    return-object v0
.end method
