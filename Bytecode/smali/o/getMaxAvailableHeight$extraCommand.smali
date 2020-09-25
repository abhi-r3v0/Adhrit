.class final Lo/getMaxAvailableHeight$extraCommand;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getMaxAvailableHeight;

.field final synthetic onNavigationEvent:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;Lo/MenuItemHoverListener$onNavigationEvent;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$extraCommand;->onMessageChannelReady:Lo/getMaxAvailableHeight;

    iput-object p2, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    iput-object p3, p0, Lo/getMaxAvailableHeight$extraCommand;->onNavigationEvent:Ljava/util/Map;

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

    .line 1537
    iget-object v0, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 2510
    iget-object v0, v0, Lo/MenuItemHoverListener$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1538
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_message:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    .line 3151
    :cond_0
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1539
    iget-object v0, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 3511
    iget-object v0, v0, Lo/MenuItemHoverListener$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1540
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_content:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    .line 4152
    :cond_1
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 4513
    iget-object v0, v0, Lo/MenuItemHoverListener$onNavigationEvent;->ICustomTabsCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v0, :cond_2

    .line 1542
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->pay_retry:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/getMaxAvailableHeight$extraCommand$4;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$extraCommand$4;-><init>(Lo/getMaxAvailableHeight$extraCommand;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 5153
    :cond_2
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    .line 1547
    iget-object v0, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 5513
    iget-object v0, v0, Lo/MenuItemHoverListener$onNavigationEvent;->ICustomTabsCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-eqz v0, :cond_3

    .line 1548
    iget-object v0, p0, Lo/getMaxAvailableHeight$extraCommand;->onPostMessage:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 5514
    iget-object v0, v0, Lo/MenuItemHoverListener$onNavigationEvent;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    goto :goto_0

    .line 1550
    :cond_3
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->pay_go_back:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/getMaxAvailableHeight$extraCommand$1;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$extraCommand$1;-><init>(Lo/getMaxAvailableHeight$extraCommand;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 6154
    :goto_0
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    .line 45
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
