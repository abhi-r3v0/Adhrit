.class public final Lo/getTextArray$ICustomTabsCallback$3;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextArray$ICustomTabsCallback;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getTextArray$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getTextArray$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 187
    iget-object p1, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    iget-object p1, p1, Lo/getTextArray$ICustomTabsCallback;->onPostMessage:Lo/getTextArray;

    invoke-static {p1}, Lo/getTextArray;->onPostMessage(Lo/getTextArray;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    iget-object p1, p1, Lo/getTextArray$ICustomTabsCallback;->onPostMessage:Lo/getTextArray;

    invoke-static {p1}, Lo/getTextArray;->asBinder(Lo/getTextArray;)V

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 193
    :cond_0
    iget-object p1, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    iget-object p1, p1, Lo/getTextArray$ICustomTabsCallback;->onPostMessage:Lo/getTextArray;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p1, v0}, Lo/getTextArray;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottieView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    iget-object v0, v0, Lo/getTextArray$ICustomTabsCallback;->onPostMessage:Lo/getTextArray;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/getTextArray$ICustomTabsCallback$3$extraCallback;

    invoke-direct {v1, p0}, Lo/getTextArray$ICustomTabsCallback$3$extraCallback;-><init>(Lo/getTextArray$ICustomTabsCallback$3;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x0

    .line 1045
    invoke-static {p1, v0, v2, v3, v1}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1190
    iget-object v0, p0, Lo/getTextArray$ICustomTabsCallback$3;->extraCallback:Lo/getTextArray$ICustomTabsCallback;

    iget-object v0, v0, Lo/getTextArray$ICustomTabsCallback;->onPostMessage:Lo/getTextArray;

    invoke-static {v0}, Lo/getTextArray;->onPostMessage(Lo/getTextArray;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
