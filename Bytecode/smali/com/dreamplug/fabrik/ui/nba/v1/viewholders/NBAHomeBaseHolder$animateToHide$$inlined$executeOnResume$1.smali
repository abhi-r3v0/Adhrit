.class public final Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight;
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

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field final synthetic onMessageChannelReady:Lo/getServerTime;

.field final synthetic onNavigationEvent:Lo/getPaddingRight;

.field private synthetic onPostMessage:J


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getPaddingRight;JLo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getPaddingRight;

    const-wide/16 p1, 0x190

    iput-wide p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onPostMessage:J

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getServerTime;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getPaddingRight;

    .line 1096
    iget-object p1, p1, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v0, 0x10a0003

    .line 53
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 54
    sget-object v0, Lo/getPaddingRight$onMessageChannelReady;->onNavigationEvent:Lo/getPaddingRight$onMessageChannelReady;

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-string/jumbo v0, "this"

    .line 55
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onPostMessage:J

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    new-instance v0, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v0}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 59
    new-instance v1, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;)V

    check-cast v1, Lo/onDisconnectSetValue;

    const-string v2, "func"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    iput-object v1, v0, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 64
    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->onMessageChannelReady(Lo/getPaddingRight;)Lo/onChildrenLoaded;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
