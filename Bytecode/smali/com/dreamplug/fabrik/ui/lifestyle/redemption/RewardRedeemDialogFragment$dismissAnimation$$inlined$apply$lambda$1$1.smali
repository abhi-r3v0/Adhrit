.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseGlows$asBinder;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$1$1$$special$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/animation/ValueAnimator;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/releaseGlows$asBinder;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/releaseGlows$asBinder;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iget-object v0, v0, Lo/releaseGlows$asBinder;->onMessageChannelReady:Lo/releaseGlows;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->youHaveAmount:I

    invoke-virtual {v0, v1}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "youHaveAmount"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iget-object v0, v0, Lo/releaseGlows$asBinder;->onMessageChannelReady:Lo/releaseGlows;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->youHaveAmount:I

    invoke-virtual {v0, v2}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, -0x3d380000    # -100.0f

    const/4 v4, 0x1

    .line 1010
    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float v1, v1, v5

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 56
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iget-object v0, v0, Lo/releaseGlows$asBinder;->onMessageChannelReady:Lo/releaseGlows;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->youHave:I

    invoke-virtual {v0, v1}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "youHave"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iget-object v0, v0, Lo/releaseGlows$asBinder;->onMessageChannelReady:Lo/releaseGlows;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->youHave:I

    invoke-virtual {v0, v6}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2010
    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    mul-float v1, v1, v5

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onPostMessage:Lo/releaseGlows$asBinder;

    iget-object v0, v0, Lo/releaseGlows$asBinder;->onMessageChannelReady:Lo/releaseGlows;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->dialogBackGround:I

    invoke-virtual {v0, v1}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "dialogBackGround"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3f666666    # 0.9f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v4, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void

    .line 53
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
