.class public final Lo/inflate$ICustomTabsCallback$Stub;
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
        "com/cred/pay/ui/checkout/CheckoutContainerViewModel$fetchSessionDetails$2",
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


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lo/inflate$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/inflate;

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

    .line 178
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lo/inflate$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/inflate;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 179
    check-cast p1, Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 1068
    iput-object p1, v0, Lo/inflate;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 180
    iget-object p1, p0, Lo/inflate$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->onNavigationEvent(Lo/inflate;)V

    return-void

    .line 181
    :cond_0
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lo/inflate$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/inflate;

    new-instance v0, Lcom/cred/pay/repository/models/checkout/OfferResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/cred/pay/repository/models/checkout/OfferResponse;-><init>(Ljava/lang/Boolean;Ljava/util/List;)V

    .line 2068
    iput-object v0, p1, Lo/inflate;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/checkout/OfferResponse;

    .line 187
    iget-object p1, p0, Lo/inflate$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/inflate;

    invoke-static {p1}, Lo/inflate;->onNavigationEvent(Lo/inflate;)V

    :cond_1
    return-void
.end method
