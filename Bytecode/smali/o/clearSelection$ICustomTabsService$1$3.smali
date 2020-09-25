.class public final Lo/clearSelection$ICustomTabsService$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearSelection$ICustomTabsService$1;->onPostMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/checkout/OfferResponse;",
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
        "com/cred/pay/ui/checkout/card/newcard/CheckoutAddCardFragment$initView$9$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/checkout/OfferResponse;",
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
.field private synthetic ICustomTabsCallback:Z

.field private synthetic extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

.field private synthetic onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;


# direct methods
.method constructor <init>(Lo/clearSelection$ICustomTabsService$1;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            "Z)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iput-object p2, p0, Lo/clearSelection$ICustomTabsService$1$3;->extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    iput-boolean p3, p0, Lo/clearSelection$ICustomTabsService$1$3;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/checkout/OfferResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v0, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v0, v0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 1000
    iget-object v0, v0, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/inflate;

    .line 1061
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 254
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 255
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService$1$3;->extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 1164
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 257
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 257
    check-cast p1, Lcom/cred/pay/repository/models/checkout/OfferResponse;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 259
    iget-object v1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 3000
    iget-object v1, v1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/inflate;

    .line 3046
    iget-object v1, v1, Lo/inflate;->onNavigationEvent:Ljava/util/HashMap;

    .line 259
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 4000
    iget-object p1, p1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 260
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService$1$3;->extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    const-string v1, "instrument"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4841
    iget-object p1, p1, Lo/inflate;->asInterface:Lo/setActive;

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/inflate$extraCallback$extraCallback;

    invoke-direct {v2, v0}, Lo/inflate$extraCallback$extraCallback;-><init>(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_0
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 5000
    iget-object p1, p1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/inflate;

    .line 262
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v1, p1, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v2, p1, Lo/clearSelection$ICustomTabsService$1;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v3, p1, Lo/clearSelection$ICustomTabsService$1;->extraCallback:Ljava/lang/String;

    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v4, p1, Lo/clearSelection$ICustomTabsService$1;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v5, p1, Lo/clearSelection$ICustomTabsService$1;->onRelationshipValidationResult:Ljava/lang/String;

    iget-boolean v6, p0, Lo/clearSelection$ICustomTabsService$1$3;->ICustomTabsCallback:Z

    invoke-virtual/range {v0 .. v6}, Lo/inflate;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 265
    :cond_3
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object p1, p1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 6000
    iget-object p1, p1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/inflate;

    .line 265
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v1, p1, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v2, p1, Lo/clearSelection$ICustomTabsService$1;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v3, p1, Lo/clearSelection$ICustomTabsService$1;->extraCallback:Ljava/lang/String;

    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v4, p1, Lo/clearSelection$ICustomTabsService$1;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$1$3;->onNavigationEvent:Lo/clearSelection$ICustomTabsService$1;

    iget-object v5, p1, Lo/clearSelection$ICustomTabsService$1;->onRelationshipValidationResult:Ljava/lang/String;

    iget-boolean v6, p0, Lo/clearSelection$ICustomTabsService$1$3;->ICustomTabsCallback:Z

    invoke-virtual/range {v0 .. v6}, Lo/inflate;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
