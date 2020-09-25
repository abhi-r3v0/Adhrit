.class public final Lo/inflate$onRelationshipValidationResult;
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
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$fetchRecommendedCardOffer$1",
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
.field private synthetic onNavigationEvent:Lo/inflate;

.field private synthetic onPostMessage:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;


# direct methods
.method constructor <init>(Lo/inflate;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            ")V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lo/inflate$onRelationshipValidationResult;->onNavigationEvent:Lo/inflate;

    iput-object p2, p0, Lo/inflate$onRelationshipValidationResult;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
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

    .line 329
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lo/inflate$onRelationshipValidationResult;->onNavigationEvent:Lo/inflate;

    .line 1046
    iget-object v0, v0, Lo/inflate;->onNavigationEvent:Ljava/util/HashMap;

    .line 330
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lo/inflate$onRelationshipValidationResult;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 1164
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 330
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2009
    :cond_0
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 330
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    iget-object p1, p0, Lo/inflate$onRelationshipValidationResult;->onNavigationEvent:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->onMessageChannelReady(Lo/inflate;)V

    return-void
.end method
