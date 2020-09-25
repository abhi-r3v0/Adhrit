.class public final Lo/stopScrollersInternal$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScrollersInternal;->onNavigationEvent(Lo/releaseGlows;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$redeemReward$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
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
.field final synthetic onNavigationEvent:Lo/stopScrollersInternal;

.field final synthetic onPostMessage:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toDebugString$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    iput-object p2, p0, Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string/jumbo v1, "response"

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/releaseGlows;

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 1372
    invoke-virtual {v0, p1}, Lo/pullGlows;->extraCallback(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    invoke-static {v0}, Lo/stopScrollersInternal;->ICustomTabsCallback(Lo/stopScrollersInternal;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "reward_purchase_result_successful"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 188
    move-object v0, p1

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 188
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 2033
    iget-object v1, v1, Lo/stopScrollersInternal;->asInterface:Lo/setActive;

    .line 190
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 191
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 3033
    iget-boolean p1, p1, Lo/stopScrollersInternal;->postMessage:Z

    if-eqz p1, :cond_1

    .line 191
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object p1, Lo/isInLayout;->read:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 191
    :cond_1
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object p1, Lo/isInLayout;->IconCompatParcelizer:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 191
    :goto_0
    new-instance p1, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    invoke-direct {p1, p0, v0}, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;-><init>(Lo/stopScrollersInternal$onNavigationEvent;Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5018
    new-instance v0, Lo/updateItemAt$extraCallback;

    invoke-direct {v0, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v2, v0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 224
    :cond_2
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    .line 225
    sget-object p1, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-virtual {p1}, Lo/getCompoundPaddingRight;->extraCallback()V

    return-void

    .line 227
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 228
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    invoke-static {v0}, Lo/stopScrollersInternal;->ICustomTabsCallback(Lo/stopScrollersInternal;)Ljava/util/Map;

    move-result-object v0

    .line 229
    move-object v2, p1

    check-cast v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object v3, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 229
    check-cast v3, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    const-string v5, "error_details"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "reward_purchase_result_unsuccessful"

    .line 228
    invoke-static {v3, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 7014
    iget-object v0, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 231
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    .line 236
    iget-object v3, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 7033
    iget-object v3, v3, Lo/stopScrollersInternal;->asBinder:Lo/getServerTime;

    if-eqz v3, :cond_8

    .line 236
    iget-object v3, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 8033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const-string v6, "GEMS"

    .line 236
    invoke-static {v3, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    const-string v6, "inadequate_gems"

    invoke-static {v3, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 p1, 0x4

    new-array v1, p1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 238
    iget-object v3, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 9033
    iget-object v3, v3, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 238
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 9065
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v3, v4

    .line 10043
    :goto_3
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "reward_ID"

    invoke-direct {v6, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x1

    .line 239
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v3}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 11043
    new-instance v6, Lo/addWrite;

    const-string v7, "cred_balance"

    invoke-direct {v6, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x2

    .line 240
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v3

    .line 12043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x3

    .line 241
    iget-object v3, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 13033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 13043
    new-instance v5, Lo/addWrite;

    const-string v6, "currency"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const-string v2, "pairs"

    .line 237
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_purchase_failure_bottom_sheet_shown"

    .line 237
    invoke-static {p1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 244
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 15000
    iget-object p1, p1, Lo/stopScrollersInternal;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/computeHorizontalScrollExtent;

    .line 244
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 15033
    iget-object v1, v1, Lo/stopScrollersInternal;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    const-string v2, "failure"

    .line 15145
    invoke-interface {p1, v1, v4, v2}, Lo/computeHorizontalScrollExtent;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 245
    new-instance v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v1, p0, v0}, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;-><init>(Lo/stopScrollersInternal$onNavigationEvent;Lcom/dreamplug/utils/model/BaseResponse;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    .line 313
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v4

    :cond_9
    const-string v3, "inadequate_points"

    invoke-static {v4, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 16033
    iget-object v3, v3, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const-string v4, "CRED_POINTS"

    .line 313
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 314
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 17033
    iget-object p1, p1, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 314
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    new-instance v1, Lo/stopScrollersInternal$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v1, p0, v0}, Lo/stopScrollersInternal$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/stopScrollersInternal$onNavigationEvent;Lcom/dreamplug/utils/model/BaseResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 368
    :cond_a
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 18033
    iget-object v0, v0, Lo/stopScrollersInternal;->asInterface:Lo/setActive;

    .line 368
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 19033
    iget-object v0, v0, Lo/stopScrollersInternal;->ICustomTabsService:Lo/nextTransactionOrder;

    if-eqz v0, :cond_b

    .line 20014
    iget-object v3, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 21014
    iget-object v2, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 369
    invoke-interface {v0, v3, v2}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_b
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/releaseGlows;

    if-eqz v0, :cond_c

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22000
    iget-object v0, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 21372
    invoke-virtual {v0, p1}, Lo/pullGlows;->extraCallback(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    :cond_c
    return-void
.end method
