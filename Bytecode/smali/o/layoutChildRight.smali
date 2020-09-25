.class public interface abstract Lo/layoutChildRight;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "image-service/v1/deleteCustomPic"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/Boolean;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "enable_fabrik"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "aggregator/v1/users/profile"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "v1_users_profile"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/getInnerThread;
        onMessageChannelReady = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "aggregator/v1/whatsapp/optin"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/GetProfilePicResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/image-service/v1/user"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "v1_users_profile_pic"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "aggregator/v1/users/appstate"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/androidapp/profile/WhatsappConsentState;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "aggregator/v1/whatsapp/consent/status"
    .end annotation
.end method

.method public abstract onPostMessage(Lo/isCompleteForPath;Lo/serializedName$ICustomTabsCallback;Lo/isCompleteForPath;Lo/isCompleteForPath;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Lo/isCompleteForPath;
        .annotation runtime Lo/rand;
            onMessageChannelReady = "description"
        .end annotation
    .end param
    .param p2    # Lo/serializedName$ICustomTabsCallback;
        .annotation runtime Lo/rand;
        .end annotation
    .end param
    .param p3    # Lo/isCompleteForPath;
        .annotation runtime Lo/rand;
            onMessageChannelReady = "xFileName"
        .end annotation
    .end param
    .param p4    # Lo/isCompleteForPath;
        .annotation runtime Lo/rand;
            onMessageChannelReady = "xFileType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isCompleteForPath;",
            "Lo/serializedName$ICustomTabsCallback;",
            "Lo/isCompleteForPath;",
            "Lo/isCompleteForPath;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getHandshake;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "image-service/v1/uploadCustomPic"
    .end annotation
.end method
