.class public interface abstract Lo/getInflatedId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u0008H\'J.\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u0008H\'JL\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\r2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00082\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00082\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\'J\u0014\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060\rH\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "",
        "getReferredPendingPeople",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "perPage",
        "",
        "pageNumber",
        "getReferredPeople",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;",
        "getRewards",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;",
        "categoryId",
        "",
        "city",
        "currencies",
        "getRewardsCities",
        "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;",
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
.method public abstract ICustomTabsCallback(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;
    .param p1    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "parent_category_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "currencies"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "wakanda/v4/rewards"
    .end annotation
.end method

.method public abstract onMessageChannelReady(II)Landroidx/lifecycle/LiveData;
    .param p1    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lo/getViewForPosition<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/referral-service/v1/referrals/pending?statuses=created&referee_statuses=gated_in"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/wakanda/v1/rewards/configurations"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "wakanda_v1_rewards_configurations"
    .end annotation
.end method

.method public abstract onNavigationEvent(II)Landroidx/lifecycle/LiveData;
    .param p1    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lo/getViewForPosition<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/referral-service/v1/referrals"
    .end annotation
.end method
