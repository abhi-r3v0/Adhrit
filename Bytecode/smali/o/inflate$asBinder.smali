.class public final Lo/inflate$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;",
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
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$initCheckout$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

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
            "Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 130
    check-cast v2, Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 1051
    :cond_1
    iput-object v2, v0, Lo/inflate;->onRelationshipValidationResult:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 131
    check-cast p1, Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 2021
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/CreateSessionResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_3

    const-string v3, "$this$firstOrNull"

    .line 131
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 131
    :goto_0
    check-cast v2, Ljava/lang/String;

    .line 3075
    :cond_3
    iput-object v2, v0, Lo/inflate;->updateVisuals:Ljava/lang/String;

    .line 132
    sget-object p1, Lo/setWindowLayoutType;->onPostMessage:Lo/setWindowLayoutType;

    invoke-static {}, Lo/setWindowLayoutType;->onNavigationEvent()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    .line 4051
    iget-object v0, v0, Lo/inflate;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v1, "checkout_id"

    .line 132
    invoke-virtual {p1, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    iget-object p1, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    .line 4145
    iget-object p1, p1, Lo/inflate;->ICustomTabsService$Stub:Lo/setActive;

    .line 133
    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    invoke-virtual {v0}, Lo/inflate;->asBinder()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->onPostMessage(Lo/inflate;)V

    return-void

    .line 135
    :cond_5
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v2, v0, [Lo/addWrite;

    .line 137
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 137
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v4}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    .line 6043
    new-instance v4, Lo/addWrite;

    const-string v5, "error_code"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    const-string v1, "pairs"

    .line 137
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "checkout_SDK_failure"

    .line 136
    invoke-static {v0, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    .line 7061
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 138
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lo/inflate$asBinder;->ICustomTabsCallback:Lo/inflate;

    .line 8014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 9014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 139
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lo/inflate;->onPostMessage(Lo/inflate;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;Ljava/lang/Integer;)V

    :cond_6
    return-void
.end method
