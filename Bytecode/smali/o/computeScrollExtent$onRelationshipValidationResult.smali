.class public final Lo/computeScrollExtent$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;-><init>()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic extraCallback:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "it"

    .line 95
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 97
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-static {v0}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    const-string v1, "redeemed"

    .line 100
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    .line 2069
    iget-object v0, v0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, v0, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 101
    :cond_1
    iget-object p1, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 514
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 515
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v5, 0x1

    if-ltz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 102
    iget-object v1, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v1, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getLayoutInflater;

    const-string v3, "bigRewardParent"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lo/computeScrollExtent$onRelationshipValidationResult;->extraCallback:Lo/computeScrollExtent;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x190

    new-instance v0, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Lo/computeScrollExtent$onRelationshipValidationResult;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v1, v3, v6, v7, v0}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 517
    iput-boolean v5, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_4

    .line 519
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, v2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/computeScrollExtent$onRelationshipValidationResult;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 520
    iget-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 522
    :cond_4
    :goto_1
    new-instance v0, Lo/computeScrollExtent$onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {v0, v4, p1}, Lo/computeScrollExtent$onRelationshipValidationResult$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_5
    return-void
.end method
