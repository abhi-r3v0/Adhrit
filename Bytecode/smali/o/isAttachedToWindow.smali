.class public interface abstract Lo/isAttachedToWindow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isAttachedToWindow$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J(\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u000fH\'J(\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000b2\u0008\u0008\u0003\u0010\u0014\u001a\u00020\u0015H\'J*\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0017H\'J,\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\'J\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StoreService;",
        "",
        "createOrder",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "params",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StoreOrder;",
        "getStorePaymentSlabs",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
        "usageId",
        "",
        "landing",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;",
        "page",
        "",
        "perPage",
        "redeemDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;",
        "rewardId",
        "showSoldOut",
        "",
        "redeemRewardAssociated",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemAssociateRequestModel;",
        "redeemRewardInitiated",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
        "redeemRewardBody",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;",
        "rollbackRedeem",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(II)Lo/clearScrap;
    .param p1    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/landing-page/cards"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "story_landing"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "reward_id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/{reward_id}/redeem/initiate"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "rewardUsageId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/usages/{rewardUsageId}/rollback"
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/focusSearch;)Lo/clearScrap;
    .param p1    # Lo/focusSearch;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/focusSearch;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/v2/orders"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "rewardUsageId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/usages/{rewardUsageId}/payment-slider-details"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemAssociateRequestModel;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "reward_id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemAssociateRequestModel;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemAssociateRequestModel;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/usages/{reward_id}/payment-slab"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Z)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "reward_id"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "show-sold-out-variant"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/{reward_id}/components?component-types=input_form,entity,logo_url"
    .end annotation
.end method
