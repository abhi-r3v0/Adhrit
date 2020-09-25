.class public final enum Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final synthetic asInterface:[Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final enum extraCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final enum onNavigationEvent:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final enum onPostMessage:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

.field private static final onRelationshipValidationResult:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "CLIENT_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onNavigationEvent:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    new-instance v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "CHIRP"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onMessageChannelReady:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    new-instance v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "WAYMO"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    new-instance v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "GV_ANDROID"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    new-instance v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "GV_IOS"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onPostMessage:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    sget-object v7, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onNavigationEvent:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    aput-object v7, v6, v1

    sget-object v1, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onMessageChannelReady:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    aput-object v1, v6, v2

    sget-object v1, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    aput-object v1, v6, v3

    sget-object v1, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->asInterface:[Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    new-instance v0, Lo/getFreshchatUserInteractionListener;

    invoke-direct {v0}, Lo/getFreshchatUserInteractionListener;-><init>()V

    sput-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onRelationshipValidationResult:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->asBinder:I

    return-void
.end method

.method public static onNavigationEvent(I)Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onPostMessage:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object p0

    :cond_3
    sget-object p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onMessageChannelReady:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object p0

    :cond_4
    sget-object p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onNavigationEvent:Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object p0
.end method

.method public static onPostMessage()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->onRelationshipValidationResult:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;
    .locals 1

    sget-object v0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->asInterface:[Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    invoke-virtual {v0}, [Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$onMessageChannelReady$onNavigationEvent;->asBinder:I

    return v0
.end method
