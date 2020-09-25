.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
.field private synthetic extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1000
    iget-object p1, p1, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 53
    new-instance v0, Lo/getEdgeEffectFactory$extraCallback;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1026
    iget-object v1, v1, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "NA"

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object v2, v2, Lo/getMinFlingVelocity;->extraCallback:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 2032
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->getInterfaceDescriptor:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object v4, v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 54
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    .line 53
    invoke-direct {v0, v2, v3, v1, v4}, Lo/getEdgeEffectFactory$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3502
    new-instance v1, Lo/onGetChildDrawingOrder$handleMessage;

    invoke-direct {v1, v0}, Lo/onGetChildDrawingOrder$handleMessage;-><init>(Lo/getEdgeEffectFactory$extraCallback;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {p1, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
