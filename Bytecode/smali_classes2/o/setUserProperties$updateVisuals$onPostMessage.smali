.class public final enum Lo/setUserProperties$updateVisuals$onPostMessage;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$updateVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$updateVisuals$onPostMessage;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final enum asInterface:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final enum extraCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final enum onNavigationEvent:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final enum onPostMessage:Lo/setUserProperties$updateVisuals$onPostMessage;

.field private static final onRelationshipValidationResult:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$updateVisuals$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic onTransact:[Lo/setUserProperties$updateVisuals$onPostMessage;


# instance fields
.field private final ICustomTabsCallback$Stub:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_SCHEDULER"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onPostMessage:Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "ASAP"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "DEFAULT_PERIODIC"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onNavigationEvent:Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "QOS_FAST_ONEOFF"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "QOS_DEFAULT_PERIODIC"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->extraCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "QOS_UNMETERED_PERIODIC"

    invoke-direct {v0, v7, v6, v6}, Lo/setUserProperties$updateVisuals$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->asInterface:Lo/setUserProperties$updateVisuals$onPostMessage;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/setUserProperties$updateVisuals$onPostMessage;

    sget-object v8, Lo/setUserProperties$updateVisuals$onPostMessage;->onPostMessage:Lo/setUserProperties$updateVisuals$onPostMessage;

    aput-object v8, v7, v1

    sget-object v1, Lo/setUserProperties$updateVisuals$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$updateVisuals$onPostMessage;

    aput-object v1, v7, v2

    sget-object v1, Lo/setUserProperties$updateVisuals$onPostMessage;->onNavigationEvent:Lo/setUserProperties$updateVisuals$onPostMessage;

    aput-object v1, v7, v3

    sget-object v1, Lo/setUserProperties$updateVisuals$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    aput-object v1, v7, v4

    sget-object v1, Lo/setUserProperties$updateVisuals$onPostMessage;->extraCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/setUserProperties$updateVisuals$onPostMessage;->onTransact:[Lo/setUserProperties$updateVisuals$onPostMessage;

    new-instance v0, Lo/getCustomLinkHandler;

    invoke-direct {v0}, Lo/getCustomLinkHandler;-><init>()V

    sput-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onRelationshipValidationResult:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$updateVisuals$onPostMessage;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public static extraCallback(I)Lo/setUserProperties$updateVisuals$onPostMessage;
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
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->asInterface:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->extraCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0

    :cond_3
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->onNavigationEvent:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0

    :cond_4
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0

    :cond_5
    sget-object p0, Lo/setUserProperties$updateVisuals$onPostMessage;->onPostMessage:Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object p0
.end method

.method public static onMessageChannelReady()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$updateVisuals$onPostMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onRelationshipValidationResult:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$updateVisuals$onPostMessage;
    .locals 1

    sget-object v0, Lo/setUserProperties$updateVisuals$onPostMessage;->onTransact:[Lo/setUserProperties$updateVisuals$onPostMessage;

    invoke-virtual {v0}, [Lo/setUserProperties$updateVisuals$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$updateVisuals$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$updateVisuals$onPostMessage;->ICustomTabsCallback$Stub:I

    return v0
.end method
