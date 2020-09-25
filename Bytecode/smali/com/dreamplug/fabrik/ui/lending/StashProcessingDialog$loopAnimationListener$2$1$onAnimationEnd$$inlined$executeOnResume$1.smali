.class public final Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/supportsPredictiveItemAnimations$onPostMessage$4;->onAnimationEnd(Landroid/animation/Animator;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/supportsPredictiveItemAnimations$onPostMessage$4;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 10

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->extraCallback(Lo/supportsPredictiveItemAnimations;)Lo/getThumbScrollRange;

    move-result-object p1

    .line 54
    sget-object v0, Lo/getThumbScrollRange$onPostMessage;->onMessageChannelReady:Lo/getThumbScrollRange$onPostMessage;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    new-instance v0, Lo/getSpanSize;

    const/16 v2, 0x9f

    const/16 v3, 0xe6

    invoke-direct {v0, v2, v3, v3}, Lo/getSpanSize;-><init>(III)V

    invoke-static {p1, v0}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lo/getSpanSize;)V

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->onPostMessage(Lo/supportsPredictiveItemAnimations;)V

    goto/16 :goto_1

    .line 61
    :cond_0
    sget-object v0, Lo/getThumbScrollRange$onRelationshipValidationResult;->onNavigationEvent:Lo/getThumbScrollRange$onRelationshipValidationResult;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "multiTextFadeBehaviour"

    const-string v3, "ArraysUtilJVM.asList(this)"

    const-string v4, "$this$asList"

    const-string v5, "elements"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lo/getThumbScrollRange$onTransact;->onMessageChannelReady:Lo/getThumbScrollRange$onTransact;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lo/getThumbScrollRange$asInterface;->onNavigationEvent:Lo/getThumbScrollRange$asInterface;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    .line 4046
    iget-object p1, p1, Lo/supportsPredictiveItemAnimations;->onNavigationEvent:Lo/requireView;

    if-nez p1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    new-array v0, v6, [Lo/requireView$onNavigationEvent;

    .line 77
    new-instance v2, Lo/requireView$onNavigationEvent;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f13043a

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1f40

    invoke-direct {v2, v6, v8, v9, v7}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v2, v0, v7

    .line 78
    new-instance v2, Lo/requireView$onNavigationEvent;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f13043b

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x4e20

    invoke-direct {v2, v6, v8, v9, v7}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5076
    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v0}, Lo/requireView;->ICustomTabsCallback(Ljava/util/List;)V

    .line 80
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback$Stub(Lo/supportsPredictiveItemAnimations;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    new-instance v0, Lo/getSpanSize;

    const/16 v8, 0x17d

    const/16 v9, 0x21c

    invoke-direct {v0, v8, v9, v9}, Lo/getSpanSize;-><init>(III)V

    invoke-static {p1, v0}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lo/getSpanSize;)V

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->onPostMessage(Lo/supportsPredictiveItemAnimations;)V

    .line 67
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback$Stub(Lo/supportsPredictiveItemAnimations;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 68
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage$4;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage$4;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations$onPostMessage;

    iget-object p1, p1, Lo/supportsPredictiveItemAnimations$onPostMessage;->extraCallback:Lo/supportsPredictiveItemAnimations;

    .line 1046
    iget-object p1, p1, Lo/supportsPredictiveItemAnimations;->onNavigationEvent:Lo/requireView;

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    new-array v0, v6, [Lo/requireView$onNavigationEvent;

    .line 69
    new-instance v2, Lo/requireView$onNavigationEvent;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130448

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-direct {v2, v6, v8, v9, v7}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v2, v0, v7

    .line 70
    new-instance v2, Lo/requireView$onNavigationEvent;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130449

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0xfa0

    invoke-direct {v2, v6, v8, v9, v7}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2076
    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Lo/requireView;->ICustomTabsCallback(Ljava/util/List;)V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/StashProcessingDialog$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
