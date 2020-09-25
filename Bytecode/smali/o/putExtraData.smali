.class public final enum Lo/putExtraData;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/setContentId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/putExtraData;",
        ">;",
        "Lo/setContentId;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/putExtraData;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/putExtraData;

.field private static enum asInterface:Lo/putExtraData;

.field private static enum extraCallback:Lo/putExtraData;

.field private static enum onMessageChannelReady:Lo/putExtraData;

.field private static enum onNavigationEvent:Lo/putExtraData;

.field private static enum onPostMessage:Lo/putExtraData;

.field private static enum onRelationshipValidationResult:Lo/putExtraData;

.field private static enum onTransact:Lo/putExtraData;


# instance fields
.field private final asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lo/putExtraData;

    const/4 v1, 0x0

    const-string v2, "NO_RESTRICTION_PIN_REQUIRED"

    invoke-direct {v0, v2, v1, v1}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->onNavigationEvent:Lo/putExtraData;

    .line 9
    new-instance v0, Lo/putExtraData;

    const/4 v2, 0x1

    const-string v3, "NO_RESTRICTION"

    invoke-direct {v0, v3, v2, v2}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->onMessageChannelReady:Lo/putExtraData;

    .line 10
    new-instance v0, Lo/putExtraData;

    const/4 v3, 0x2

    const-string v4, "GOODS_SERVICES"

    invoke-direct {v0, v4, v3, v3}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->onPostMessage:Lo/putExtraData;

    .line 11
    new-instance v0, Lo/putExtraData;

    const/4 v4, 0x3

    const-string v5, "ATM_ONLY"

    invoke-direct {v0, v5, v4, v4}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->ICustomTabsCallback:Lo/putExtraData;

    .line 12
    new-instance v0, Lo/putExtraData;

    const/4 v5, 0x4

    const-string v6, "CASH_ONLY"

    invoke-direct {v0, v6, v5, v5}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->extraCallback:Lo/putExtraData;

    .line 13
    new-instance v0, Lo/putExtraData;

    const/4 v6, 0x5

    const-string v7, "GOODS_SERVICES_PIN_REQUIRED"

    invoke-direct {v0, v7, v6, v6}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->asInterface:Lo/putExtraData;

    .line 14
    new-instance v0, Lo/putExtraData;

    const/4 v7, 0x6

    const-string v8, "NO_RESTRICTION_PIN_IF_PED"

    invoke-direct {v0, v8, v7, v7}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->onRelationshipValidationResult:Lo/putExtraData;

    .line 15
    new-instance v0, Lo/putExtraData;

    const/4 v8, 0x7

    const-string v9, "GOODS_SERVICES_PIN_IF_PED"

    invoke-direct {v0, v9, v8, v8}, Lo/putExtraData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/putExtraData;->onTransact:Lo/putExtraData;

    const/16 v9, 0x8

    new-array v9, v9, [Lo/putExtraData;

    .line 6
    sget-object v10, Lo/putExtraData;->onNavigationEvent:Lo/putExtraData;

    aput-object v10, v9, v1

    sget-object v1, Lo/putExtraData;->onMessageChannelReady:Lo/putExtraData;

    aput-object v1, v9, v2

    sget-object v1, Lo/putExtraData;->onPostMessage:Lo/putExtraData;

    aput-object v1, v9, v3

    sget-object v1, Lo/putExtraData;->ICustomTabsCallback:Lo/putExtraData;

    aput-object v1, v9, v4

    sget-object v1, Lo/putExtraData;->extraCallback:Lo/putExtraData;

    aput-object v1, v9, v5

    sget-object v1, Lo/putExtraData;->asInterface:Lo/putExtraData;

    aput-object v1, v9, v6

    sget-object v1, Lo/putExtraData;->onRelationshipValidationResult:Lo/putExtraData;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lo/putExtraData;->ICustomTabsCallback$Stub:[Lo/putExtraData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lo/putExtraData;->asBinder:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/putExtraData;
    .locals 1

    .line 6
    const-class v0, Lo/putExtraData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/putExtraData;

    return-object p0
.end method

.method public static values()[Lo/putExtraData;
    .locals 1

    .line 6
    sget-object v0, Lo/putExtraData;->ICustomTabsCallback$Stub:[Lo/putExtraData;

    invoke-virtual {v0}, [Lo/putExtraData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/putExtraData;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 47
    iget v0, p0, Lo/putExtraData;->asBinder:I

    return v0
.end method
