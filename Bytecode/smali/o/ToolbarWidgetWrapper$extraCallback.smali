.class public final Lo/ToolbarWidgetWrapper$extraCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ToolbarWidgetWrapper;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceFragment$onViewCreated$2",
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
.field final synthetic onPostMessage:Lo/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lo/ToolbarWidgetWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 54
    iget-object p1, p0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p1, v0}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottieView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/ToolbarWidgetWrapper$extraCallback;->onPostMessage:Lo/ToolbarWidgetWrapper;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/ToolbarWidgetWrapper$extraCallback$onMessageChannelReady;-><init>(Lo/ToolbarWidgetWrapper$extraCallback;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x0

    .line 1045
    invoke-static {p1, v0, v2, v3, v1}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
