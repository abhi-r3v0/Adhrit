.class public final Lo/getViewLayoutPosition$onMessageChannelReady$onNavigationEvent;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewLayoutPosition$onMessageChannelReady;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$handleCoachMark$3$1$2",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getViewLayoutPosition$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getViewLayoutPosition$onMessageChannelReady;

    .line 296
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 299
    iget-object p1, p0, Lo/getViewLayoutPosition$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getViewLayoutPosition$onMessageChannelReady;

    iget-object p1, p1, Lo/getViewLayoutPosition$onMessageChannelReady;->onPostMessage:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    iget-object p1, p0, Lo/getViewLayoutPosition$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getViewLayoutPosition$onMessageChannelReady;

    iget-object p1, p1, Lo/getViewLayoutPosition$onMessageChannelReady;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-virtual {p1}, Lo/getViewLayoutPosition;->onNavigationEvent()V

    return-void
.end method
