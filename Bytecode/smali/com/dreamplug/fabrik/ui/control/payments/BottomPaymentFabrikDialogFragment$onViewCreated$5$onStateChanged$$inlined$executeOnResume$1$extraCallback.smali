.class final Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object v0, v0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "customDialogBackGround"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1643
    invoke-static {v0, v1, v2}, Lo/updateRange;->ICustomTabsCallback(Landroid/view/View;ZLo/getServerTime;)V

    .line 1335
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object v0, v0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->onTransact(Lo/isRefreshPending;)Lo/refresh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    .line 2183
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x0

    .line 2184
    invoke-virtual {v0, v1, v2}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(D)V

    .line 325
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
