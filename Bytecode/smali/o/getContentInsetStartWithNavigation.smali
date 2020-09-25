.class public interface abstract Lo/getContentInsetStartWithNavigation;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\'J(\u0010\t\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060\u000cR\u00020\r0\u000b\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0008H\'J\u001e\u0010\u000f\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060\u000cR\u00020\r0\u000b\u0012\u0004\u0012\u00020\u00050\nH\'J\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0008H\'J\u001e\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0008H\'J\u001a\u0010\u0015\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u000b\u0012\u0004\u0012\u00020\u00050\nH\'J@\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00082\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u0019H\'\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/onboarding/interfaces/CardService;",
        "",
        "addCard",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "params",
        "",
        "",
        "getBankInfo",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "type",
        "getBankList",
        "getCardDetails",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "bin",
        "hideCard",
        "id",
        "paymentAccount",
        "Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
        "updateCard",
        "linkCardEnabled",
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
.method public abstract extraCallback(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "bin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/cardinfo/{bin}"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/payment-accounts"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/banks/{type}/supported"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "plutus_v2_payment-summary"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/banks/?neu_flow=true"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "control_service_banks"
    .end annotation
.end method
