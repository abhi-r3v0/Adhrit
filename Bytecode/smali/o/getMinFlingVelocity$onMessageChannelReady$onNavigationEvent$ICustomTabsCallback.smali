.class public final Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

.field public final synthetic onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;


# direct methods
.method constructor <init>(Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iput-object p2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 155
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1026
    iget-object v0, v0, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 155
    invoke-virtual {v0}, Lo/releaseGlows;->onMessageChannelReady()V

    .line 156
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object v0, v0, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 323
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 324
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3000
    iget-object v2, v2, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 157
    new-instance v5, Lo/getEdgeEffectFactory$extraCallback;

    iget-object v7, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iget-object v7, v7, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v7, v7, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3026
    iget-object v7, v7, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, "NA"

    .line 158
    :cond_1
    iget-object v8, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;

    iget-object v8, v8, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v8, v8, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 4026
    iget-object v8, v8, Lo/getMinFlingVelocity;->extraCallback:Ljava/lang/String;

    .line 158
    iget-object v9, p0, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v9, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 5009
    iget-object v9, v9, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v9, :cond_2

    .line 158
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    .line 157
    invoke-direct {v5, v8, v4, v7, v9}, Lo/getEdgeEffectFactory$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    const-string v4, "data"

    invoke-static {v5, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5502
    new-instance v4, Lo/onGetChildDrawingOrder$handleMessage;

    invoke-direct {v4, v5}, Lo/onGetChildDrawingOrder$handleMessage;-><init>(Lo/getEdgeEffectFactory$extraCallback;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v2, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 326
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_4

    .line 328
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 329
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 331
    :cond_4
    :goto_0
    new-instance v1, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1, v3, v0}, Lo/getMinFlingVelocity$onMessageChannelReady$onNavigationEvent$ICustomTabsCallback$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
