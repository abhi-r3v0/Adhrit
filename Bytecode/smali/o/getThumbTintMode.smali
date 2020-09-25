.class public interface abstract Lo/getThumbTintMode;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\'\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/auth/CredProtectService;",
        "",
        "authorize",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "body",
        "Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;",
        "getAuthorizedDomain",
        "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
        "context",
        "",
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
.method public abstract extraCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "context"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/aggregator/v1/cred-protect-providers"
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/oauth2/v2/authorize"
    .end annotation
.end method
