.class final Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 790
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;

    invoke-direct {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;-><init>()V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation

    .line 794
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 1

    .line 787
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;

    check-cast p4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    .line 6840
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    .line 7112
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 6840
    invoke-direct {v0, p1, p2, p3, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;)V

    return-object v0
.end method

.method public final extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 799
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 804
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 3

    .line 787
    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;

    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    check-cast p3, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    .line 4660
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5112
    :cond_0
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 5780
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    .line 6660
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 5781
    iget v2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;->ICustomTabsCallback:I

    invoke-direct {v0, p1, v1, v2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;)V

    .line 5782
    iget-object p1, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    .line 6775
    iput-object p1, v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 1

    .line 7813
    new-instance p3, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    return-object p3
.end method

.method public final bridge synthetic onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    .locals 0

    .line 787
    check-cast p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;

    .line 3775
    iput-object p3, p2, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
