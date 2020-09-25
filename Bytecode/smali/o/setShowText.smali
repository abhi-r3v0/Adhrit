.class public interface abstract Lo/setShowText;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\'J,\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0016\u0008\u0001\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignService;",
        "",
        "getCampaigns",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "linkReferral",
        "map",
        "",
        "",
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
.method public abstract extraCallback(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "referral-service/v1/referrals/link"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "referral-service/v1/user-campaigns"
    .end annotation
.end method
