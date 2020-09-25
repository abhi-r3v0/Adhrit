.class public final Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMinFlingVelocity$onMessageChannelReady;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2",
        "Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "bottomSheetAlertDialog",
        "Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil;",
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
.field public final synthetic extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;


# direct methods
.method constructor <init>(Lo/getMinFlingVelocity$onMessageChannelReady;Lcom/dreamplug/utils/model/BaseResponse;)V
    .locals 0

    iput-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iput-object p2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 6

    const-string v0, "bottomSheetAlertDialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12268
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 12269
    iget-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 13000
    iget-object p1, p1, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 12269
    invoke-static {p1, v0, v2, v1, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 12270
    iget-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object p1, p1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 13026
    iget-object p1, p1, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 12270
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v3, "fragment.lifecycle"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12322
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v1, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 12323
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 12324
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 13212
    invoke-virtual {v0, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 12271
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 14026
    iget-object v0, v0, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v5, "GEMS"

    .line 12271
    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12272
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 15026
    iget-object v0, v0, Lo/getMinFlingVelocity;->asInterface:Ljava/util/Map;

    const-string v5, "inadequate_gems_cta_click"

    .line 12272
    invoke-static {v5, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 12273
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 16000
    iget-object v0, v0, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const-string v5, "inadequate_gem"

    .line 12273
    invoke-static {v0, v5}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    goto :goto_1

    .line 12275
    :cond_1
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 16026
    iget-object v0, v0, Lo/getMinFlingVelocity;->asInterface:Ljava/util/Map;

    const-string v5, "inadequate_coins_cta_click"

    .line 12275
    invoke-static {v5, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 12276
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 17000
    iget-object v0, v0, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 12276
    iget-object v5, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v5, v5, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 17026
    iget-object v5, v5, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "NA"

    .line 12276
    :cond_2
    invoke-static {v0, v5}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 12326
    :goto_1
    iput-boolean v2, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 12327
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v5, :cond_4

    .line 12328
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, v3, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$2$onCtaClicked$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 12329
    iget-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 12331
    :cond_4
    :goto_2
    new-instance v0, Lo/getMaxFlingVelocity;

    invoke-direct {v0, v4, p1}, Lo/getMaxFlingVelocity;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    const/4 p1, 0x4

    new-array v0, p1, [Lo/addWrite;

    .line 12280
    iget-object v3, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 18026
    iget-object v3, v3, Lo/getMinFlingVelocity;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 19000
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_ID"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 12281
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 20043
    new-instance v3, Lo/addWrite;

    const-string v4, "cred_balance"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const/4 v1, 0x2

    .line 12282
    iget-object v2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    .line 21043
    new-instance v3, Lo/addWrite;

    const-string v4, "error_details"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 12283
    iget-object v2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 22026
    iget-object v2, v2, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 22043
    new-instance v3, Lo/addWrite;

    const-string v4, "currency"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 12279
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_purchase_failure_pay_now_clicked"

    .line 12279
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    .line 227
    iget-object v1, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 1026
    iget-object v1, v1, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 227
    invoke-virtual {v1}, Lo/releaseGlows;->onMessageChannelReady()V

    .line 229
    iget-object v1, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object v1, v1, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "CRED_POINTS"

    .line 229
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301de

    goto :goto_0

    :cond_0
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301e0

    :goto_0
    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v3, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 3026
    iget-object v3, v3, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 230
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1301df

    goto :goto_1

    :cond_1
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1301e1

    :goto_1
    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    iget-object v4, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v4, v4, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 4026
    iget-object v4, v4, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 231
    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f130295

    const v6, 0x7f130294

    if-eqz v4, :cond_2

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v9, v4

    .line 232
    iget-object v4, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v4, v4, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 5026
    iget-object v4, v4, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 232
    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "cred://app/launch?page=control&menu=control_farm"

    goto :goto_3

    :cond_3
    const-string v4, "cred://app/launch?target=referral&extra=whatsapp"

    :goto_3
    move-object v11, v4

    .line 234
    iget-object v4, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v4, v4, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 6026
    iget-boolean v4, v4, Lo/getMinFlingVelocity;->onMessageChannelReady:Z

    if-eqz v4, :cond_a

    .line 235
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    const/4 v4, 0x0

    .line 236
    new-instance v14, Lo/getTargetScrollPosition;

    iget-object v5, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v5}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v5

    :goto_4
    invoke-direct {v14, v1}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v15, Lo/getTargetScrollPosition;

    iget-object v1, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v1

    :goto_5
    invoke-direct {v15, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "#a892c1"

    invoke-direct {v1, v5, v6, v3, v5}, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    new-instance v17, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v8, "deeplink"

    const-string/jumbo v10, "s_tWhiteFour_bgLightBlack"

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v13}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v2

    move-object v13, v4

    move-object/from16 v16, v1

    .line 235
    invoke-direct/range {v12 .. v20}, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 250
    iget-object v1, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v1, v1, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 7026
    iget-object v1, v1, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 250
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v4, "fragment.lifecycle"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v4, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v4}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 323
    new-instance v7, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v7}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v5, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 324
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v8

    sget-object v9, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 7212
    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_8

    .line 251
    iget-object v6, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v6, v6, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 8000
    iget-object v6, v6, Lo/getMinFlingVelocity;->onTransact:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getMoveDuration;

    .line 251
    new-instance v8, Lo/getEdgeEffectFactory$extraCallback;

    iget-object v9, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v9, v9, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 8026
    iget-object v9, v9, Lo/getMinFlingVelocity;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v9, "NA"

    .line 252
    :cond_7
    iget-object v10, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v10, v10, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 9026
    iget-object v10, v10, Lo/getMinFlingVelocity;->extraCallback:Ljava/lang/String;

    .line 251
    invoke-direct {v8, v10, v5, v9, v2}, Lo/getEdgeEffectFactory$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    const-string v2, "data"

    invoke-static {v8, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9502
    new-instance v2, Lo/onGetChildDrawingOrder$handleMessage;

    invoke-direct {v2, v8}, Lo/onGetChildDrawingOrder$handleMessage;-><init>(Lo/getEdgeEffectFactory$extraCallback;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v6, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 326
    iput-boolean v3, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_6

    .line 327
    :cond_8
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_9

    .line 328
    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$$special$$inlined$executeOnResume$1;

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils$redeemReward$1$onResponse$4$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 329
    iget-object v2, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 331
    :cond_9
    :goto_6
    new-instance v2, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {v2, v7, v1}, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    .line 256
    :cond_a
    new-instance v1, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 257
    iget-object v3, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 10026
    iget-object v3, v3, Lo/getMinFlingVelocity;->ICustomTabsCallback$Stub:Lo/releaseGlows;

    .line 257
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    const-string v3, "fragment.requireContext()"

    invoke-static {v9, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v3, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/CharSequence;

    .line 259
    iget-object v3, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 260
    iget-object v3, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v3, v3, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 11026
    iget-object v3, v3, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    .line 260
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 261
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 263
    :cond_b
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    move-object v11, v2

    .line 265
    iget-object v2, v0, Lo/getMinFlingVelocity$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v2, v2, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 12026
    iget-object v2, v2, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "GEMS"

    .line 265
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 266
    move-object v12, v0

    check-cast v12, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;

    move-object v8, v1

    .line 256
    invoke-direct/range {v8 .. v14}, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;Ljava/lang/String;Z)V

    .line 286
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
