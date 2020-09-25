.class final Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/updateAllRemainingSpans$onMessageChannelReady;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "invoke",
        "com/cred/pay/ui/PaymentContainerFragment$paymentScreenRouterObserver$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getMaxAvailableHeight$ICustomTabsService;

.field private synthetic extraCallback:Lo/onItemHoverExit;


# direct methods
.method constructor <init>(Lo/onItemHoverExit;Lo/getMaxAvailableHeight$ICustomTabsService;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;->extraCallback:Lo/onItemHoverExit;

    iput-object p2, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;->ICustomTabsCallback:Lo/getMaxAvailableHeight$ICustomTabsService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    check-cast p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;->extraCallback:Lo/onItemHoverExit;

    check-cast v0, Lo/onItemHoverExit$onTransact;

    .line 2050
    iget-object v0, v0, Lo/onItemHoverExit$onTransact;->ICustomTabsCallback:Ljava/lang/String;

    .line 2151
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;->extraCallback:Lo/onItemHoverExit;

    check-cast v0, Lo/onItemHoverExit$onTransact;

    .line 3050
    iget-object v0, v0, Lo/onItemHoverExit$onTransact;->onPostMessage:Ljava/lang/String;

    .line 3152
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1155
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_already_successful_button_text:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent$2;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent$2;-><init>(Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 3153
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    .line 45
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
