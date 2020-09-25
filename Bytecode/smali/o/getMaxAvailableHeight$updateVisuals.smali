.class final Lo/getMaxAvailableHeight$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/addWrite<",
        "+",
        "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
        "+",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    .line 45
    move-object/from16 v1, p1

    check-cast v1, Lo/addWrite;

    if-eqz v1, :cond_14

    .line 1377
    iget-object v2, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 2000
    iget-object v2, v2, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 2146
    iput-object v1, v2, Lo/MenuItemHoverListener;->ICustomTabsService$Stub:Lo/addWrite;

    .line 1378
    iget-object v2, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 3000
    iget-object v2, v2, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 3051
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1378
    new-instance v3, Lo/addWrite;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    .line 4027
    iget-object v5, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v5, :cond_0

    const-string v5, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v5, "FAILURE"

    .line 4043
    :goto_0
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "status"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    .line 5027
    iget-object v4, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1381
    check-cast v4, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 5128
    iget-object v4, v4, Lcom/cred/pay/repository/models/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 6043
    :goto_1
    new-instance v6, Lo/addWrite;

    const-string v7, "gateway_response_code"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v6, 0x2

    .line 7028
    iget-object v7, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1382
    check-cast v7, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v7, :cond_2

    .line 7135
    iget-object v7, v7, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v7, v5

    .line 8043
    :goto_2
    new-instance v8, Lo/addWrite;

    const-string v9, "error_code"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v6

    const/4 v6, 0x3

    .line 1383
    iget-object v7, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 9000
    iget-object v7, v7, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MenuItemHoverListener;

    .line 9033
    iget-object v7, v7, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v7, :cond_3

    .line 10013
    iget-object v7, v7, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object v7, v5

    .line 10043
    :goto_3
    new-instance v8, Lo/addWrite;

    const-string v9, "amount"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v6

    const/4 v6, 0x4

    .line 1384
    iget-object v7, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 11000
    iget-object v7, v7, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MenuItemHoverListener;

    .line 11033
    iget-object v7, v7, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v7, :cond_4

    .line 12011
    iget-object v7, v7, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v7, v5

    .line 12043
    :goto_4
    new-instance v8, Lo/addWrite;

    const-string v9, "order_id"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v6

    const/4 v6, 0x5

    .line 1385
    iget-object v7, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 13000
    iget-object v7, v7, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MenuItemHoverListener;

    .line 13145
    iget-object v7, v7, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v7, :cond_5

    .line 1385
    invoke-virtual {v7}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v5

    .line 14043
    :goto_5
    new-instance v8, Lo/addWrite;

    const-string v9, "payment_instrument_group"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v6

    const/4 v6, 0x6

    .line 1386
    iget-object v7, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 15000
    iget-object v7, v7, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MenuItemHoverListener;

    .line 15145
    iget-object v7, v7, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v7, :cond_6

    .line 1386
    invoke-virtual {v7}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v7, v5

    .line 16043
    :goto_6
    new-instance v8, Lo/addWrite;

    const-string v9, "payment_instrument_id"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v6

    const-string v6, "pairs"

    .line 1379
    invoke-static {v3, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16088
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v2, v6

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1387
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    const-string v6, "cupi_payment_response"

    invoke-static {v6, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 17027
    iget-object v3, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    const-string v6, "java.util.Collections.singletonList(element)"

    const-string v13, "completed"

    if-eqz v3, :cond_e

    .line 18027
    iget-object v1, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1390
    check-cast v1, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    if-eqz v1, :cond_7

    .line 18128
    iget-object v1, v1, Lcom/cred/pay/repository/models/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v1, v5

    :goto_7
    const-string v3, "00"

    .line 1392
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1393
    iget-object v1, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 19000
    iget-object v1, v1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 19019
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1396
    new-instance v3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 1397
    sget-object v5, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v5, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_title:I

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    .line 1398
    sget-object v5, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v5, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_content:I

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x38

    move-object v7, v3

    .line 1396
    invoke-direct/range {v7 .. v12}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    .line 1393
    invoke-virtual {v1, v2, v3, v4}, Lo/MenuItemHoverListener;->ICustomTabsCallback(Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;Z)V

    return-void

    :cond_8
    const-string v3, "01"

    .line 1403
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1404
    iget-object v1, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 20000
    iget-object v1, v1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 20019
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    new-instance v3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 1407
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v4, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_title:I

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    .line 1408
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v4, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_content:I

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x38

    move-object v7, v3

    .line 1406
    invoke-direct/range {v7 .. v12}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    .line 1404
    invoke-static {v1, v2, v3}, Lo/MenuItemHoverListener;->extraCallback(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;)V

    return-void

    :cond_9
    const-string v3, "ZM"

    .line 1413
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Z6"

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_9

    :cond_a
    if-eqz v1, :cond_c

    .line 1444
    new-instance v3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 1445
    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v7, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed:I

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    .line 1446
    sget-object v7, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    invoke-static {v1, v4}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v7

    .line 20058
    iget-object v9, v7, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    .line 1448
    new-instance v11, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v7, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->pay_go_back:I

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lo/getMaxAvailableHeight$updateVisuals$onMessageChannelReady;

    invoke-direct {v10, v0, v2}, Lo/getMaxAvailableHeight$updateVisuals$onMessageChannelReady;-><init>(Lo/getMaxAvailableHeight$updateVisuals;Ljava/util/Map;)V

    check-cast v10, Lo/getServerTime;

    invoke-direct {v11, v7, v10}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    const/16 v12, 0x20

    move-object v7, v3

    move-object v10, v2

    .line 1444
    invoke-direct/range {v7 .. v12}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    const-string v7, "FL"

    .line 1455
    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_b

    const-string v7, "FP"

    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_b

    .line 1456
    new-instance v1, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v4, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_retry:I

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lo/getMaxAvailableHeight$updateVisuals$1;

    invoke-direct {v5, v0, v2}, Lo/getMaxAvailableHeight$updateVisuals$1;-><init>(Lo/getMaxAvailableHeight$updateVisuals;Ljava/util/Map;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {v1, v4, v5}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    goto :goto_8

    .line 20514
    :cond_b
    iget-object v1, v3, Lo/MenuItemHoverListener$onNavigationEvent;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    .line 21514
    iput-object v5, v3, Lo/MenuItemHoverListener$onNavigationEvent;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    .line 22513
    :goto_8
    iput-object v1, v3, Lo/MenuItemHoverListener$onNavigationEvent;->ICustomTabsCallback:Lo/updateAllRemainingSpans$extraCallback;

    .line 1466
    iget-object v1, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 23000
    iget-object v1, v1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lo/MenuItemHoverListener;

    .line 23019
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-static {v15, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3c

    move-object/from16 v16, v3

    .line 1466
    invoke-static/range {v14 .. v21}, Lo/MenuItemHoverListener;->onPostMessage(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;ZLcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;ZZI)V

    :cond_c
    return-void

    :cond_d
    :goto_9
    const-string v3, "payment_failure_bottom_sheet_load"

    .line 1414
    invoke-static {v3, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1415
    new-instance v3, Lo/updateAllRemainingSpans;

    invoke-direct {v3}, Lo/updateAllRemainingSpans;-><init>()V

    .line 1416
    new-instance v4, Lo/getMaxAvailableHeight$updateVisuals$2;

    invoke-direct {v4, v0, v1, v2, v3}, Lo/getMaxAvailableHeight$updateVisuals$2;-><init>(Lo/getMaxAvailableHeight$updateVisuals;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-virtual {v3, v4}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 1441
    iget-object v1, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "PAYMENT_DROPPED_DIALOG"

    invoke-virtual {v3, v1, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 23028
    :cond_e
    iget-object v3, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-eqz v3, :cond_14

    .line 24028
    iget-object v3, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1473
    check-cast v3, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v3, :cond_f

    .line 24135
    iget-object v5, v3, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    :cond_f
    if-nez v5, :cond_10

    goto :goto_b

    .line 1473
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_b

    :sswitch_0
    const-string v3, "DUPLICATE_REQUEST"

    .line 1474
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :sswitch_1
    const-string v3, "MPIN_NOT_SET"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :sswitch_2
    const-string v3, "UNAUTHORIZED"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :sswitch_3
    const-string v3, "USER_ABORTED"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1478
    :goto_a
    iget-object v1, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    new-instance v3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 1479
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v4, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_message:I

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    .line 1480
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v4, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_content:I

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x38

    move-object v7, v3

    move-object v10, v2

    .line 1478
    invoke-direct/range {v7 .. v12}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    invoke-static {v1, v3}, Lo/getMaxAvailableHeight;->ICustomTabsCallback(Lo/getMaxAvailableHeight;Lo/MenuItemHoverListener$onNavigationEvent;)V

    return-void

    .line 1484
    :cond_11
    :goto_b
    iget-object v3, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    .line 25000
    iget-object v3, v3, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    .line 25019
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    new-instance v6, Lo/MenuItemHoverListener$onNavigationEvent;

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v7, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed:I

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    .line 1486
    sget-object v7, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    .line 25028
    iget-object v1, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1486
    check-cast v1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v1, :cond_12

    .line 25135
    iget-object v1, v1, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_12
    const-string v1, ""

    .line 1486
    :cond_13
    invoke-static {v1, v4}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v1

    .line 26058
    iget-object v9, v1, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x38

    move-object v7, v6

    move-object v10, v2

    .line 1485
    invoke-direct/range {v7 .. v12}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    .line 1484
    invoke-static {v3, v5, v6}, Lo/MenuItemHoverListener;->extraCallback(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;)V

    :cond_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6602c0c5 -> :sswitch_3
        -0x50debf0c -> :sswitch_2
        -0x1bfd9e81 -> :sswitch_1
        0x6118671b -> :sswitch_0
    .end sparse-switch
.end method
