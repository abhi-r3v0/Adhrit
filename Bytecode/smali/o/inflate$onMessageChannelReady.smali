.class public final Lo/inflate$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->onNavigationEvent(IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
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
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$checkPaymentStatus$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
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
.field final synthetic ICustomTabsCallback:I

.field final synthetic onMessageChannelReady:Lo/inflate;

.field final synthetic onPostMessage:J


# direct methods
.method constructor <init>(Lo/inflate;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    iput p2, p0, Lo/inflate$onMessageChannelReady;->ICustomTabsCallback:I

    iput-wide p3, p0, Lo/inflate$onMessageChannelReady;->onPostMessage:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;-><init>(Lo/inflate$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    check-cast v1, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    return-void

    .line 649
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_4

    .line 650
    iget-object v0, p0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    .line 1061
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 650
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 651
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    .line 2697
    iget-object v0, v0, Lo/inflate;->requestPostMessageChannel:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 651
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/inflate;->extraCallback(Lo/inflate;Lcom/dreamplug/utils/model/BaseResponse;)V

    return-void

    .line 652
    :cond_3
    iget-object v0, p0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    .line 4014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 652
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, v1, p1}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)V

    :cond_4
    return-void
.end method
