.class public interface abstract Lo/computeHorizontalScrollExtent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeHorizontalScrollExtent$onNavigationEvent;,
        Lo/computeHorizontalScrollExtent$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 E2\u00020\u0001:\u0001EJ\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u0001H\'J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\u0003H\'J \u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\'J=\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00040\u0003H\'J*\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u00062\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'JG\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u00062\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010!J\u001e\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0006H\'J*\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010&\u001a\u00020\u00062\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0006H\'J,\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010&\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0006H\'J4\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010+\u001a\u00020\u00132\u0008\u0008\u0001\u0010,\u001a\u00020\u0013H\'J4\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00062\n\u0008\u0003\u0010/\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u00100\u001a\u00020\u0006H\'J>\u00101\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0003\u00103\u001a\u0002042\u0008\u0008\u0003\u00105\u001a\u00020\u00062\u0008\u0008\u0003\u00106\u001a\u000207H\'J4\u00101\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0003\u00105\u001a\u00020\u00062\u0008\u0008\u0003\u00106\u001a\u000207H\'JI\u00108\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010:\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010;J=\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010=J=\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0015J,\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010A\u001a\u0004\u0018\u00010BH\'J,\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010A\u001a\u0004\u0018\u00010BH\'J\u001e\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006F"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "",
        "archiveReward",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "usageId",
        "",
        "batchLikeRewards",
        "Ljava/lang/Void;",
        "body",
        "getAddressList",
        "Lcom/dreamplug/fabrik/ui/address/AddressListResponse;",
        "getCertificateData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
        "rewardId",
        "getClaimedReward",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;",
        "usageType",
        "page",
        "",
        "perPage",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getClaimedRewardDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
        "getClaimedSection",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;",
        "getFarmCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "cardId",
        "getFarmCards",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
        "farm",
        "city",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getFarmDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsResponse;",
        "getFarmMiniRewards",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;",
        "farmType",
        "getFarms",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;",
        "getMosaicData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;",
        "offset",
        "limit",
        "getReferralBottomSheet",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "rewardUsageId",
        "sheetType",
        "getSections",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
        "userSelection",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;",
        "state",
        "showSoldOut",
        "",
        "getSuggestedReward",
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;",
        "filters",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getWishlistedFarmCards",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getWishlistedRewards",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;",
        "redeemReward",
        "redeemRewardBody",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;",
        "redeemUsageReward",
        "unarchiveReward",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/computeHorizontalScrollExtent$onPostMessage;->onPostMessage:Lo/computeHorizontalScrollExtent$onPostMessage;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/usage_type_sections"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;
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
        onPostMessage = "lifestyle/wakanda/v1/rewards/usages/{rewardUsageId}/archive"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "usage_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/usages"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "filters"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/remote-control/cards"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "farmId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/{farmId}/child-cards"
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
        onPostMessage = "lifestyle/wakanda/v1/rewards/usages/{rewardUsageId}/unarchive"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "reward_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "reward_usage_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "sheet_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/referral-bottom-sheet"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;Ljava/lang/String;Z)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "rewardId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "state"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "show-sold-out-variant"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/{rewardId}/input-form/{state}"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "reward_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/{reward_id}/outcome/offline/certificate"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "usage_id"
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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/usages/{usage_id}/redeem"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;Ljava/lang/String;Z)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "rewardId"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "state"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "show-sold-out-variant"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;",
            "Ljava/lang/String;",
            "Z)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/{rewardId}/input-form/{state}/sections"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/address/AddressListResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "address-service/v1/user-addresses"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "address_service_user_addresses"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)Lo/clearScrap;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "lifestyle/wakanda/v1/wishlist/cards"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;
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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/rewards/usages/{rewardUsageId}"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/wishlist/cards/all"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "cardId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "usage_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/cards/{cardId}"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "farm"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/{farm}/cards"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/wishlist/cards/live"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "farmId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/{farmId}"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "offset"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/mosaic/cards"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;
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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "lifestyle/wakanda/v1/rewards/{reward_id}/redeem"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "farmType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/farms/type/{farmType}"
    .end annotation
.end method
