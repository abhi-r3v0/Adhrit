.class public interface abstract Lo/removeAndRecycleView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAndRecycleView$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\'J\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J@\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u000fH\'J4\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u000fH\'J\u001e\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u001e\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "",
        "ack",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "externalId",
        "",
        "context",
        "dismiss",
        "fetch",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;",
        "header",
        "dataContext",
        "nbaApiVersion",
        "",
        "fetchRemoteControl",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
        "remindLater",
        "seen",
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
.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-PERMS"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "context"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "data_context"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-NBA-API-VERSION"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getInnerThread;
        onMessageChannelReady = {
            "x-app-theme: neu"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/nba-service/v1/cards"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "external_id"
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
        onPostMessage = "/nba-service/v1/cards/{external_id}/dismiss"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;I)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-PERMS"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "context"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-NBA-API-VERSION"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getInnerThread;
        onMessageChannelReady = {
            "x-app-theme: neu"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/nba-service/v1/cards"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "remote_control_v2"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "external_id"
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
        onPostMessage = "/nba-service/v1/cards/{external_id}/remind-later"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "external_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "context"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/nba-service/v1/cards/{external_id}/ack"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "external_id"
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
        onPostMessage = "/nba-service/v1/cards/{external_id}/seen"
    .end annotation
.end method
