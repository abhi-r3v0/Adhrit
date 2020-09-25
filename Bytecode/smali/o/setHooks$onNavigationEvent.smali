.class public final Lo/setHooks$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHooks;->onPostMessage(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V
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
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationViewModel$selectedInstrument$1",
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
.field private synthetic ICustomTabsCallback:Lo/setHooks;

.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setHooks;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/setHooks$onNavigationEvent;->ICustomTabsCallback:Lo/setHooks;

    iput-object p2, p0, Lo/setHooks$onNavigationEvent;->extraCallback:Ljava/lang/String;

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
            "Lcom/cred/pay/repository/models/checkout/OfferResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lo/setHooks$onNavigationEvent;->ICustomTabsCallback:Lo/setHooks;

    .line 1027
    iget-object v0, v0, Lo/setHooks;->ICustomTabsCallback:Lo/inflate;

    const-string v1, "parentViewModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1061
    :cond_0
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 78
    new-instance v2, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 79
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 80
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 80
    check-cast p1, Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 81
    iget-object v0, p0, Lo/setHooks$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Lo/setHooks$onNavigationEvent;->ICustomTabsCallback:Lo/setHooks;

    .line 2027
    iget-object v0, v0, Lo/setHooks;->ICustomTabsCallback:Lo/inflate;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2046
    :cond_1
    iget-object v0, v0, Lo/inflate;->onNavigationEvent:Ljava/util/HashMap;

    .line 82
    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lo/setHooks$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v0, p0, Lo/setHooks$onNavigationEvent;->ICustomTabsCallback:Lo/setHooks;

    .line 3027
    iget-object v0, v0, Lo/setHooks;->ICustomTabsCallback:Lo/inflate;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3068
    :cond_3
    iput-object p1, v0, Lo/inflate;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 85
    iget-object v0, p0, Lo/setHooks$onNavigationEvent;->ICustomTabsCallback:Lo/setHooks;

    invoke-static {v0, p1}, Lo/setHooks;->onNavigationEvent(Lo/setHooks;Lcom/cred/pay/repository/models/checkout/OfferResponse;)V

    :cond_4
    return-void
.end method
