.class public final Lo/getMaxEnd$5;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
        "com/dreamplug/widget/NeuProgressButton$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMaxEnd;


# direct methods
.method constructor <init>(Lo/getMaxEnd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lo/getMaxEnd$5;->ICustomTabsCallback:Lo/getMaxEnd;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lo/getMaxEnd$5;->ICustomTabsCallback:Lo/getMaxEnd;

    .line 1026
    iget-object p1, p1, Lo/getMaxEnd;->extraCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lo/getMaxEnd$5;->ICustomTabsCallback:Lo/getMaxEnd;

    .line 2026
    iget-object p1, p1, Lo/getMaxEnd;->extraCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 71
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 72
    iget-object p1, p0, Lo/getMaxEnd$5;->ICustomTabsCallback:Lo/getMaxEnd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 73
    iget-object p1, p0, Lo/getMaxEnd$5;->ICustomTabsCallback:Lo/getMaxEnd;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "progressLottie"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_1
    return-void
.end method
