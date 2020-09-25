.class final Lo/getMaxAvailableHeight$updateVisuals$2$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$updateVisuals$2;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight$updateVisuals$2;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$updateVisuals$2$3;->extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1426
    iget-object v0, p0, Lo/getMaxAvailableHeight$updateVisuals$2$3;->extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals$2;->onPostMessage:Lo/getMaxAvailableHeight$updateVisuals;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 2000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 2145
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    .line 1427
    instance-of v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v1, :cond_4

    .line 1428
    iget-object v1, p0, Lo/getMaxAvailableHeight$updateVisuals$2$3;->extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v1, v1, Lo/getMaxAvailableHeight$updateVisuals$2;->onPostMessage:Lo/getMaxAvailableHeight$updateVisuals;

    iget-object v1, v1, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    check-cast v0, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 2269
    iget-object v2, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 3049
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 3269
    :cond_1
    iget-object v0, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v0, :cond_3

    .line 4048
    iget-object v0, v0, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v0, :cond_3

    .line 4072
    iget-object v0, v0, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 1428
    :cond_3
    :goto_0
    invoke-static {v1, v2, v3}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_4
    iget-object v0, p0, Lo/getMaxAvailableHeight$updateVisuals$2$3;->extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals$2;->extraCallback:Lo/updateAllRemainingSpans;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 1432
    iget-object v0, p0, Lo/getMaxAvailableHeight$updateVisuals$2$3;->extraCallback:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals$2;->onNavigationEvent:Ljava/util/Map;

    const-string v1, "payment_failure_retry_button_change_mpin"

    invoke-static {v1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
