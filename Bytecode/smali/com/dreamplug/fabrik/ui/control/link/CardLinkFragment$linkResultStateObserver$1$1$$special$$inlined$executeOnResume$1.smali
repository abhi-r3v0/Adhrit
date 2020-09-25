.class public final Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder$asBinder$3;->run()V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/AsyncDifferConfig$Builder$asBinder$3;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0xd7

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v1}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
