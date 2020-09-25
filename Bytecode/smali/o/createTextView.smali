.class public interface abstract Lo/createTextView;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008g\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\'J\u0010\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\'J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u0006H\'J\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u0006H\'J\u0016\u0010\r\u001a\u00020\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005H\'J\u0008\u0010\u000f\u001a\u00020\u0003H\'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lclub/cred/interjection/data/db/CampaignDatabaseDao;",
        "",
        "deleteCampaigns",
        "",
        "ids",
        "",
        "",
        "getAllCampaigns",
        "Lclub/cred/interjection/data/models/Campaign;",
        "getCampaign",
        "id",
        "getCampaignsWithStartingEvent",
        "event",
        "insertCampaigns",
        "campaigns",
        "nukeTable",
        "updateTotalInvokedCountForCampaign",
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
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraCallback()V
.end method

.method public abstract extraCallback(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)V
.end method

.method public abstract onNavigationEvent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lclub/cred/interjection/data/models/Campaign;
.end method
