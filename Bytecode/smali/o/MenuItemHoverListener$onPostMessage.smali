.class final Lo/MenuItemHoverListener$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MenuItemHoverListener;->onNavigationEvent(Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;ZLcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:J

.field final synthetic ICustomTabsCallback$Stub:Z

.field final synthetic asInterface:Z

.field final synthetic extraCallback:Ljava/util/List;

.field final synthetic onMessageChannelReady:Lo/MenuItemHoverListener$onNavigationEvent;

.field final synthetic onNavigationEvent:I

.field final synthetic onPostMessage:Lo/MenuItemHoverListener;


# direct methods
.method constructor <init>(Lo/MenuItemHoverListener;Ljava/util/List;IJLo/MenuItemHoverListener$onNavigationEvent;ZZ)V
    .locals 0

    iput-object p1, p0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    iput-object p2, p0, Lo/MenuItemHoverListener$onPostMessage;->extraCallback:Ljava/util/List;

    iput p3, p0, Lo/MenuItemHoverListener$onPostMessage;->onNavigationEvent:I

    iput-wide p4, p0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback:J

    iput-object p6, p0, Lo/MenuItemHoverListener$onPostMessage;->onMessageChannelReady:Lo/MenuItemHoverListener$onNavigationEvent;

    iput-boolean p7, p0, Lo/MenuItemHoverListener$onPostMessage;->asInterface:Z

    iput-boolean p8, p0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback$Stub:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 31
    move-object/from16 v1, p1

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v3, "pairs"

    const-string v4, "api_status"

    const-string v6, "amount"

    const/4 v7, 0x3

    const-string v8, "order_id"

    const/4 v9, 0x2

    const-string v10, "payment_instrument_group"

    const-string v11, "payment_instrument"

    const-string v13, "payment_status_check_response"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v2, :cond_8

    .line 1276
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1276
    check-cast v1, Lcom/cred/pay/repository/models/OrderStatusResponse;

    if-eqz v1, :cond_1

    .line 2017
    iget-object v1, v1, Lcom/cred/pay/repository/models/OrderStatusResponse;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v2, "$this$getOrNull"

    .line 1276
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$lastIndex"

    .line 2266
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v14

    if-ltz v2, :cond_0

    .line 2266
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, v16

    .line 1276
    :goto_0
    check-cast v1, Lcom/cred/pay/repository/models/PaymentStatus;

    if-eqz v1, :cond_1

    .line 4022
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentStatus;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v1, v16

    :goto_1
    const/4 v2, 0x6

    new-array v12, v2, [Lo/addWrite;

    .line 1278
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 4145
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_2

    .line 1278
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object/from16 v2, v16

    .line 5043
    :goto_2
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v11, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v12, v15

    .line 1279
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 5145
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_3

    .line 1279
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object/from16 v2, v16

    .line 6043
    :goto_3
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v12, v14

    .line 1280
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 7033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_4

    .line 8011
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v2, v16

    .line 8043
    :goto_4
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v12, v9

    .line 1281
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 9033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_5

    .line 10013
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_5

    :cond_5
    move-object/from16 v2, v16

    .line 10043
    :goto_5
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v12, v7

    .line 11043
    new-instance v2, Lo/addWrite;

    const-string v5, "payment_status"

    invoke-direct {v2, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v2, v12, v5

    .line 12043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v5, "success"

    invoke-direct {v2, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v2, v12, v4

    .line 1278
    invoke-static {v12, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1277
    invoke-static {v13, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1284
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->extraCallback:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1285
    iget-object v1, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 13051
    iget-object v1, v1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1285
    new-instance v2, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1286
    iget-object v1, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 13497
    iget-object v1, v1, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Lo/onItemHoverExit$asInterface;->extraCallback:Lo/onItemHoverExit$asInterface;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1288
    :cond_6
    iget v1, v0, Lo/MenuItemHoverListener$onPostMessage;->onNavigationEvent:I

    if-lez v1, :cond_7

    .line 1290
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    iget-wide v2, v0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback:J

    .line 1521
    new-instance v4, Lo/MenuItemHoverListener$onPostMessage$extraCallback;

    invoke-direct {v4, v0}, Lo/MenuItemHoverListener$onPostMessage$extraCallback;-><init>(Lo/MenuItemHoverListener$onPostMessage;)V

    check-cast v4, Ljava/lang/Runnable;

    .line 1523
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 1294
    :cond_7
    iget-object v1, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onMessageChannelReady:Lo/MenuItemHoverListener$onNavigationEvent;

    iget-boolean v3, v0, Lo/MenuItemHoverListener$onPostMessage;->asInterface:Z

    iget-boolean v4, v0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback$Stub:Z

    invoke-static {v1, v2, v3, v4}, Lo/MenuItemHoverListener;->onNavigationEvent(Lo/MenuItemHoverListener;Lo/MenuItemHoverListener$onNavigationEvent;ZZ)V

    goto/16 :goto_a

    .line 1298
    :cond_8
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    new-array v5, v2, [Lo/addWrite;

    .line 1300
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 14145
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_9

    .line 1300
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object/from16 v2, v16

    .line 15043
    :goto_6
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v11, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v5, v15

    .line 1301
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 15145
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_a

    .line 1301
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    move-object/from16 v2, v16

    .line 16043
    :goto_7
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v10, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v5, v14

    .line 1302
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 17033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_b

    .line 18011
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_8

    :cond_b
    move-object/from16 v2, v16

    .line 18043
    :goto_8
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v9

    .line 1303
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 19033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_c

    .line 20013
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_9

    :cond_c
    move-object/from16 v2, v16

    .line 20043
    :goto_9
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v7

    .line 21043
    new-instance v2, Lo/addWrite;

    const-string v6, "failure"

    invoke-direct {v2, v4, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    aput-object v2, v5, v4

    .line 1300
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1299
    invoke-static {v13, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1305
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 22051
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1305
    new-instance v3, Lo/addWrite;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v5, v0, Lo/MenuItemHoverListener$onPostMessage;->onNavigationEvent:I

    int-to-long v5, v5

    iget-wide v7, v0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback:J

    mul-long v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1306
    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    .line 22054
    iget-object v2, v2, Lo/MenuItemHoverListener;->postMessage:Lo/setActive;

    .line 1306
    new-instance v3, Lo/throwIfInMutationOperation;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 23014
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 24014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1306
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 31
    :cond_d
    :goto_a
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
