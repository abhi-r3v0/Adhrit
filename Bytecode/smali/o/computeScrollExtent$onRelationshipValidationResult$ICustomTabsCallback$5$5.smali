.class final Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$machineUpdateListener$1$1$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 9

    .line 1109
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "claimedRewardLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1111
    iget-object v3, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v3, v3, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v3, v3, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v3, v3, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 1112
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    int-to-float v4, v0

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1114
    iget-object v4, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v4, v4, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v4, v4, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v4, v4, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v4, v5}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    const/4 v5, 0x0

    .line 1113
    invoke-static {v4, v1, v0, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1518
    new-instance v1, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5$2;

    invoke-direct {v1, p0}, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5$2;-><init>(Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;)V

    .line 1524
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1125
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1126
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5$5;->ICustomTabsCallback:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    invoke-virtual {v0, v2}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    .line 65
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
