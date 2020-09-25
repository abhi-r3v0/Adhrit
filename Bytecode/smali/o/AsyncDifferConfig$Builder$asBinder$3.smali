.class public final Lo/AsyncDifferConfig$Builder$asBinder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncDifferConfig$Builder$asBinder;
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$1$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field public final synthetic onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1352
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/getBackgroundThreadExecutor;

    invoke-direct {v0, p0}, Lo/getBackgroundThreadExecutor;-><init>(Lo/AsyncDifferConfig$Builder$asBinder$3;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 7

    .line 341
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v0, v0, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 474
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 342
    iget-object v4, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v4, v4, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v4, v6}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 343
    iget-object v4, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v4, v4, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v4, v6}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v6, 0xd7

    invoke-virtual {v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    .line 344
    iget-object v4, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v4, v4, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v4, v6}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "animation"

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 345
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v2, v4}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 346
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v2, v4}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 347
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {v2, v4}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    move-object v4, p0

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 478
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 479
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/AsyncDifferConfig$Builder$asBinder$3;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 480
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 482
    :cond_2
    :goto_1
    new-instance v1, Lo/AsyncDifferConfig$Builder$asBinder$3$onNavigationEvent;

    invoke-direct {v1, v3, v0}, Lo/AsyncDifferConfig$Builder$asBinder$3$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
