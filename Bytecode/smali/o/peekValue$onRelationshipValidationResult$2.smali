.class public final Lo/peekValue$onRelationshipValidationResult$2;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/peekValue$onRelationshipValidationResult;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/CreditScoreIntroFragment$startScoreAnimationListener$2$1",
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
.field private synthetic onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/peekValue$onRelationshipValidationResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->ICustomTabsCallback(Lo/peekValue;)V

    .line 156
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->asBinder(Lo/peekValue;)Lo/getBottomDecorationHeight;

    move-result-object p1

    .line 1041
    iget-object p1, p1, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->onMessageChannelReady(Lo/peekValue;)V

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->refereralDevider:I

    invoke-virtual {p1, v0}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getAdapterPosition;

    const-string v0, "refereralDevider"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fetchCardsLottie:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "fetchCardsLottie"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fetchCardsLottie:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 162
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->poweredBy:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v1, "poweredBy"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301e3

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lo/peekValue$onRelationshipValidationResult$2;->onNavigationEvent:Lo/peekValue$onRelationshipValidationResult;

    iget-object p1, p1, Lo/peekValue$onRelationshipValidationResult;->ICustomTabsCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "logo"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
