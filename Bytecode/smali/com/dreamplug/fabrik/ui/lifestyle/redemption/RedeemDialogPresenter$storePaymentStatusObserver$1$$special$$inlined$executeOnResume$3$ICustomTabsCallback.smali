.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$1$1$1$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$1",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$let$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;

    .line 127
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 130
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 1037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback$2;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback$2;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x5dc

    invoke-static {p1, v0, v2, v3, v1}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
