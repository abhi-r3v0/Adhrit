.class public final Lo/supportsPredictiveItemAnimations$onPostMessage$4;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/supportsPredictiveItemAnimations$onPostMessage;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;


# direct methods
.method constructor <init>(Lo/supportsPredictiveItemAnimations$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 272
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 329
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 330
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 273
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v3}, Lo/supportsPredictiveItemAnimations;->extraCallback(Lo/supportsPredictiveItemAnimations;)Lo/getThumbScrollRange;

    move-result-object v3

    .line 274
    sget-object v5, Lo/getThumbScrollRange$onPostMessage;->onMessageChannelReady:Lo/getThumbScrollRange$onPostMessage;

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    iget-object v1, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v1, v1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    new-instance v3, Lo/getSpanSize;

    const/16 v5, 0x9f

    const/16 v6, 0xe6

    invoke-direct {v3, v5, v6, v6}, Lo/getSpanSize;-><init>(III)V

    invoke-static {v1, v3}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lo/getSpanSize;)V

    .line 279
    iget-object v1, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v1, v1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v1}, Lo/supportsPredictiveItemAnimations;->onPostMessage(Lo/supportsPredictiveItemAnimations;)V

    goto/16 :goto_2

    .line 281
    :cond_1
    sget-object v5, Lo/getThumbScrollRange$onRelationshipValidationResult;->onNavigationEvent:Lo/getThumbScrollRange$onRelationshipValidationResult;

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "multiTextFadeBehaviour"

    const-string v7, "ArraysUtilJVM.asList(this)"

    const-string v8, "$this$asList"

    const-string v9, "elements"

    const/4 v10, 0x2

    if-nez v5, :cond_4

    sget-object v5, Lo/getThumbScrollRange$onTransact;->onMessageChannelReady:Lo/getThumbScrollRange$onTransact;

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lo/getThumbScrollRange$asInterface;->onNavigationEvent:Lo/getThumbScrollRange$asInterface;

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 296
    :cond_2
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    .line 5046
    iget-object v3, v3, Lo/supportsPredictiveItemAnimations;->onNavigationEvent:Lo/requireView;

    if-nez v3, :cond_3

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-array v5, v10, [Lo/requireView$onNavigationEvent;

    .line 297
    new-instance v6, Lo/requireView$onNavigationEvent;

    sget-object v10, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v10, 0x7f13043a

    invoke-static {v10}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x1f40

    invoke-direct {v6, v10, v11, v12, v1}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v6, v5, v1

    .line 298
    new-instance v6, Lo/requireView$onNavigationEvent;

    sget-object v10, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v10, 0x7f13043b

    invoke-static {v10}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x4e20

    invoke-direct {v6, v10, v11, v12, v1}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v6, v5, v4

    .line 296
    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6076
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7013
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6129
    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3, v1}, Lo/requireView;->ICustomTabsCallback(Ljava/util/List;)V

    .line 300
    iget-object v1, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v1, v1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback$Stub(Lo/supportsPredictiveItemAnimations;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 285
    :cond_4
    :goto_1
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    new-instance v5, Lo/getSpanSize;

    const/16 v11, 0x17d

    const/16 v12, 0x21c

    invoke-direct {v5, v11, v12, v12}, Lo/getSpanSize;-><init>(III)V

    invoke-static {v3, v5}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lo/getSpanSize;)V

    .line 286
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v3}, Lo/supportsPredictiveItemAnimations;->onPostMessage(Lo/supportsPredictiveItemAnimations;)V

    .line 287
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v3}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback$Stub(Lo/supportsPredictiveItemAnimations;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v3

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 288
    iget-object v3, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v3, v3, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    .line 2046
    iget-object v3, v3, Lo/supportsPredictiveItemAnimations;->onNavigationEvent:Lo/requireView;

    if-nez v3, :cond_5

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    new-array v5, v10, [Lo/requireView$onNavigationEvent;

    .line 289
    new-instance v6, Lo/requireView$onNavigationEvent;

    sget-object v10, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v10, 0x7f130448

    invoke-static {v10}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0xbb8

    invoke-direct {v6, v10, v11, v12, v1}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v6, v5, v1

    .line 290
    new-instance v6, Lo/requireView$onNavigationEvent;

    sget-object v10, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v10, 0x7f130449

    invoke-static {v10}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0xfa0

    invoke-direct {v6, v10, v11, v12, v1}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v6, v5, v4

    .line 288
    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3076
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4013
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3129
    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3, v1}, Lo/requireView;->ICustomTabsCallback(Ljava/util/List;)V

    .line 332
    :goto_2
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 333
    :cond_6
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_7

    .line 334
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/supportsPredictiveItemAnimations$onPostMessage$4;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 335
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 337
    :cond_7
    :goto_3
    new-instance v0, Lo/supportsPredictiveItemAnimations$onPostMessage$4$extraCallback;

    invoke-direct {v0, v2, p1}, Lo/supportsPredictiveItemAnimations$onPostMessage$4$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 7301
    iget-object v0, p0, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object v0, v0, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {v0}, Lo/supportsPredictiveItemAnimations;->onTransact(Lo/supportsPredictiveItemAnimations;)V

    return-void
.end method
