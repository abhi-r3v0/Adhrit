.class final Lo/refresh$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/refresh;->ICustomTabsCallback()V
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
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentDialogPresenter$showCashBackNoteIfApplicable$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/refresh;

.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/control/CashBackDetails;Lo/refresh;)V
    .locals 0

    iput-object p1, p0, Lo/refresh$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    iput-object p2, p0, Lo/refresh$onPostMessage;->ICustomTabsCallback:Lo/refresh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 27
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    iget-object p1, p0, Lo/refresh$onPostMessage;->ICustomTabsCallback:Lo/refresh;

    .line 2027
    iget-object p1, p1, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1140
    invoke-static {p1, v0}, Lo/AsyncListUtil$DataCallback;->onPostMessage(Lo/AsyncListUtil$DataCallback;Z)V

    .line 1141
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/refresh$onPostMessage;->ICustomTabsCallback:Lo/refresh;

    .line 3027
    iget-object v0, v0, Lo/refresh;->asInterface:Landroidx/fragment/app/Fragment;

    .line 1141
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    new-instance v3, Lo/refresh$onPostMessage$3;

    invoke-direct {v3, p0}, Lo/refresh$onPostMessage$3;-><init>(Lo/refresh$onPostMessage;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 27
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
