.class public final Lo/isRefreshPending$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/refresh$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$customPayCallback$1",
        "Lcom/dreamplug/fabrik/ui/control/payments/CustomPaymentDialogPresenter$CustomPayInteractionCallback;",
        "amountDisparity",
        "",
        "amount",
        "",
        "openCashbackLimitSheet",
        "instructions",
        "Lcom/dreamplug/fabrik/ui/control/Instructions;",
        "source",
        "",
        "startPaymentFlow",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isRefreshPending;


# direct methods
.method constructor <init>(Lo/isRefreshPending;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/control/Instructions;Ljava/lang/String;)V
    .locals 1

    const-string v0, "instructions"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    .line 1000
    iget-object v0, v0, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 616
    invoke-virtual {v0, p1, p2}, Lo/getMoveDuration;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/control/Instructions;Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(D)V
    .locals 2

    .line 620
    iget-object v0, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;)Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130364

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setPaymentAmountTitle(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    invoke-static {v0, p1, p2}, Lo/isRefreshPending;->ICustomTabsCallback(Lo/isRefreshPending;D)V

    return-void
.end method

.method public final onPostMessage(D)V
    .locals 2

    .line 625
    iget-object v0, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;)Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130364

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setPaymentAmountTitle(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lo/isRefreshPending$ICustomTabsCallback$Stub;->extraCallback:Lo/isRefreshPending;

    invoke-static {v0, p1, p2}, Lo/isRefreshPending;->onPostMessage(Lo/isRefreshPending;D)V

    return-void
.end method
