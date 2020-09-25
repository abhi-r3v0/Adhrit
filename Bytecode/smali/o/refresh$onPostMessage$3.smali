.class final Lo/refresh$onPostMessage$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refresh$onPostMessage;
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
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentDialogPresenter$showCashBackNoteIfApplicable$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/refresh$onPostMessage;


# direct methods
.method constructor <init>(Lo/refresh$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1142
    iget-object v0, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    iget-object v0, v0, Lo/refresh$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getMessages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    iget-object v0, v0, Lo/refresh$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    iget-object v0, v0, Lo/refresh$onPostMessage;->ICustomTabsCallback:Lo/refresh;

    .line 2027
    iget-object v0, v0, Lo/refresh;->onRelationshipValidationResult:Lo/refresh$onNavigationEvent;

    .line 1143
    new-instance v1, Lcom/dreamplug/fabrik/ui/control/Instructions;

    iget-object v2, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    iget-object v2, v2, Lo/refresh$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 1144
    iget-object v3, p0, Lo/refresh$onPostMessage$3;->onNavigationEvent:Lo/refresh$onPostMessage;

    iget-object v3, v3, Lo/refresh$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CashBackDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-direct {v1, v2, v3}, Lcom/dreamplug/fabrik/ui/control/Instructions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "pay_custom_screen"

    invoke-interface {v0, v1, v2}, Lo/refresh$onNavigationEvent;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/control/Instructions;Ljava/lang/String;)V

    .line 27
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
