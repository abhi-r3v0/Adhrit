.class public final Lo/dL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/dP;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/dL;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/dP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/dL;

    invoke-direct {v0}, Lo/dL;-><init>()V

    sput-object v0, Lo/dL;->extraCallback:Lo/dL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    new-instance v0, Lo/dQ;

    invoke-direct {v0}, Lo/dQ;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/dL;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/dP;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/dL;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()J
    .locals 2

    .line 1
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->onNavigationEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsCallback$Stub()J
    .locals 2

    .line 5
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsCallback$Stub$Proxy()J
    .locals 2

    .line 10
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->asBinder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsService()J
    .locals 2

    .line 12
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsService$Stub()J
    .locals 2

    .line 21
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsService$Stub$Proxy()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsService$Stub$Proxy()J
    .locals 2

    .line 20
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->extraCommand()J

    move-result-wide v0

    return-wide v0
.end method

.method public static INotificationSideChannel()J
    .locals 2

    .line 27
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->cancel()J

    move-result-wide v0

    return-wide v0
.end method

.method public static INotificationSideChannel$Default()J
    .locals 2

    .line 29
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->cancelAll()J

    move-result-wide v0

    return-wide v0
.end method

.method public static INotificationSideChannel$Stub()J
    .locals 2

    .line 30
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->INotificationSideChannel$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public static INotificationSideChannel$Stub$Proxy()J
    .locals 2

    .line 31
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->setDefaultImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static IPostMessageService()J
    .locals 2

    .line 22
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public static IPostMessageService$Stub()J
    .locals 2

    .line 23
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->IPostMessageService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public static IPostMessageService$Stub$Proxy()J
    .locals 2

    .line 26
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->IPostMessageService$Stub$Proxy()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asBinder()J
    .locals 2

    .line 7
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asInterface()J
    .locals 2

    .line 9
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->asInterface()J

    move-result-wide v0

    return-wide v0
.end method

.method public static cancel()J
    .locals 2

    .line 25
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public static cancelAll()J
    .locals 2

    .line 28
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->INotificationSideChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public static extraCommand()J
    .locals 2

    .line 19
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultImpl()J
    .locals 2

    .line 33
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->INotificationSideChannel$Default()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInterfaceDescriptor()J
    .locals 2

    .line 13
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->getInterfaceDescriptor()J

    move-result-wide v0

    return-wide v0
.end method

.method public static mayLaunchUrl()J
    .locals 2

    .line 17
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->updateVisuals()J

    move-result-wide v0

    return-wide v0
.end method

.method public static newSession()J
    .locals 2

    .line 11
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->newSession()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onPostMessage()J
    .locals 2

    .line 2
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onRelationshipValidationResult()J
    .locals 2

    .line 8
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->onRelationshipValidationResult()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onTransact()J
    .locals 2

    .line 6
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->onTransact()J

    move-result-wide v0

    return-wide v0
.end method

.method public static postMessage()J
    .locals 2

    .line 18
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->mayLaunchUrl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static requestPostMessageChannel()J
    .locals 2

    .line 15
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->warmup()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setDefaultImpl()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->INotificationSideChannel$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateVisuals()J
    .locals 2

    .line 16
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->postMessage()J

    move-result-wide v0

    return-wide v0
.end method

.method public static validateRelationship()J
    .locals 2

    .line 24
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->IPostMessageService()J

    move-result-wide v0

    return-wide v0
.end method

.method public static warmup()J
    .locals 2

    .line 14
    sget-object v0, Lo/dL;->extraCallback:Lo/dL;

    invoke-virtual {v0}, Lo/dL;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    invoke-interface {v0}, Lo/dP;->ICustomTabsService()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/dL;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dP;

    return-object v0
.end method
