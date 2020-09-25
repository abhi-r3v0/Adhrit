.class final Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/cred/pay/ui/PaymentContainerFragment$paymentScreenRouterObserver$1$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent$2;->onPostMessage:Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1156
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent$2;->onPostMessage:Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;

    iget-object v0, v0, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;->ICustomTabsCallback:Lo/getMaxAvailableHeight$ICustomTabsService;

    iget-object v0, v0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->ICustomTabsCallback(Lo/getMaxAvailableHeight;)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
