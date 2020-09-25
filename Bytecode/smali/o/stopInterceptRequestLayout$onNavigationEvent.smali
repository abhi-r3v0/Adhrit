.class public final Lo/stopInterceptRequestLayout$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopInterceptRequestLayout;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic extraCallback:Landroid/animation/ValueAnimator;

.field public final synthetic onNavigationEvent:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->extraCallback:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 646
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 1037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 646
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 704
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 705
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    const-string v2, "animator"

    .line 647
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 648
    iget-object v2, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 648
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 649
    iget-object v2, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "Resources.getSystem()"

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v7, -0x3d380000    # -100.0f

    .line 4010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float v4, v4, v8

    .line 649
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 650
    iget-object v2, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 650
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 651
    iget-object p1, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 6010
    invoke-static {v5, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    mul-float v2, v2, v8

    .line 651
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 652
    iget-object p1, p0, Lo/stopInterceptRequestLayout$onNavigationEvent;->extraCallback:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 707
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 709
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$handleRewardSectionShow$$inlined$apply$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$onNavigationEvent;Landroid/animation/ValueAnimator;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 710
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 712
    :cond_2
    :goto_0
    new-instance p1, Lo/stopInterceptRequestLayout$onNavigationEvent$2;

    invoke-direct {p1, v3, v0}, Lo/stopInterceptRequestLayout$onNavigationEvent$2;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
