.class public final Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field public final synthetic onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;


# direct methods
.method constructor <init>(Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_7

    .line 104
    move-object v0, p1

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const-string v2, "CRED_POINTS"

    const/16 v3, 0x16

    if-eqz v1, :cond_6

    .line 105
    iget-object v1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1026
    iget-object v1, v1, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 105
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object v1, v1, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 108
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "fragment.lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 323
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 324
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_4

    .line 109
    iget-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3000
    iget-object p1, p1, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 109
    new-instance v3, Lo/getEdgeEffectFactory$extraCallback;

    iget-object v5, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v5, v5, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v5, v5, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3026
    iget-object v5, v5, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "NA"

    .line 110
    :cond_2
    iget-object v7, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v7, v7, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v7, v7, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 4026
    iget-object v7, v7, Lo/getMinFlingVelocity;->extraCallback:Ljava/lang/String;

    .line 110
    iget-object v8, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object v8, v8, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 4032
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->getInterfaceDescriptor:Ljava/lang/String;

    .line 5009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 110
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    .line 109
    invoke-direct {v3, v7, v8, v5, v0}, Lo/getEdgeEffectFactory$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    const-string v0, "data"

    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5502
    new-instance v0, Lo/onGetChildDrawingOrder$handleMessage;

    invoke-direct {v0, v3}, Lo/onGetChildDrawingOrder$handleMessage;-><init>(Lo/getEdgeEffectFactory$extraCallback;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 326
    iput-boolean v6, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v3, :cond_5

    .line 328
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 329
    iget-object p1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 331
    :cond_5
    :goto_0
    new-instance p1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2$ICustomTabsCallback;

    invoke-direct {p1, v4, v1}, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    .line 114
    :cond_6
    iget-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;->onNavigationEvent:Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 6026
    iget-object p1, p1, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 114
    invoke-static {p1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 115
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object p1, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    add-long/2addr v0, v4

    .line 8000
    sget-object p1, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
