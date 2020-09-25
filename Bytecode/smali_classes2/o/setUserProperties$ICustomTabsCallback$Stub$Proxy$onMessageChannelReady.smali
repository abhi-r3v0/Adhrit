.class public final enum Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

.field private static final onNavigationEvent:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum onPostMessage:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

.field private static final synthetic onRelationshipValidationResult:[Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;


# instance fields
.field private final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "WALL_CLOCK_SET"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "DEVICE_BOOT"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    sget-object v5, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onRelationshipValidationResult:[Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    new-instance v0, Lo/setCustomLinkHandler;

    invoke-direct {v0}, Lo/setCustomLinkHandler;-><init>()V

    sput-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onNavigationEvent:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->extraCallback:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onNavigationEvent:Lo/setHierarchy;

    return-object v0
.end method

.method public static onMessageChannelReady(I)Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;
    .locals 1

    sget-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->onRelationshipValidationResult:[Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->extraCallback:I

    return v0
.end method
