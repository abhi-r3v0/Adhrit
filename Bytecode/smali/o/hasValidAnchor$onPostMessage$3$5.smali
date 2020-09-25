.class public final Lo/hasValidAnchor$onPostMessage$3$5;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValidAnchor$onPostMessage$3;->run()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicFragment$mosaicDataObserver$1$2$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationStart",
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
.field private synthetic onMessageChannelReady:Lo/hasValidAnchor$onPostMessage$3;


# direct methods
.method constructor <init>(Lo/hasValidAnchor$onPostMessage$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lo/hasValidAnchor$onPostMessage$3$5;->onMessageChannelReady:Lo/hasValidAnchor$onPostMessage$3;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lo/hasValidAnchor$onPostMessage$3$5;->onMessageChannelReady:Lo/hasValidAnchor$onPostMessage$3;

    iget-object p1, p1, Lo/hasValidAnchor$onPostMessage$3;->onMessageChannelReady:Lo/hasValidAnchor$onPostMessage;

    iget-object p1, p1, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mosaicView:I

    invoke-virtual {p1, v0}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onCreateActionView;

    const-string v0, "mosaicView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
