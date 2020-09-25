.class public final Lo/calculateScrollDistance$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateScrollDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/upi/UpiTrackData$startTrackUpiSetup$1",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onChanged",
        "",
        "result",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/calculateScrollDistance;


# direct methods
.method public constructor <init>(Lo/calculateScrollDistance;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    iput p2, p0, Lo/calculateScrollDistance$onMessageChannelReady;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 31
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    if-eqz p1, :cond_7

    .line 1034
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1034
    move-object v1, p1

    check-cast v1, Lcom/cred/pay/repository/models/JuspaySessionToken;

    .line 1035
    :cond_1
    sget-object p1, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object p1, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 2028
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1035
    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    if-eqz v1, :cond_6

    .line 1037
    iget-object p1, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 3017
    iput-object v1, p1, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    .line 1038
    sget-object p1, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    new-instance p1, Lcom/dreamplug/upi/UpiData;

    iget-object v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 4017
    iget-object v0, v0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-nez v0, :cond_2

    .line 1038
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v1

    .line 1039
    iget-object v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 5017
    iget-object v0, v0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-nez v0, :cond_3

    .line 1039
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMcc()Ljava/lang/String;

    move-result-object v2

    .line 1040
    iget-object v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 6017
    iget-object v0, v0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-nez v0, :cond_4

    .line 1040
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v3

    .line 1041
    iget-object v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 7017
    iget-object v0, v0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-nez v0, :cond_5

    .line 1041
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantId()Ljava/lang/String;

    move-result-object v4

    .line 1042
    iget-object v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 7018
    iget-object v5, v0, Lo/calculateScrollDistance;->onNavigationEvent:Ljava/lang/String;

    .line 1043
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    const-string v0, "UPI"

    invoke-static {v0}, Lo/setHeight;->extraCallback(Ljava/lang/String;)Lo/setOnItemClickListener;

    move-result-object v0

    .line 7037
    invoke-virtual {v0}, Lo/setOnItemClickListener;->extraCallback()V

    .line 7038
    iget-object v0, v0, Lo/setOnItemClickListener;->ICustomTabsCallback:Lo/setActive;

    .line 1043
    move-object v6, v0

    check-cast v6, Landroidx/lifecycle/LiveData;

    move-object v0, p1

    .line 1038
    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/upi/UpiData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LiveData;)V

    invoke-static {p1}, Lo/onChangeStarting;->onMessageChannelReady(Lcom/dreamplug/upi/UpiData;)V

    .line 1045
    iget-object p1, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    iget v0, p0, Lo/calculateScrollDistance$onMessageChannelReady;->extraCallback:I

    invoke-virtual {p1, v0}, Lo/calculateScrollDistance;->extraCallback(I)V

    return-void

    .line 1047
    :cond_6
    iget-object p1, p0, Lo/calculateScrollDistance$onMessageChannelReady;->onMessageChannelReady:Lo/calculateScrollDistance;

    .line 7055
    iget-object p1, p1, Lo/calculateScrollDistance;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 7056
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    const-string v2, "failure"

    .line 7057
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const-string v2, "D004"

    .line 7058
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GET_SESSION_TOKEN"

    const-string v2, ""

    .line 7055
    invoke-interface {p1, v0, v1, v2}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
