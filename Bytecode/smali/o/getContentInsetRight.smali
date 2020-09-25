.class public interface abstract Lo/getContentInsetRight;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/getEventHandler;
        onMessageChannelReady = "auth/v1/revoke/{access_token}"
    .end annotation

    .annotation runtime Lo/setViewCacheSize;
    .end annotation
.end method
