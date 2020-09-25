.class public interface abstract Lo/setThumbTintMode;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onNavigationEvent(Lcom/dreamplug/androidapp/auth/AuthRequestClass;)Lo/tryBindViewHolderByDeadline;
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
            "Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/setViewCacheSize;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/auth/v2/authorize"
    .end annotation
.end method
