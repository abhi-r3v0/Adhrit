.class public interface abstract Lo/createImageView;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'\u00a8\u0006\u0008"
    }
    d2 = {
        "Lclub/cred/interjection/data/InterjectionService;",
        "",
        "getCampaigns",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lclub/cred/interjection/data/models/CampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "lastUpdatedTime",
        "",
        "interjection_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(J)Lo/clearScrap;
    .param p1    # J
        .annotation runtime Lo/isText;
            onNavigationEvent = "offset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lo/clearScrap<",
            "Lclub/cred/interjection/data/models/CampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/interjection-service/v1/interject/campaigns"
    .end annotation
.end method
