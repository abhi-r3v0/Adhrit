.class final Lo/getPaddingRight$extraCallback$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingRight$extraCallback;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getPaddingRight$extraCallback;


# direct methods
.method constructor <init>(Lo/getPaddingRight$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$extraCallback$onPostMessage;->onMessageChannelReady:Lo/getPaddingRight$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1108
    iget-object v0, p0, Lo/getPaddingRight$extraCallback$onPostMessage;->onMessageChannelReady:Lo/getPaddingRight$extraCallback;

    iget-object v0, v0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->extraCallback(Lo/getPaddingRight;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1109
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1110
    iget-object v2, p0, Lo/getPaddingRight$extraCallback$onPostMessage;->onMessageChannelReady:Lo/getPaddingRight$extraCallback;

    iget-object v2, v2, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v2}, Lo/getPaddingRight;->onRelationshipValidationResult(Lo/getPaddingRight;)Landroid/view/View;

    move-result-object v2

    const-string v3, "lottieBG"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    new-instance v1, Lo/getPaddingRight$extraCallback$onPostMessage$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/getPaddingRight$extraCallback$onPostMessage$ICustomTabsCallback;-><init>(Lo/getPaddingRight$extraCallback$onPostMessage;)V

    check-cast v1, Lo/getServerTime;

    const v2, 0x7f120027

    .line 2337
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 2338
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 2339
    new-instance v2, Lo/getPaddingBottom$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/getPaddingBottom$ICustomTabsCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
