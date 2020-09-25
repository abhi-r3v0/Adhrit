.class public final Lo/requestChildFocus$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestChildFocus;
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
        "com/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatusLro$getOrderStatus$1",
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
.field private synthetic ICustomTabsCallback:Lo/requestChildFocus;


# direct methods
.method constructor <init>(Lo/requestChildFocus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 10106
    iget-object p1, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 11066
    iget-object p2, p1, Lo/requestChildFocus;->extraCallback:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 4

    .line 73
    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    .line 1075
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 2066
    iget-object v1, v0, Lo/requestChildFocus;->extraCallback:Landroid/os/Handler;

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_2

    .line 1078
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "completed"

    .line 1079
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    const-string v1, "RESULT_SUCCESS"

    .line 3039
    iput-object v1, v0, Lo/requestChildFocus;->ICustomTabsCallback:Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    invoke-virtual {v0}, Lo/getSplitTrack;->onMessageChannelReady()V

    .line 1083
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    sget-object v0, Lo/requestChildFocus$ICustomTabsCallback$onMessageChannelReady;->onNavigationEvent:Lo/requestChildFocus$ICustomTabsCallback$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 4018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 1087
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 4022
    iget-object v0, v0, Lo/requestChildFocus;->onMessageChannelReady:Lo/requestChildOnScreen$ICustomTabsCallback;

    .line 1087
    invoke-interface {v0, p1}, Lo/requestChildOnScreen$ICustomTabsCallback;->onPostMessage(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    return-void

    :cond_0
    const-string v2, "failed"

    .line 1088
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "RESULT_FAILED"

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 5039
    iput-object v2, v0, Lo/requestChildFocus;->ICustomTabsCallback:Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    invoke-virtual {v0}, Lo/getSplitTrack;->onMessageChannelReady()V

    .line 1092
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 6022
    iget-object v0, v0, Lo/requestChildFocus;->onMessageChannelReady:Lo/requestChildOnScreen$ICustomTabsCallback;

    .line 1092
    invoke-interface {v0, p1}, Lo/requestChildOnScreen$ICustomTabsCallback;->onMessageChannelReady(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 7022
    iget v0, v0, Lo/requestChildFocus;->onPostMessage:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1096
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 8039
    iput-object v2, v0, Lo/requestChildFocus;->ICustomTabsCallback:Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    invoke-virtual {v0}, Lo/getSplitTrack;->onMessageChannelReady()V

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exit polling at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 9022
    iget v2, v2, Lo/requestChildFocus;->onPostMessage:I

    .line 1098
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "store_lro"

    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lo/requestChildFocus$ICustomTabsCallback;->ICustomTabsCallback:Lo/requestChildFocus;

    .line 10022
    iget-object v0, v0, Lo/requestChildFocus;->onMessageChannelReady:Lo/requestChildOnScreen$ICustomTabsCallback;

    .line 1099
    invoke-interface {v0, p1}, Lo/requestChildOnScreen$ICustomTabsCallback;->onMessageChannelReady(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    :cond_2
    return-void
.end method
