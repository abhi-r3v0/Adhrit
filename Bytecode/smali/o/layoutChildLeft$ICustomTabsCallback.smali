.class public final Lo/layoutChildLeft$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/layoutChildLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$getOrderStatus$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/layoutChildLeft;


# direct methods
.method constructor <init>(Lo/layoutChildLeft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 27184
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 28123
    iget-object p2, p1, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    if-nez p2, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 13

    .line 129
    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    .line 1131
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 2123
    iget-object v1, v0, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    const-string v2, "handler"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1132
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 2265
    iput-object p1, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1133
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v3, "completed"

    .line 1134
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "paymentItem"

    const-string v5, "false"

    const-string v6, "command"

    const-string/jumbo v7, "tag"

    const-string/jumbo v8, "trying to get duration before calling stop()"

    const-string v9, "TimeTracker"

    const-wide/16 v10, 0x7d0

    const-string v12, "loaderSeenTimeTracker"

    if-eqz v3, :cond_e

    .line 1135
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    const-string v3, "RESULT_SUCCESS"

    .line 3074
    iput-object v3, v1, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3075
    iget-object v3, v1, Lo/layoutChildLeft;->onRelationshipValidationResult:Lo/setActive;

    iget-object v1, v1, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1136
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 4119
    iget-object v1, v1, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1137
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 5052
    iget-object v1, v1, Lo/layoutChildLeft;->asInterface:Ljava/io/Closeable;

    if-eqz v1, :cond_3

    .line 1137
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 1139
    :cond_3
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 5055
    iget-object v2, v1, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v2, :cond_4

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1139
    :cond_4
    invoke-virtual {v2}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v2

    .line 6052
    invoke-virtual {v1, v2, v5}, Lo/layoutChildLeft;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "successful_payment"

    .line 1139
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    move-result-object v1

    .line 7012
    sget-object v2, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1141
    new-instance v1, Lo/toDebugString$extraCallback;

    invoke-direct {v1}, Lo/toDebugString$extraCallback;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    .line 1142
    iget-object v2, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 7052
    iget-object v2, v2, Lo/layoutChildLeft;->onTransact:Lo/getViewListMeasuredWidth;

    if-eqz v2, :cond_d

    .line 1143
    iget-object v3, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 7071
    iget-object v3, v3, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_5

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1143
    :cond_5
    invoke-virtual {v3}, Lo/evictionCount;->onMessageChannelReady()J

    .line 1144
    iget-object v3, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 8071
    iget-object v3, v3, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_6

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9030
    :cond_6
    iget-object v4, v3, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v5, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 9069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9070
    sget-object v4, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9033
    :cond_7
    iget-wide v3, v3, Lo/evictionCount;->ICustomTabsCallback:J

    cmp-long v5, v10, v3

    if-lez v5, :cond_c

    .line 1145
    iget-object v3, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 10071
    iget-object v3, v3, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_8

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 11030
    :cond_8
    iget-object v4, v3, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v5, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 11069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11070
    sget-object v4, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11033
    :cond_9
    iget-wide v3, v3, Lo/evictionCount;->ICustomTabsCallback:J

    sub-long v3, v10, v3

    .line 1145
    iput-wide v3, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    .line 1146
    sget-object v3, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    iget-object v3, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 12071
    iget-object v3, v3, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_a

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13030
    :cond_a
    iget-object v4, v3, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v5, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 13069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13070
    sget-object v4, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13033
    :cond_b
    iget-wide v3, v3, Lo/evictionCount;->ICustomTabsCallback:J

    sub-long/2addr v10, v3

    .line 1146
    new-instance v0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {v0, v2, p0}, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/getViewListMeasuredWidth;Lo/layoutChildLeft$ICustomTabsCallback;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v10, v11, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    goto :goto_1

    .line 1153
    :cond_c
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1154
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 15016
    iget-object v2, v2, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 15052
    invoke-virtual {v0, v2}, Lo/layoutChildLeft;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    .line 1157
    :cond_d
    :goto_1
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    const-wide/16 v2, 0x3e8

    iget-wide v0, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    add-long/2addr v0, v2

    sget-object v2, Lo/layoutChildLeft$ICustomTabsCallback$onMessageChannelReady;->extraCallback:Lo/layoutChildLeft$ICustomTabsCallback$onMessageChannelReady;

    check-cast v2, Lo/getServerTime;

    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 1161
    sget-object v0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance v0, Lo/moveView;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "payment_due_reminder"

    invoke-direct {v0, v1, p1}, Lo/moveView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 1162
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    const-string v0, "make_first_cc_payment"

    invoke-direct {p1, v0}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    return-void

    :cond_e
    const-string p1, "failed"

    .line 1163
    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1164
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 16055
    iget-object v1, p1, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_f

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1164
    :cond_f
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    .line 17052
    invoke-virtual {p1, v1, v5}, Lo/layoutChildLeft;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "unsuccessful_payment"

    .line 1164
    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1165
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    const-string v1, "RESULT_FAILED"

    .line 18074
    iput-object v1, p1, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 18075
    iget-object v1, p1, Lo/layoutChildLeft;->onRelationshipValidationResult:Lo/setActive;

    iget-object p1, p1, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1166
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 19052
    iget-object p1, p1, Lo/layoutChildLeft;->asInterface:Ljava/io/Closeable;

    if-eqz p1, :cond_10

    .line 1166
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 1167
    :cond_10
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 20119
    iget-object p1, p1, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    if-nez p1, :cond_11

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1168
    iget-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 21052
    iget-object p1, p1, Lo/layoutChildLeft;->onTransact:Lo/getViewListMeasuredWidth;

    if-eqz p1, :cond_18

    .line 1169
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 21071
    iget-object v1, v1, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v1, :cond_12

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1169
    :cond_12
    invoke-virtual {v1}, Lo/evictionCount;->onMessageChannelReady()J

    .line 1170
    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 22071
    iget-object v1, v1, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v1, :cond_13

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 23030
    :cond_13
    iget-object v2, v1, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v3, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    .line 23069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23070
    sget-object v2, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23033
    :cond_14
    iget-wide v1, v1, Lo/evictionCount;->ICustomTabsCallback:J

    cmp-long v3, v10, v1

    if-lez v3, :cond_17

    .line 1171
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 24071
    iget-object v1, v1, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v1, :cond_15

    invoke-static {v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 25030
    :cond_15
    iget-object v2, v1, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v3, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    .line 25069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25070
    sget-object v2, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25033
    :cond_16
    iget-wide v0, v1, Lo/evictionCount;->ICustomTabsCallback:J

    sub-long/2addr v10, v0

    .line 1171
    new-instance v0, Lo/layoutChildLeft$ICustomTabsCallback$extraCallback;

    invoke-direct {v0, p1, p0}, Lo/layoutChildLeft$ICustomTabsCallback$extraCallback;-><init>(Lo/getViewListMeasuredWidth;Lo/layoutChildLeft$ICustomTabsCallback;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26018
    new-instance p1, Lo/updateItemAt$extraCallback;

    invoke-direct {p1, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v10, v11, p1}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void

    .line 1176
    :cond_17
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1177
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    .line 27016
    iget-object p1, p1, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 27052
    invoke-virtual {v0, p1}, Lo/layoutChildLeft;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    :cond_18
    return-void
.end method
