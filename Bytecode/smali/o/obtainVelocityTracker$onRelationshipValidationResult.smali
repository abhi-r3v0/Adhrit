.class public final Lo/obtainVelocityTracker$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainVelocityTracker;->onMessageChannelReady(Z)V
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lending/dialog/CustomEmiSelectorDialog$settleSeekBar$1$1$1",
        "com/dreamplug/fabrik/ui/lending/dialog/CustomEmiSelectorDialog$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:I

.field public final synthetic extraCallback:I

.field public final synthetic onNavigationEvent:Lo/obtainVelocityTracker;

.field public final synthetic onPostMessage:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;IILo/obtainVelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->onPostMessage:Landroid/animation/ValueAnimator;

    iput p2, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->extraCallback:I

    iput p3, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 251
    iget-object p1, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 308
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->onNavigationEvent:Lo/obtainVelocityTracker;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->slider:I

    invoke-virtual {v1, v3}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/findFirstReferenceChildPosition;

    iget-object v3, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    iget v5, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->extraCallback:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    iget v5, p0, Lo/obtainVelocityTracker$onRelationshipValidationResult;->ICustomTabsCallback:I

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lo/findFirstReferenceChildPosition;->setProgress(I)V

    .line 311
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_2

    .line 313
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/dialog/CustomEmiSelectorDialog$settleSeekBar$$inlined$let$lambda$1$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/lending/dialog/CustomEmiSelectorDialog$settleSeekBar$$inlined$let$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/obtainVelocityTracker$onRelationshipValidationResult;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 314
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 316
    :cond_2
    :goto_0
    new-instance v0, Lo/obtainVelocityTracker$onRelationshipValidationResult$3;

    invoke-direct {v0, v2, p1}, Lo/obtainVelocityTracker$onRelationshipValidationResult$3;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
