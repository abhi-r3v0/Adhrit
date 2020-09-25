.class final Lo/getViewLayoutPosition$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewLayoutPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic onNavigationEvent:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 63
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 1247
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->coachLottie2:I

    invoke-virtual {p1, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_5

    .line 1248
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->coachLottie2:I

    invoke-virtual {p1, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "coachLottie2"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v3, "pairs"

    const/4 v4, 0x0

    const-string/jumbo v5, "section"

    const/16 v6, 0x8

    if-nez p1, :cond_3

    .line 1249
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p1, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-array p1, v0, [Lo/addWrite;

    .line 1252
    iget-object v2, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-static {v2}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3019
    iget-object v4, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 3043
    :cond_2
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p1, v1

    .line 1251
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "menu_help_dismissed"

    .line 1250
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1255
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-virtual {p1}, Lo/getViewLayoutPosition;->onNavigationEvent()V

    goto/16 :goto_1

    :cond_3
    new-array p1, v0, [Lo/addWrite;

    .line 1259
    iget-object v7, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-static {v7}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 4019
    iget-object v4, v7, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 4043
    :cond_4
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v1

    .line 1258
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "menu_help_next_viewed"

    .line 1257
    invoke-static {p1, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1262
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachLottie2:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1263
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachText2:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "coachText2"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachDone:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "coachDone"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1265
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1266
    new-instance v0, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/getViewLayoutPosition$onNavigationEvent;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x3e8

    .line 1275
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1276
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1278
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachLottie2:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1279
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachLottie1:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "coachLottie1"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1280
    iget-object p1, p0, Lo/getViewLayoutPosition$onNavigationEvent;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coachText1:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "coachText1"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_5
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
