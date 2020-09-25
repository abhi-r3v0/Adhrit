.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
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
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1026
    iget-object p1, p1, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "GEMS"

    .line 53
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object p1, p1, Lo/getMinFlingVelocity;->asInterface:Ljava/util/Map;

    const-string v0, "inadequate_gems_cta_click"

    .line 54
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3000
    iget-object p1, p1, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string v0, "inadequate_gem"

    .line 55
    invoke-static {p1, v0}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3026
    iget-object p1, p1, Lo/getMinFlingVelocity;->asInterface:Ljava/util/Map;

    const-string v0, "inadequate_coins_cta_click"

    .line 57
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 4000
    iget-object p1, p1, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 4026
    iget-object v0, v0, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "NA"

    .line 58
    :cond_1
    invoke-static {p1, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
