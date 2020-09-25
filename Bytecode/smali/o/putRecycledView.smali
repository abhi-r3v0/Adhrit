.class public interface abstract Lo/putRecycledView;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/network/TrackService;",
        "",
        "getConfigs",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "syncAccounts",
        "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;",
        "body",
        "Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;",
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
.method public abstract ICustomTabsCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "wallstreet/v1/config"
    .end annotation
.end method

.method public abstract extraCallback(Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "wallstreet/v1/track/bank-accounts"
    .end annotation
.end method
