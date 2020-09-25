.class final Lo/isRefreshPending$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$checkCardValidation$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isRefreshPending;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/control/CashBackDetails;Lo/isRefreshPending;)V
    .locals 0

    iput-object p1, p0, Lo/isRefreshPending$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    iput-object p2, p0, Lo/isRefreshPending$onNavigationEvent;->extraCallback:Lo/isRefreshPending;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 63
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    iget-object p1, p0, Lo/isRefreshPending$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/isRefreshPending$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1192
    iget-object p1, p0, Lo/isRefreshPending$onNavigationEvent;->extraCallback:Lo/isRefreshPending;

    .line 2000
    iget-object p1, p1, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1192
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/Instructions;

    iget-object v1, p0, Lo/isRefreshPending$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 1193
    iget-object v2, p0, Lo/isRefreshPending$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1192
    invoke-direct {v0, v1, v2}, Lcom/dreamplug/fabrik/ui/control/Instructions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "pay_screen"

    invoke-virtual {p1, v0, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/control/Instructions;Ljava/lang/String;)V

    .line 63
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
