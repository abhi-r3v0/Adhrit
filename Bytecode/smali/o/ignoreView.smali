.class public interface abstract Lo/ignoreView;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u0014\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003H\'J1\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\'\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\'J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\u0003H\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreService;",
        "",
        "ackBadge",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "externalId",
        "",
        "getBadges",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
        "getInAppNotifications",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
        "pageSize",
        "",
        "lastCursor",
        "(Ljava/lang/Integer;Ljava/lang/String;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "postNotificationAck",
        "Ljava/lang/Void;",
        "body",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationSeenAckRequestBody;",
        "resetUnseenCount",
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
.method public abstract ICustomTabsCallback(Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_size"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "last_cursor"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/in-app-service/v1/inapp/notifications"
    .end annotation
.end method

.method public abstract extraCallback(Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationSeenAckRequestBody;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationSeenAckRequestBody;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationSeenAckRequestBody;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/in-app-service/v1/inapp/notifications/ack"
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
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/in-app-service/v1/inapp/badges/{external_id}/ack"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/in-app-service/v1/inapp/notifications/reset/unseen-count"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/in-app-service/v1/inapp/badges"
    .end annotation
.end method
