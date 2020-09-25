.class final Lo/findMinMaxChildLayoutPositions$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findMinMaxChildLayoutPositions;
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
.field final synthetic ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

.field final synthetic extraCallback:Z


# direct methods
.method constructor <init>(Lo/findMinMaxChildLayoutPositions;Z)V
    .locals 0

    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    iput-boolean p2, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage;->extraCallback:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1103
    iget-object v0, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherView:I

    invoke-virtual {v0, v1}, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1104
    iget-object v2, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->voucherView:I

    invoke-virtual {v2, v6}, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "oa1"

    .line 1105
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v2, "oa2"

    .line 1106
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1107
    new-instance v2, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;

    invoke-direct {v2, p0, v1}, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;-><init>(Lo/findMinMaxChildLayoutPositions$onPostMessage;Landroid/animation/ObjectAnimator;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1130
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
