.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;->onNavigationEvent(Z)V
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
.field private synthetic ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic ICustomTabsCallback$Stub:Landroid/animation/ObjectAnimator;

.field private synthetic asInterface:Landroid/animation/ObjectAnimator;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field final synthetic onMessageChannelReady:Z

.field final synthetic onNavigationEvent:Lo/offsetChildrenHorizontal;

.field private synthetic onPostMessage:Landroid/animation/ObjectAnimator;

.field private synthetic onRelationshipValidationResult:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/offsetChildrenHorizontal;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onPostMessage:Landroid/animation/ObjectAnimator;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onRelationshipValidationResult:Landroid/animation/ObjectAnimator;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Landroid/animation/ObjectAnimator;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->asInterface:Landroid/animation/ObjectAnimator;

    iput-boolean p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onMessageChannelReady:Z

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/Animator;

    .line 63
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onPostMessage:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onRelationshipValidationResult:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->asInterface:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 64
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fc999999999999aL    # 0.2

    :goto_0
    const-wide v3, 0x4072c00000000000L    # 300.0

    mul-double v0, v0, v3

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 72
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$onPostMessage;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$onPostMessage;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;)V

    .line 78
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
