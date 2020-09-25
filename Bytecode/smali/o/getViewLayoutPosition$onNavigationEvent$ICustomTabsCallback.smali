.class final Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewLayoutPosition$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$handleCoachMark$2$1$1$1$1",
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$handleCoachMark$2$$special$$inlined$apply$lambda$1",
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$handleCoachMark$2$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "it"

    .line 267
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 268
    iget-object v0, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    iget-object v0, v0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    iget-object v0, v0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->coachLottie2:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "coachLottie2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 270
    iget-object v0, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    iget-object v0, v0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->coachText2:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "coachText2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    iget-object v0, v0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->coachLottie1:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "coachLottie1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 272
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getViewLayoutPosition$onNavigationEvent;

    iget-object p1, p1, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachText1:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "coachText1"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    :cond_1
    return-void

    .line 267
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
