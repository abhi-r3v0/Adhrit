.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout$onNavigationEvent;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$1$1$$special$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic extraCallback:Landroid/animation/ValueAnimator;

.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$onNavigationEvent;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->extraCallback:Landroid/animation/ValueAnimator;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->extraCallback:Landroid/animation/ValueAnimator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 1036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, -0x3d380000    # -100.0f

    const/4 v4, 0x1

    .line 3010
    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float v1, v1, v5

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 56
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5010
    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float v0, v0, v5

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/stopInterceptRequestLayout$onNavigationEvent;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$onNavigationEvent;->extraCallback:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v4, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
