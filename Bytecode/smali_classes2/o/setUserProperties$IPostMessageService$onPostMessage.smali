.class public final enum Lo/setUserProperties$IPostMessageService$onPostMessage;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$IPostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$IPostMessageService$onPostMessage;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final enum ICustomTabsCallback$Stub:Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final asBinder:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$IPostMessageService$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic asInterface:[Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final enum extraCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final enum onNavigationEvent:Lo/setUserProperties$IPostMessageService$onPostMessage;

.field private static final enum onPostMessage:Lo/setUserProperties$IPostMessageService$onPostMessage;


# instance fields
.field private final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onNavigationEvent:Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "ANDROID_CARDBOARD_SDK"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "IOS_CARDBOARD_SDK"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onPostMessage:Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "ANDROID_UNITY_SDK"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->extraCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "IOS_UNITY_SDK"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "WINDOWS"

    invoke-direct {v0, v7, v6, v6}, Lo/setUserProperties$IPostMessageService$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->ICustomTabsCallback$Stub:Lo/setUserProperties$IPostMessageService$onPostMessage;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/setUserProperties$IPostMessageService$onPostMessage;

    sget-object v8, Lo/setUserProperties$IPostMessageService$onPostMessage;->onNavigationEvent:Lo/setUserProperties$IPostMessageService$onPostMessage;

    aput-object v8, v7, v1

    sget-object v1, Lo/setUserProperties$IPostMessageService$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$IPostMessageService$onPostMessage;

    aput-object v1, v7, v2

    sget-object v1, Lo/setUserProperties$IPostMessageService$onPostMessage;->onPostMessage:Lo/setUserProperties$IPostMessageService$onPostMessage;

    aput-object v1, v7, v3

    sget-object v1, Lo/setUserProperties$IPostMessageService$onPostMessage;->extraCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    aput-object v1, v7, v4

    sget-object v1, Lo/setUserProperties$IPostMessageService$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/setUserProperties$IPostMessageService$onPostMessage;->asInterface:[Lo/setUserProperties$IPostMessageService$onPostMessage;

    new-instance v0, Lo/getFreshchatUserId;

    invoke-direct {v0}, Lo/getFreshchatUserId;-><init>()V

    sput-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->asBinder:Lo/setHierarchy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onRelationshipValidationResult:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/setUserProperties$IPostMessageService$onPostMessage;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->ICustomTabsCallback$Stub:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->extraCallback:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0

    :cond_3
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onPostMessage:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0

    :cond_4
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0

    :cond_5
    sget-object p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onNavigationEvent:Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object p0
.end method

.method public static onPostMessage()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$IPostMessageService$onPostMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->asBinder:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$IPostMessageService$onPostMessage;
    .locals 1

    sget-object v0, Lo/setUserProperties$IPostMessageService$onPostMessage;->asInterface:[Lo/setUserProperties$IPostMessageService$onPostMessage;

    invoke-virtual {v0}, [Lo/setUserProperties$IPostMessageService$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$IPostMessageService$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$IPostMessageService$onPostMessage;->onRelationshipValidationResult:I

    return v0
.end method
