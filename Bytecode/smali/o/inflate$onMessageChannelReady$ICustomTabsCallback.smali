.class final Lo/inflate$onMessageChannelReady$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate$onMessageChannelReady;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field final synthetic onPostMessage:Lo/inflate$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/inflate$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iput-object p2, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1628
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1628
    check-cast v0, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->onTransact:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 1628
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x5279062b

    if-eq v2, v3, :cond_3

    const v1, 0x7b29883d

    if-eq v2, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v1, "FAILED"

    .line 1633
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1634
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    invoke-virtual {v0}, Lo/inflate;->onPostMessage()V

    goto/16 :goto_9

    :cond_3
    const-string v2, "COMPLETED"

    .line 1629
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1630
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    const-string v2, "$this$onPaymentSuccessEvent"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    .line 3073
    iget-object v5, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v5, :cond_4

    .line 3915
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v5, :cond_4

    .line 4233
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/CardDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v1

    .line 5043
    :goto_1
    new-instance v6, Lo/addWrite;

    const-string v7, "bin"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 5073
    iget-object v5, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v5, :cond_5

    .line 5914
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    if-eqz v5, :cond_5

    .line 6058
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->asInterface:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v5, v1

    .line 7043
    :goto_2
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_sub_method"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    const/4 v4, 0x2

    .line 7073
    iget-object v5, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v5, :cond_6

    .line 7914
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    if-eqz v5, :cond_6

    .line 8056
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onTransact:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v5, v1

    .line 9043
    :goto_3
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_method"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 9073
    iget-object v5, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v5, :cond_7

    .line 9915
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v5, :cond_7

    .line 10234
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v5, v1

    .line 10795
    :goto_4
    invoke-static {v0, v5}, Lo/inflate;->extraCallback(Lo/inflate;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v5, "enrolled"

    goto :goto_5

    .line 10796
    :cond_8
    invoke-virtual {v0, v5}, Lo/inflate;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "eligible"

    goto :goto_5

    :cond_9
    const-string v5, "not_eligible"

    .line 11043
    :goto_5
    new-instance v6, Lo/addWrite;

    const-string v7, "card_vsc_status"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 11073
    iget-object v5, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v5, :cond_a

    .line 11915
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v5, :cond_a

    .line 12234
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v5, v1

    .line 3036
    :goto_6
    invoke-virtual {v0, v5}, Lo/inflate;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "txn_type"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 13074
    iget-object v0, v0, Lo/inflate;->mayLaunchUrl:Ljava/lang/Boolean;

    .line 3038
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v1, "SUCCESS"

    goto :goto_7

    .line 3039
    :cond_b
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "FAILURE"

    .line 14043
    :cond_c
    :goto_7
    new-instance v0, Lo/addWrite;

    const-string v5, "enrollment_status"

    invoke-direct {v0, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v3, v4

    const-string v0, "pairs"

    .line 3031
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "payment_success"

    .line 3029
    invoke-static {v1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1631
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    iget-object v1, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 15009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_d

    .line 1631
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    check-cast v1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    const-string v2, "orderStatusResponse"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15660
    iget-object v2, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    new-instance v3, Lo/addWrite;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 15661
    sget-object v2, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v2}, Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;

    .line 15662
    iget-object v0, v0, Lo/inflate;->asInterface:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/inflate$extraCallback$ICustomTabsCallback$Stub;

    invoke-direct {v3, v1}, Lo/inflate$extraCallback$ICustomTabsCallback$Stub;-><init>(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_9

    .line 1637
    :cond_e
    :goto_8
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget v0, v0, Lo/inflate$onMessageChannelReady;->ICustomTabsCallback:I

    if-lez v0, :cond_f

    .line 1638
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-wide v0, v0, Lo/inflate$onMessageChannelReady;->onPostMessage:J

    new-instance v2, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;

    invoke-direct {v2, p0}, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;-><init>(Lo/inflate$onMessageChannelReady$ICustomTabsCallback;)V

    check-cast v2, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    goto :goto_9

    .line 1644
    :cond_f
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    invoke-virtual {v0}, Lo/inflate;->onPostMessage()V

    .line 623
    :goto_9
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
