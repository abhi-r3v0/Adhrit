.class public interface abstract Lo/onCreateContextMenu;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00060\u00032\u0016\u0008\u0001\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\'J\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J\u0014\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u0003H\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/asympote/AsymptoteService;",
        "",
        "getAppsFlierAttribution",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "",
        "",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "data",
        "getCampaignDetails",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "campaignId",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignRequest;",
        "getLinkedCampaign",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;",
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
.method public abstract ICustomTabsCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "campaign-service/v1/user-campaigns"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/util/Map;)Lo/clearScrap;
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
            "Lo/clearScrap<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "campaign-service/v1/one-link/attributes"
    .end annotation
.end method

.method public abstract extraCallback(Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "campaign-service/v1/user-campaigns/link"
    .end annotation
.end method
