.class public final Lo/inflate$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->onPostMessage(Lo/inflate$ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/checkout/PayResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$pay$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/checkout/PayResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:D

.field private synthetic onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Offer;

.field private synthetic onNavigationEvent:Lo/inflate$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;Lo/inflate$ICustomTabsCallback;DLcom/cred/pay/repository/models/checkout/Offer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/inflate$ICustomTabsCallback;",
            "D",
            "Lcom/cred/pay/repository/models/checkout/Offer;",
            ")V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    iput-object p2, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    iput-wide p3, p0, Lo/inflate$postMessage;->extraCallback:D

    iput-object p5, p0, Lo/inflate$postMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Offer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/checkout/PayResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-wide/16 v1, 0x0

    .line 537
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 499
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 499
    move-object v5, p1

    check-cast v5, Lcom/cred/pay/repository/models/checkout/PayResponse;

    if-eqz v5, :cond_0

    .line 1075
    iget-object p1, v5, Lcom/cred/pay/repository/models/checkout/PayResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v0, "AUTHENTICATION_NOT_REQUIRED"

    .line 500
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 502
    iget-object p1, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-virtual {p1}, Lo/inflate;->ICustomTabsCallback()V

    goto/16 :goto_4

    :cond_1
    if-eqz v5, :cond_2

    .line 2073
    iget-object p1, v5, Lcom/cred/pay/repository/models/checkout/PayResponse;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrument;

    if-eqz p1, :cond_2

    .line 2105
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/PaymentInstrument;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    const-string v0, "VIES"

    .line 503
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 504
    iget-object v3, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    iget-object v4, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v4, :cond_3

    .line 2915
    iget-object p1, v4, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    move-object v6, p1

    goto :goto_2

    :cond_3
    move-object v6, v2

    .line 504
    :goto_2
    iget-wide v7, p0, Lo/inflate$postMessage;->extraCallback:D

    invoke-static/range {v3 .. v8}, Lo/inflate;->onMessageChannelReady(Lo/inflate;Lo/inflate$ICustomTabsCallback;Lcom/cred/pay/repository/models/checkout/PayResponse;Lcom/cred/pay/repository/models/checkout/CardDetails;D)V

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    .line 3082
    iget-object p1, v5, Lcom/cred/pay/repository/models/checkout/PayResponse;->onPostMessage:Lcom/cred/pay/repository/models/checkout/Payment;

    if-eqz p1, :cond_5

    .line 3090
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Payment;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Authentication;

    if-eqz p1, :cond_5

    .line 3099
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Authentication;->onPostMessage:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_6

    .line 508
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-static {v0}, Lo/inflate;->asInterface(Lo/inflate;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/inflate$extraCallback$asBinder;

    invoke-direct {v3, p1}, Lo/inflate$extraCallback$asBinder;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_4

    .line 510
    :cond_6
    iget-object p1, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 4061
    iget-object p1, p1, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 510
    new-instance v0, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 511
    iget-object p1, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->ICustomTabsCallback$Stub(Lo/inflate;)Lo/setActive;

    move-result-object p1

    new-instance v0, Lo/throwIfInMutationOperation;

    new-instance v1, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "something went wrong, please try again"

    invoke-direct {v1, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 514
    :goto_4
    iget-object p1, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-virtual {p1}, Lo/inflate;->onRelationshipValidationResult()Lcom/cred/pay/repository/models/SurchargeDetails;

    move-result-object p1

    .line 515
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-virtual {v0}, Lo/inflate;->onTransact()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-nez v5, :cond_7

    move-wide v5, v3

    goto :goto_6

    :cond_7
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_8

    .line 5031
    iget-object v7, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz v7, :cond_8

    .line 516
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    goto :goto_5

    :cond_8
    move-wide v7, v3

    :goto_5
    mul-double v5, v5, v7

    div-double/2addr v5, v0

    :goto_6
    const/16 v0, 0xd

    new-array v1, v0, [Lo/addWrite;

    .line 520
    iget-object v7, p0, Lo/inflate$postMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Offer;

    if-eqz v7, :cond_9

    .line 6025
    iget-object v7, v7, Lcom/cred/pay/repository/models/checkout/Offer;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v7, v2

    .line 6043
    :goto_7
    new-instance v8, Lo/addWrite;

    const-string v9, "offer_id"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v8, v1, v7

    .line 521
    iget-object v8, p0, Lo/inflate$postMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Offer;

    if-eqz v8, :cond_a

    .line 7027
    iget-object v8, v8, Lcom/cred/pay/repository/models/checkout/Offer;->extraCallback:Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v8, v2

    .line 7043
    :goto_8
    new-instance v9, Lo/addWrite;

    const-string/jumbo v10, "slab_id"

    invoke-direct {v9, v10, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    aput-object v9, v1, v8

    const/4 v9, 0x2

    .line 522
    iget-object v10, p0, Lo/inflate$postMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Offer;

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 8043
    new-instance v11, Lo/addWrite;

    const-string v12, "offer_applied"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/4 v9, 0x3

    .line 523
    iget-object v10, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-virtual {v10}, Lo/inflate;->asBinder()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 9043
    new-instance v11, Lo/addWrite;

    const-string v12, "payment_amount"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/4 v9, 0x4

    .line 524
    iget-object v10, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    invoke-virtual {v10}, Lo/inflate;->onTransact()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 10043
    new-instance v11, Lo/addWrite;

    const-string v12, "cart_value"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/4 v9, 0x5

    .line 525
    iget-object v10, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v10, :cond_c

    .line 10915
    iget-object v10, v10, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v10, :cond_c

    .line 11233
    iget-object v10, v10, Lcom/cred/pay/repository/models/checkout/CardDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_a

    :cond_c
    move-object v10, v2

    .line 12043
    :goto_a
    new-instance v11, Lo/addWrite;

    const-string v12, "bin"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/4 v9, 0x6

    .line 526
    iget-object v10, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v10, :cond_d

    .line 12914
    iget-object v10, v10, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    if-eqz v10, :cond_d

    .line 13056
    iget-object v10, v10, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onTransact:Ljava/lang/String;

    goto :goto_b

    :cond_d
    move-object v10, v2

    .line 14043
    :goto_b
    new-instance v11, Lo/addWrite;

    const-string v12, "payment_sub_method"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/4 v9, 0x7

    .line 527
    iget-object v10, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v10, :cond_e

    .line 14914
    iget-object v10, v10, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    if-eqz v10, :cond_e

    .line 15058
    iget-object v10, v10, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->asInterface:Ljava/lang/String;

    goto :goto_c

    :cond_e
    move-object v10, v2

    .line 16043
    :goto_c
    new-instance v11, Lo/addWrite;

    const-string v12, "payment_method"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/16 v9, 0x8

    .line 528
    iget-object v10, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    iget-object v11, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v11, :cond_f

    .line 16915
    iget-object v11, v11, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v11, :cond_f

    .line 17234
    iget-object v11, v11, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_d

    :cond_f
    move-object v11, v2

    .line 17795
    :goto_d
    invoke-static {v10, v11}, Lo/inflate;->extraCallback(Lo/inflate;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v10, "enrolled"

    goto :goto_e

    .line 17796
    :cond_10
    invoke-virtual {v10, v11}, Lo/inflate;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "eligible"

    goto :goto_e

    :cond_11
    const-string v10, "not_eligible"

    .line 18043
    :goto_e
    new-instance v11, Lo/addWrite;

    const-string v12, "card_vsc_status"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/16 v9, 0x9

    .line 529
    iget-object v10, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    iget-object v11, p0, Lo/inflate$postMessage;->onNavigationEvent:Lo/inflate$ICustomTabsCallback;

    if-eqz v11, :cond_12

    .line 18915
    iget-object v11, v11, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v11, :cond_12

    .line 19234
    iget-object v11, v11, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_f

    :cond_12
    move-object v11, v2

    .line 529
    :goto_f
    invoke-virtual {v10, v11}, Lo/inflate;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 20043
    new-instance v11, Lo/addWrite;

    const-string/jumbo v12, "txn_type"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v9

    const/16 v9, 0xa

    .line 530
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 21043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v10, "surcharge_percentage"

    invoke-direct {v6, v10, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v9

    const/16 v5, 0xb

    if-eqz p1, :cond_13

    .line 22035
    iget-object v2, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 22043
    :cond_13
    new-instance v6, Lo/addWrite;

    const-string/jumbo v9, "surcharge_id"

    invoke-direct {v6, v9, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v5

    const/16 v2, 0xc

    if-eqz p1, :cond_14

    .line 23031
    iget-object p1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz p1, :cond_14

    .line 533
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    goto :goto_10

    :cond_14
    move-wide v5, v3

    :goto_10
    cmpg-double p1, v5, v3

    if-eqz p1, :cond_15

    const/4 v7, 0x1

    :cond_15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 23043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "surcharge_applied"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p1, "pairs"

    .line 519
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "checkout_pay_api_call_response"

    .line 518
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 536
    :cond_16
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1d

    .line 537
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 24061
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 537
    new-instance v3, Lo/addWrite;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 540
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 25014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 540
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_17
    move-object v0, v2

    :goto_11
    const-string v1, "payment_already_successful"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 26014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_18

    .line 540
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_18
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    const-string v1, "errorResponse"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26701
    new-instance v1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 26702
    sget v2, Lo/onItemHoverEnter$onMessageChannelReady;->il_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 26704
    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    .line 26705
    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 26706
    new-instance v5, Lo/updateAllRemainingSpans$extraCallback;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_expired_cta:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lo/inflate$updateVisuals;->ICustomTabsCallback:Lo/inflate$updateVisuals;

    check-cast v2, Lo/getServerTime;

    invoke-direct {v5, p1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 26708
    new-instance p1, Lo/inflate$requestPostMessageChannel;

    invoke-direct {p1, v0}, Lo/inflate$requestPostMessageChannel;-><init>(Lo/inflate;)V

    move-object v10, p1

    check-cast v10, Lo/getServerTime;

    .line 26711
    sget p1, Lo/onItemHoverEnter$onMessageChannelReady;->ic_trust_symbol_dark:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0x18

    move-object v2, v1

    .line 26701
    invoke-direct/range {v2 .. v11}, Lo/updateAllRemainingSpans$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;I)V

    .line 26713
    iget-object p1, v0, Lo/inflate;->asInterface:Lo/setActive;

    new-instance v0, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/inflate$extraCallback$asInterface;

    const-string v3, "payment_interrupted"

    invoke-direct {v2, v1, v3}, Lo/inflate$extraCallback$asInterface;-><init>(Lo/updateAllRemainingSpans$onMessageChannelReady;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 541
    :cond_19
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 27014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 541
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    .line 27697
    iget-object v0, v0, Lo/inflate;->requestPostMessageChannel:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    :cond_1a
    invoke-static {v0, v2}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 541
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 28014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_1b

    .line 541
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1b
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/inflate;->extraCallback(Lo/inflate;Lcom/dreamplug/utils/model/BaseResponse;)V

    return-void

    .line 542
    :cond_1c
    iget-object v0, p0, Lo/inflate$postMessage;->onPostMessage:Lo/inflate;

    .line 29014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 30014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 542
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, v1, p1}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)V

    :cond_1d
    return-void
.end method
