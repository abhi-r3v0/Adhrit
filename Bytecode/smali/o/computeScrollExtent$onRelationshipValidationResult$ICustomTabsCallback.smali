.class final Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent$onRelationshipValidationResult;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$machineUpdateListener$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1103
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-static {v0}, Lo/computeScrollExtent;->onMessageChannelReady(Lo/computeScrollExtent;)V

    .line 1104
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    invoke-virtual {v0}, Lo/getLayoutInflater;->onMessageChannelReady()V

    .line 1105
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v0, v0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    const-string v1, "bigRewardParent"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/computeScrollExtent$onRelationshipValidationResult;

    iget-object v1, v1, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;

    invoke-direct {v2, p0}, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback$5;-><init>(Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x190

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 65
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
