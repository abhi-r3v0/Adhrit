.class final Lo/computeScrollExtent$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 65
    check-cast p1, Lo/getThumbTintList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1354
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1355
    iget-object v1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 2068
    iget-object v1, v1, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v1, :cond_2

    .line 3000
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeItemDecoration;

    .line 1356
    :cond_2
    iget-object v1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v1, v2}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    const-string v2, "claimedRewardLayout"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 1513
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 1356
    iget-object v1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/updateLayoutState;->onNavigationEvent(Lo/removeItemDecoration;)Lo/onQueryRefine$onPostMessage;

    move-result-object v0

    .line 3007
    iget-object v0, v0, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    if-nez v0, :cond_5

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v0, :cond_4

    .line 3015
    iput-boolean v4, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 1358
    :cond_4
    iget-object p1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {p1, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 1359
    iget-object v0, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    float-to-double v1, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 1360
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    int-to-float v2, p1

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1361
    iget-object v2, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->rewardLayout:I

    invoke-virtual {v2, v5}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    const-string/jumbo v5, "rewardLayout"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v5, "$this$visible"

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v2, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v2, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    const/4 v3, 0x0

    .line 1362
    invoke-static {v2, v0, p1, v1, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 1519
    new-instance v0, Lo/computeScrollExtent$warmup$extraCallback;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$warmup$extraCallback;-><init>(Lo/computeScrollExtent$warmup;)V

    .line 1525
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1376
    iget-object p1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    invoke-static {p1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object p1

    const-string v0, "ideal"

    .line 4088
    iput-object v0, p1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 4089
    iget-object p1, p1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1377
    iget-object p1, p0, Lo/computeScrollExtent$warmup;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {p1, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getLayoutInflater;

    invoke-virtual {p1, v4}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    :cond_5
    return-void
.end method
