.class public interface abstract Lo/CompositeGeneratedAdaptersObserver;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J2\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u000fH\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/FestiveCampaignService;",
        "",
        "generateCode",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "request",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;",
        "getDetails",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
        "campaignId",
        "",
        "getInvites",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;",
        "perPage",
        "",
        "pageNumber",
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
.method public abstract extraCallback(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "campaign_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/referral-service/v1/referral-invites"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/referral-service/v1/referral-invites"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/referral-service/v1/campaigns/{id}"
    .end annotation
.end method
