.class public final Lo/getStateAfterAnimating$mayLaunchUrl;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateAfterAnimating;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInFragment$onViewCreated$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field final synthetic onPostMessage:Lo/getStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 111
    iget-object p1, p0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {p1}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object p1

    iget-object p1, p1, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    iget-object p1, p1, Lo/TintTypedArray;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "binding.fetchingCardsLayout.fetchCardsLottie"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getStateAfterAnimating$mayLaunchUrl$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getStateAfterAnimating$mayLaunchUrl$ICustomTabsCallback;-><init>(Lo/getStateAfterAnimating$mayLaunchUrl;)V

    check-cast v0, Lo/getServerTime;

    const-wide/16 v2, 0x0

    .line 2045
    invoke-static {p1, v1, v2, v3, v0}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 115
    iget-object p1, p0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-static {p1}, Lo/getStateAfterAnimating;->onMessageChannelReady(Lo/getStateAfterAnimating;)V

    :cond_1
    return-void
.end method
