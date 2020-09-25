.class final Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ToolbarWidgetWrapper$extraCallback;->onAnimationEnd(Landroid/animation/Animator;)V
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
.field private synthetic ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;


# direct methods
.method constructor <init>(Lo/ToolbarWidgetWrapper$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1055
    iget-object v0, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    iget-object v0, v0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {v0, v1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1056
    iget-object v0, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    iget-object v0, v0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {v0, v1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1057
    iget-object v0, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    iget-object v0, v0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {v0, v1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x73

    const/16 v2, 0x98

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1058
    iget-object v0, p0, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/ToolbarWidgetWrapper$extraCallback;

    iget-object v0, v0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {v0, v1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 52
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
