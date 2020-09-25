.class public interface abstract Lo/setThumbPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setThumbPosition$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J4\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00072\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\'J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u000cH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountService;",
        "",
        "recentRewardCount",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/androidapp/data/repository/rewardcount/RecentCount;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "perPage",
        "",
        "page",
        "city",
        "",
        "rewardCount",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;",
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
.method public abstract onNavigationEvent(IILjava/lang/String;)Lo/clearScrap;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/androidapp/data/repository/rewardcount/RecentCount;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "lifestyle/wakanda/v1/recent/cards"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "wakanda/v1/rewards/usages/counts"
    .end annotation
.end method
