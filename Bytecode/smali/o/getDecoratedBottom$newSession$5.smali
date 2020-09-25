.class final Lo/getDecoratedBottom$newSession$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDecoratedBottom$newSession;
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
.field private synthetic ICustomTabsCallback:Lo/getDecoratedBottom$newSession;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom$newSession;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1229
    iget-object v0, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    iget-object v0, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v0, v1}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "machineLottieView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1230
    iget-object v0, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    iget-object v0, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v0, v2}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "machineBackgroundLottie"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1231
    iget-object v0, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    iget-object v0, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v0, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 1232
    iget-object v0, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    iget-object v0, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v0, v1}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1233
    iget-object v0, p0, Lo/getDecoratedBottom$newSession$5;->ICustomTabsCallback:Lo/getDecoratedBottom$newSession;

    iget-object v0, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v0, v1}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 48
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
