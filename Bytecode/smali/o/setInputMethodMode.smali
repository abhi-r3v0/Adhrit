.class public interface abstract Lo/setInputMethodMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setInputMethodMode$ICustomTabsCallback;,
        Lo/setInputMethodMode$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018J$\u0010\u0002\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00060\u00032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'J\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008H\'J \u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u00032\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\'J\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00060\u00032\u0008\u0008\u0003\u0010\u0012\u001a\u00020\u0013H\'J \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00060\u00032\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\'\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cred/pay/repository/PaymentService;",
        "",
        "getBankInfo",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "type",
        "",
        "getOrderStatus",
        "Lcom/cred/pay/repository/models/OrderStatusResponse;",
        "id",
        "getSessionData",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
        "payOrder",
        "Lcom/cred/pay/repository/models/PaymentOrder;",
        "getSessionToken",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "suggestedPi",
        "",
        "pay",
        "Lcom/cred/pay/repository/models/PayCallResponse;",
        "callRequest",
        "Lcom/cred/pay/repository/models/PayCallRequest;",
        "Companion",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/setInputMethodMode$onMessageChannelReady;->ICustomTabsCallback:Lo/setInputMethodMode$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Z)Lo/clearScrap;
    .param p1    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "suggested_pi"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/clearScrap<",
            "Lcom/cred/pay/repository/models/JuspaySessionToken;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/juspay/authtoken"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lcom/cred/pay/repository/models/PayCallRequest;)Lo/clearScrap;
    .param p1    # Lcom/cred/pay/repository/models/PayCallRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/PayCallRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/cred/pay/repository/models/PayCallResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/checkout/v2/pay"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
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
            "Lo/clearScrap<",
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
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

.method public abstract onPostMessage(Lcom/cred/pay/repository/models/PaymentOrder;)Lo/clearScrap;
    .param p1    # Lcom/cred/pay/repository/models/PaymentOrder;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/PaymentOrder;",
            ")",
            "Lo/clearScrap<",
            "Lcom/cred/pay/repository/models/SessionCallResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/checkout/v1/session"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
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
            "Lcom/cred/pay/repository/models/OrderStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "plutus/v1/providers/bd6481ae-a7df-11e8-98d0-529269fb1459/orders/{orderId}"
    .end annotation
.end method
