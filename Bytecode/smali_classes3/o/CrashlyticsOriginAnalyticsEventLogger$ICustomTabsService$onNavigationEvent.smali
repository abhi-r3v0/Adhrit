.class final Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;

    invoke-direct {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;-><init>()V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onPostMessage()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 0

    .line 417
    check-cast p4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    .line 3469
    new-instance p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    invoke-direct {p1, p2, p3, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;)V

    return-object p1
.end method

.method public final extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 429
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 434
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 2

    .line 417
    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    check-cast p3, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    .line 3410
    new-instance p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    iget-object v0, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    iget v1, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-direct {p1, v0, v1, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;)V

    .line 3412
    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;->onPostMessage:Ljava/lang/Object;

    iput-object p2, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;->onPostMessage:Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 1

    .line 4444
    new-instance p3, Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    return-object p3
.end method

.method public final bridge synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;

    .line 2406
    iput-object p3, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;->onPostMessage:Ljava/lang/Object;

    return-void
.end method
