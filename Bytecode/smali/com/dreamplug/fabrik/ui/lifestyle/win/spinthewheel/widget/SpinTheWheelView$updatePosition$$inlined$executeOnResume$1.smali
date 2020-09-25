.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrolled;
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
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/dispatchOnScrolled;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/dispatchOnScrolled;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    .line 1034
    iget p1, p1, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    .line 53
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    invoke-virtual {v0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    .line 2034
    iget p1, p1, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    invoke-static {p1, v0, v1}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    .line 3034
    iget-object p1, p1, Lo/dispatchOnScrolled;->asInterface:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 60
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    .line 4034
    iget-object v0, p1, Lo/dispatchOnScrolled;->onTransact:Landroid/media/SoundPool;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onPostMessage:Lo/dispatchOnScrolled;

    invoke-virtual {p1}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v0

    .line 5034
    iput v0, p1, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
