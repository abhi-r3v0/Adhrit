.class public final Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$redeemReward$1$onResponse$3$onResponse$2$1",
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
.field private synthetic onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 6

    const-string v0, "bottomSheetAlertDialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13295
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13296
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 14000
    iget-object p1, p1, Lo/stopScrollersInternal;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 13296
    invoke-static {p1, v2, v1, v0, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 13297
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 14033
    iget-object p1, p1, Lo/stopScrollersInternal;->asBinder:Lo/getServerTime;

    .line 13297
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    const/4 p1, 0x4

    new-array v3, p1, [Lo/addWrite;

    .line 13299
    iget-object v4, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 15033
    iget-object v4, v4, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 13299
    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 15065
    iget-object v2, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 16043
    :cond_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_ID"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    .line 13300
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v0}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 17043
    new-instance v2, Lo/addWrite;

    const-string v4, "cred_balance"

    invoke-direct {v2, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v1

    const/4 v0, 0x2

    .line 13301
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v1

    .line 18043
    new-instance v2, Lo/addWrite;

    const-string v4, "error_details"

    invoke-direct {v2, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v0

    const/4 v0, 0x3

    .line 13302
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 19033
    iget-object v1, v1, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 19043
    new-instance v2, Lo/addWrite;

    const-string v4, "currency"

    invoke-direct {v2, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v0

    const-string v0, "pairs"

    .line 13298
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_purchase_failure_pay_now_clicked"

    .line 13298
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    .line 257
    iget-object v1, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 1033
    iget-object v1, v1, Lo/stopScrollersInternal;->getInterfaceDescriptor:Lo/getServerTime;

    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 258
    :cond_0
    iget-object v1, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v1, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/releaseGlows;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/releaseGlows;->onMessageChannelReady()V

    .line 260
    :cond_1
    iget-object v1, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 2033
    iget-object v1, v1, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const-string v2, "CRED_POINTS"

    .line 260
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301de

    goto :goto_0

    :cond_2
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301e0

    :goto_0
    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v3, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 3033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 261
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1301df

    goto :goto_1

    :cond_3
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1301e1

    :goto_1
    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 4033
    iget-object v4, v4, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 262
    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f130295

    const v6, 0x7f130294

    if-eqz v4, :cond_4

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v9, v4

    .line 263
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 5033
    iget-object v4, v4, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 263
    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "cred://app/launch?page=control"

    goto :goto_3

    :cond_5
    const-string v4, "cred://app/launch?target=referral&extra=whatsapp"

    :goto_3
    move-object v11, v4

    .line 265
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 6033
    iget-object v4, v4, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const-string v7, "GEMS"

    .line 265
    invoke-static {v4, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 266
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    const/4 v4, 0x0

    .line 267
    new-instance v14, Lo/getTargetScrollPosition;

    iget-object v5, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v5, v5, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v5}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v5

    :goto_4
    invoke-direct {v14, v1}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v15, Lo/getTargetScrollPosition;

    iget-object v1, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v1

    :goto_5
    invoke-direct {v15, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 271
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "#a892c1"

    invoke-direct {v1, v5, v6, v3, v5}, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 272
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

    .line 266
    invoke-direct/range {v12 .. v20}, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 281
    iget-object v1, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 7033
    iget-object v1, v1, Lo/stopScrollersInternal;->newSession:Lo/rerunTransactionQueue;

    if-eqz v1, :cond_8

    .line 281
    iget-object v3, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 8033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback:Ljava/lang/String;

    .line 281
    invoke-interface {v1, v2, v3, v5}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    .line 283
    :cond_9
    new-instance v1, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 284
    iget-object v3, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v3, v3, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 9033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 284
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fragment.requireContext()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v4}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    .line 286
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-virtual {v4}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 287
    iget-object v4, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v4, v4, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 10033
    iget-object v4, v4, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 287
    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 288
    iget-object v2, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 11033
    iget-object v2, v2, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 288
    invoke-virtual {v2, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 290
    :cond_a
    iget-object v2, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 12033
    iget-object v2, v2, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 290
    invoke-virtual {v2, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v9, v2

    const-string v2, "if (rewardCurrency == \"C\u2026                        }"

    .line 287
    invoke-static {v9, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v2, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 13033
    iget-object v2, v2, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 292
    invoke-static {v2, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 293
    move-object v10, v0

    check-cast v10, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;

    move-object v6, v1

    move-object v7, v3

    .line 283
    invoke-direct/range {v6 .. v12}, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
