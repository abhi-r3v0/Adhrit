.class final Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 517
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;

    invoke-direct {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;-><init>()V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation

    .line 521
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 0

    .line 514
    check-cast p4, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    .line 4566
    new-instance p1, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    invoke-direct {p1, p2, p3, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;)V

    return-object p1
.end method

.method public final extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 526
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 531
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 3

    .line 514
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;

    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    check-cast p3, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    .line 3941
    invoke-interface {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4024
    :cond_1
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 4503
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    iget-object v1, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    iget v2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-direct {v0, v1, v2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;)V

    .line 4504
    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    invoke-interface {p2, p1, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->onPostMessage(Ljava/lang/ref/ReferenceQueue;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    move-result-object p1

    iput-object p1, v0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 1

    .line 5540
    new-instance p3, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    return-object p3
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    .locals 2

    .line 514
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;

    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;

    .line 3024
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 3496
    iget-object v0, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    .line 3497
    new-instance v1, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;

    invoke-direct {v1, p1, p3, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    iput-object v1, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    .line 3498
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->clear()V

    return-void
.end method
