.class final Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 892
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;

    invoke-direct {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;-><init>()V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback<",
            "TK;TV;>;"
        }
    .end annotation

    .line 896
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 1

    .line 889
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;

    check-cast p4, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    .line 7944
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    .line 8152
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 7944
    invoke-direct {v0, p1, p2, p3, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;)V

    return-object v0
.end method

.method public final extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 901
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 906
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 4

    .line 889
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;

    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    check-cast p3, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    .line 4660
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4941
    :cond_0
    invoke-interface {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v1

    .line 5152
    :cond_2
    iget-object v0, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 6152
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    .line 6866
    new-instance v1, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    .line 7660
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 6867
    iget v3, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->ICustomTabsCallback:I

    invoke-direct {v1, v0, v2, v3, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;)V

    .line 6868
    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    invoke-interface {p2, p1, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->onPostMessage(Ljava/lang/ref/ReferenceQueue;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    move-result-object p1

    iput-object p1, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-object v1
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 1

    .line 8914
    new-instance p3, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    return-object p3
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    .locals 2

    .line 889
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;

    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;

    .line 3152
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    .line 3878
    iget-object v0, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    .line 3879
    new-instance v1, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;

    invoke-direct {v1, p1, p3, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    iput-object v1, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    .line 3880
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->clear()V

    return-void
.end method
