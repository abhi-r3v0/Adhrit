.class public final Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$OnDismissListener;
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
        "com/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListViewModel$onPayCta$1",
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
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

.field private synthetic onPostMessage:Lo/PopupMenu$OnDismissListener;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnDismissListener;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            ")V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    iput-object p2, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

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

    .line 89
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    .line 1028
    iget-object v0, v0, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    const-string v1, "parentViewModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1061
    :cond_0
    iget-object v0, v0, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 89
    new-instance v2, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 90
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 91
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 91
    check-cast p1, Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 92
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 93
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    .line 2028
    iget-object v0, v0, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2046
    :cond_1
    iget-object v0, v0, Lo/inflate;->onNavigationEvent:Ljava/util/HashMap;

    .line 93
    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    .line 3028
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    const-string v1, "instrument"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3841
    iget-object p1, p1, Lo/inflate;->asInterface:Lo/setActive;

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/inflate$extraCallback$extraCallback;

    invoke-direct {v2, v0}, Lo/inflate$extraCallback$extraCallback;-><init>(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_3
    iget-object p1, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    .line 4028
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-virtual {p1, v0}, Lo/inflate;->ICustomTabsCallback(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    return-void

    .line 99
    :cond_5
    iget-object p1, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onPostMessage:Lo/PopupMenu$OnDismissListener;

    .line 5028
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez p1, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 99
    :cond_6
    iget-object v0, p0, Lo/PopupMenu$OnDismissListener$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-virtual {p1, v0}, Lo/inflate;->ICustomTabsCallback(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    return-void
.end method
