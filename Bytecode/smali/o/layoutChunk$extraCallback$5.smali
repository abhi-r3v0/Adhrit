.class public final Lo/layoutChunk$extraCallback$5;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/layoutChunk$extraCallback;
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
.field private synthetic onNavigationEvent:Lo/layoutChunk$extraCallback;


# direct methods
.method constructor <init>(Lo/layoutChunk$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 107
    iget-object p1, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    iget-object p1, p1, Lo/layoutChunk$extraCallback;->ICustomTabsCallback:Lo/layoutChunk;

    .line 1021
    iget-object p1, p1, Lo/layoutChunk;->onPostMessage:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x6f4abffd

    if-eq v0, v1, :cond_2

    const v1, -0x40c3ce76

    if-eq v0, v1, :cond_1

    const v1, 0x192a2f13

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "processing"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 109
    iget-object p1, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    iget-object p1, p1, Lo/layoutChunk$extraCallback;->ICustomTabsCallback:Lo/layoutChunk;

    .line 2021
    iget-object p1, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string v0, "failure"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_2
    const-string/jumbo v0, "success"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    iget-object p1, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    iget-object p1, p1, Lo/layoutChunk$extraCallback;->ICustomTabsCallback:Lo/layoutChunk;

    .line 6024
    iget-object p1, p1, Lo/layoutChunk;->onNavigationEvent:Lo/requireView;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 120
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130430

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 121
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130431

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 122
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130432

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "elements"

    .line 120
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 6076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 6129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    .line 120
    invoke-virtual {p1, v0, v3, v4}, Lo/requireView;->onNavigationEvent(Ljava/util/List;J)V

    .line 125
    iget-object p1, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    iget-object p1, p1, Lo/layoutChunk$extraCallback;->ICustomTabsCallback:Lo/layoutChunk;

    .line 8090
    iget-object v0, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 8091
    iget-object v0, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 8092
    iget-object v0, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p1, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    const-string v3, "lottieTimeClass"

    if-nez v1, :cond_3

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9003
    :cond_3
    iget v1, v1, Lo/getSpanSize;->onNavigationEvent:I

    .line 8092
    iget-object v4, p1, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    if-nez v4, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10003
    :cond_4
    iget v3, v4, Lo/getSpanSize;->onPostMessage:I

    .line 8092
    invoke-virtual {v0, v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 8093
    iget-object v0, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 8094
    new-instance v0, Lo/layoutChunk$onPostMessage;

    invoke-direct {v0, p1}, Lo/layoutChunk$onPostMessage;-><init>(Lo/layoutChunk;)V

    .line 8099
    iget-object v1, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8100
    iget-object p1, p1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 10110
    iget-object v0, p0, Lo/layoutChunk$extraCallback$5;->onNavigationEvent:Lo/layoutChunk$extraCallback;

    iget-object v0, v0, Lo/layoutChunk$extraCallback;->ICustomTabsCallback:Lo/layoutChunk;

    .line 11082
    iget-object v1, v0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, v0, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    const-string v3, "lottieTimeClass"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 12003
    :cond_0
    iget v2, v2, Lo/getSpanSize;->extraCallback:I

    .line 11082
    iget-object v4, v0, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    if-nez v4, :cond_1

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13003
    :cond_1
    iget v3, v4, Lo/getSpanSize;->onNavigationEvent:I

    .line 11082
    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 11083
    iget-object v1, v0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottie"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 11084
    iget-object v1, v0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    .line 14000
    iget-object v2, v0, Lo/layoutChunk;->asInterface:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/layoutChunk$extraCallback$5;

    .line 11084
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11085
    iget-object v1, v0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15000
    iget-object v2, v0, Lo/layoutChunk;->asInterface:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/layoutChunk$extraCallback$5;

    .line 11085
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11086
    iget-object v0, v0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
