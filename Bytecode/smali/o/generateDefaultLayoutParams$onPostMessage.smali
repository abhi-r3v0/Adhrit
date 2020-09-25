.class public final enum Lo/generateDefaultLayoutParams$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateDefaultLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/generateDefaultLayoutParams$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/generateDefaultLayoutParams$onPostMessage;

.field public static final enum extraCallback:Lo/generateDefaultLayoutParams$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/generateDefaultLayoutParams$onPostMessage;

.field private static final synthetic onNavigationEvent:[Lo/generateDefaultLayoutParams$onPostMessage;

.field public static final enum onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lo/generateDefaultLayoutParams$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "MASK_MODE_ADD"

    invoke-direct {v0, v2, v1}, Lo/generateDefaultLayoutParams$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateDefaultLayoutParams$onPostMessage;->ICustomTabsCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 9
    new-instance v0, Lo/generateDefaultLayoutParams$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "MASK_MODE_SUBTRACT"

    invoke-direct {v0, v3, v2}, Lo/generateDefaultLayoutParams$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateDefaultLayoutParams$onPostMessage;->onMessageChannelReady:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 10
    new-instance v0, Lo/generateDefaultLayoutParams$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "MASK_MODE_INTERSECT"

    invoke-direct {v0, v4, v3}, Lo/generateDefaultLayoutParams$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateDefaultLayoutParams$onPostMessage;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 11
    new-instance v0, Lo/generateDefaultLayoutParams$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "MASK_MODE_NONE"

    invoke-direct {v0, v5, v4}, Lo/generateDefaultLayoutParams$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateDefaultLayoutParams$onPostMessage;->extraCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/generateDefaultLayoutParams$onPostMessage;

    .line 7
    sget-object v6, Lo/generateDefaultLayoutParams$onPostMessage;->ICustomTabsCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    aput-object v6, v5, v1

    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->onMessageChannelReady:Lo/generateDefaultLayoutParams$onPostMessage;

    aput-object v1, v5, v2

    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/generateDefaultLayoutParams$onPostMessage;->onNavigationEvent:[Lo/generateDefaultLayoutParams$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/generateDefaultLayoutParams$onPostMessage;
    .locals 1

    .line 7
    const-class v0, Lo/generateDefaultLayoutParams$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/generateDefaultLayoutParams$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/generateDefaultLayoutParams$onPostMessage;
    .locals 1

    .line 7
    sget-object v0, Lo/generateDefaultLayoutParams$onPostMessage;->onNavigationEvent:[Lo/generateDefaultLayoutParams$onPostMessage;

    invoke-virtual {v0}, [Lo/generateDefaultLayoutParams$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/generateDefaultLayoutParams$onPostMessage;

    return-object v0
.end method
