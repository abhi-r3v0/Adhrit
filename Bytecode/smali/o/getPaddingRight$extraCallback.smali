.class public final Lo/getPaddingRight$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeCallbacks$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingRight;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$listener$1",
        "Lcom/dreamplug/fabrik/ui/nba/adapter/control/SlidingNBACard$InteractionListener;",
        "onCtaClick",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "onDismissRequested",
        "onSnoozeRequested",
        "onSwipeEnd",
        "direction",
        "",
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
.field final synthetic extraCallback:Lo/getPaddingRight;


# direct methods
.method constructor <init>(Lo/getPaddingRight;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/initState;->onPostMessage(Z)V

    .line 84
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    const-string v0, "nba_home_cta"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/initState;->onPostMessage(Z)V

    .line 106
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2409
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lo/initState;->onNavigationEvent:Z

    .line 107
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->onNavigationEvent(Lo/getPaddingRight;)Lo/toLegacyStreamType;

    move-result-object v0

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "getLifecycleOwner().lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    new-instance v3, Lo/getPaddingRight$extraCallback$onPostMessage;

    invoke-direct {v3, p0}, Lo/getPaddingRight$extraCallback$onPostMessage;-><init>(Lo/getPaddingRight$extraCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/initState;->onPostMessage(Z)V

    .line 96
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1409
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lo/initState;->onNavigationEvent:Z

    .line 97
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->onNavigationEvent(Lo/getPaddingRight;)Lo/toLegacyStreamType;

    move-result-object v0

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "getLifecycleOwner().lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    new-instance v3, Lo/getPaddingRight$extraCallback$extraCallback;

    invoke-direct {v3, p0}, Lo/getPaddingRight$extraCallback$extraCallback;-><init>(Lo/getPaddingRight$extraCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 3

    const-string v0, "direction"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    new-instance v0, Lo/getPaddingRight$extraCallback$onNavigationEvent;

    invoke-direct {v0, p0, p2}, Lo/getPaddingRight$extraCallback$onNavigationEvent;-><init>(Lo/getPaddingRight$extraCallback;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
