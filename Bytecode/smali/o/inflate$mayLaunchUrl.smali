.class public final Lo/inflate$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/checkout/VerifyPaymentResponse;",
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
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$verifyPaymentRequest$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/checkout/VerifyPaymentResponse;",
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
.field private synthetic onPostMessage:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/checkout/VerifyPaymentResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 97
    check-cast p1, Lcom/cred/pay/repository/models/checkout/VerifyPaymentResponse;

    if-eqz p1, :cond_0

    .line 1012
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/VerifyPaymentResponse;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 97
    :cond_1
    invoke-static {v0, p1}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/String;)V

    .line 98
    sget-object p1, Lo/setWindowLayoutType;->onPostMessage:Lo/setWindowLayoutType;

    invoke-static {}, Lo/setWindowLayoutType;->onNavigationEvent()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    invoke-static {v0}, Lo/inflate;->ICustomTabsCallback(Lo/inflate;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "merchant_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    iget-object p1, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->extraCallback(Lo/inflate;)V

    return-void

    .line 100
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 101
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 1061
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 101
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 103
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 103
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v4}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "error_code"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 103
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "checkout_SDK_failure"

    .line 102
    invoke-static {v0, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 4014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 105
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    .line 4697
    iget-object v0, v0, Lo/inflate;->requestPostMessageChannel:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_5

    .line 106
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/inflate;->extraCallback(Lo/inflate;Lcom/dreamplug/utils/model/BaseResponse;)V

    return-void

    .line 6014
    :cond_6
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 107
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    :goto_1
    const-string v1, "HD_0012"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 7014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_8

    .line 107
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    sget v1, Lo/onItemHoverEnter$onMessageChannelReady;->il_payment_success:I

    invoke-virtual {v0, p1, v1}, Lo/inflate;->extraCallback(Lcom/dreamplug/utils/model/BaseResponse;I)V

    return-void

    .line 8014
    :cond_9
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 109
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v0, "HD_0011"

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 9014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 110
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;Ljava/lang/Integer;)V

    return-void

    .line 112
    :cond_b
    iget-object v0, p0, Lo/inflate$mayLaunchUrl;->onPostMessage:Lo/inflate;

    .line 11014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 12014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 112
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;Ljava/lang/Integer;)V

    :cond_c
    return-void
.end method
