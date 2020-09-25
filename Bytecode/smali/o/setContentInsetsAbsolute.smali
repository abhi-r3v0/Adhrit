.class public interface abstract Lo/setContentInsetsAbsolute;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;
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

    .annotation runtime Lo/WebSocketException;
        onNavigationEvent = "/aggregator/v1/users/profile"
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation
.end method

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
            "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/otp/v2/resend"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;
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

    .annotation runtime Lo/WebSocketException;
        onNavigationEvent = "/aggregator/v1/users/profile/bureau/attributes"
    .end annotation
.end method

.method public abstract onPostMessage(Lcom/dreamplug/androidapp/auth/AuthRequestClass;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Lcom/dreamplug/androidapp/auth/AuthRequestClass;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/auth/AuthRequestClass;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/login/model/LoginResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/auth/v2/authorize"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;
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
            "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/otp/v2/generate"
    .end annotation
.end method
