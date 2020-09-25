.class public interface abstract Lo/setReenterTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setReenterTransition$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007H\'J\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\nH\'J,\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\'J\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u000eH\'J%\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\'\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u000eH\'J\u001a\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001c\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u001e\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u001f\u001a\u00020 H\'\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitService;",
        "",
        "addMandateAccount",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "autoDebitRequestBody",
        "Lcom/dreamplug/fabrik/ui/autodebit/AddMandateRequestBody;",
        "confirmAutoDebit",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;",
        "getAutoDebitConfig",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;",
        "paymentMethod",
        "",
        "purpose",
        "getBankInfo",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;",
        "ifsc",
        "getEligibleInstruments",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
        "cardList",
        "",
        "(Ljava/lang/Boolean;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getRegistrationStatus",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;",
        "orderId",
        "getSupportedBanks",
        "",
        "setupInstruments",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;",
        "params",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;",
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
.method public abstract ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/WebSocketException;
        onNavigationEvent = "/plutus/v1/mandate/auto_debit/registration"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "ifsc"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/banks/ifsc/{ifsc}"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "orderId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/mandate/orders/{orderId}"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/banks/MANDATE/supported"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "payment_method"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "purpose"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/mandate/config"
    .end annotation
.end method

.method public abstract onPostMessage(Lcom/dreamplug/fabrik/ui/autodebit/AddMandateRequestBody;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/autodebit/AddMandateRequestBody;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/autodebit/AddMandateRequestBody;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/v1/mandate/instrument"
    .end annotation
.end method

.method public abstract onPostMessage(Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/v1/mandate/registration"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/Boolean;)Lo/clearScrap;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "send_card_list"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/mandate/eligibility"
    .end annotation
.end method
