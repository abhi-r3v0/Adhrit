.class public interface abstract Lo/calculateItemBorders;
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
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\rH\'J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u0003H\'J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u0003H\'J(\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0006H\'J\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0003H\'J2\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001cH\'J2\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u0006H\'J(\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0006H\'J\u001e\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0014\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0\u0003H\'J2\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0001\u0010%\u001a\u00020\u00062\u0008\u0008\u0001\u0010&\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0006H\'J(\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\n\u001a\u00020(H\'J\u001e\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020*0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "",
        "checkLoanStatus",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "id",
        "",
        "createOrder",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "body",
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;",
        "createPayOrderId",
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanPayRequest;",
        "getLendingAmountScreenData",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
        "getLendingBankScreenData",
        "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse;",
        "getLendingTenureScreenData",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse;",
        "amount",
        "getLineManagementScreenData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LineManagementResponse;",
        "getLoanCustomAmountRepaymentDetails",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
        "sourceId",
        "destinationId",
        "name",
        "",
        "getLoanManagementScreenData",
        "filters",
        "getLoanRepaymentDetails",
        "getOrderStatus",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "getStashLandingScreenData",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
        "updateName",
        "locId",
        "loanId",
        "updateWorkFlow",
        "Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;",
        "verifyBankAccount",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;",
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
            "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v2/lineOfCredit/getByUserId?isLineManagement=true&draftDetailsRequired=true&getExperiments=all"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/workflow/{id}"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "locId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "loanId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "loanDescription"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/WebSocketException;
        onNavigationEvent = "/hermes/v1/lineOfCredit/{locId}/loan/{loanId}"
    .end annotation

    .annotation runtime Lo/getInnerThread;
        onMessageChannelReady = {
            "Content-Type: application/json"
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/lineOfCredit/getAllBankAccountsForUser"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/lineOfCredit/getByUserId?getExperiments=all"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "plutus/v2/orders"
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
            "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "plutus/v1/providers/bd6481ae-a7df-11e8-98d0-529269fb1459/orders/{orderId}"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "locInstrumentId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "requestedLoanAmount"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/emi/getSchedule?getExperiments=all"
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/CreateLoanPayRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/lending/CreateLoanPayRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lending/CreateLoanPayRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "plutus/v2/orders"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "sourceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "destinationId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/lineOfCredit/{sourceId}/loan/{destinationId}/repayment"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;D)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "sourceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "destinationId"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lo/isText;
            onNavigationEvent = "amount"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/lineOfCredit/{sourceId}/loan/{destinationId}/repayment"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v1/lineOfCredit/verifyBankAccount/{id}"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "/hermes/v1/workflow/{id}"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "sourceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "destinationId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "filters"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/hermes/v2/lineOfCredit/{sourceId}/loan/{destinationId}?getExperiments=all"
    .end annotation
.end method
