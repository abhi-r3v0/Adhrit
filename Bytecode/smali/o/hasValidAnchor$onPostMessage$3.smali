.class final Lo/hasValidAnchor$onPostMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasValidAnchor$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic onMessageChannelReady:Lo/hasValidAnchor$onPostMessage;


# direct methods
.method constructor <init>(Lo/hasValidAnchor$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/hasValidAnchor$onPostMessage$3;->onMessageChannelReady:Lo/hasValidAnchor$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lo/hasValidAnchor$onPostMessage$3;->onMessageChannelReady:Lo/hasValidAnchor$onPostMessage;

    iget-object v0, v0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->mosaicView:I

    invoke-virtual {v0, v1}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onCreateActionView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1609
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1610
    new-instance v2, Lo/onCreateActionView$onRelationshipValidationResult;

    invoke-direct {v2, v0}, Lo/onCreateActionView$onRelationshipValidationResult;-><init>(Lo/onCreateActionView;)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v2, "startAnim"

    .line 1616
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1617
    new-instance v2, Lo/onCreateActionView$ICustomTabsCallback$Stub;

    invoke-direct {v2, v0}, Lo/onCreateActionView$ICustomTabsCallback$Stub;-><init>(Lo/onCreateActionView;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    new-instance v0, Lo/hasValidAnchor$onPostMessage$3$5;

    invoke-direct {v0, p0}, Lo/hasValidAnchor$onPostMessage$3$5;-><init>(Lo/hasValidAnchor$onPostMessage$3;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
