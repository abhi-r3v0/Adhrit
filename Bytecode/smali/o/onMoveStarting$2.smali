.class public final Lo/onMoveStarting$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onMoveStarting;-><init>(Lo/onSessionEvent;Ljava/lang/String;Ljava/util/Map;)V
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
        "com/dreamplug/upi/UpiPaymentData$2",
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
.field private synthetic onPostMessage:Lo/onMoveStarting;


# direct methods
.method constructor <init>(Lo/onMoveStarting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lo/onMoveStarting$2;->onPostMessage:Lo/onMoveStarting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 96
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    if-eqz p1, :cond_3

    .line 1099
    iget-object v0, p0, Lo/onMoveStarting$2;->onPostMessage:Lo/onMoveStarting;

    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1099
    move-object v2, p1

    check-cast v2, Lcom/cred/pay/repository/models/JuspaySessionToken;

    .line 2020
    :cond_1
    iput-object v2, v0, Lo/onMoveStarting;->onPostMessage:Lcom/cred/pay/repository/models/JuspaySessionToken;

    .line 1100
    sget-object p1, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object p1, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 2028
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1100
    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1101
    iget-object p1, p0, Lo/onMoveStarting$2;->onPostMessage:Lo/onMoveStarting;

    .line 3020
    iget-object p1, p1, Lo/onMoveStarting;->onPostMessage:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz p1, :cond_2

    .line 1102
    iget-object p1, p0, Lo/onMoveStarting$2;->onPostMessage:Lo/onMoveStarting;

    invoke-virtual {p1}, Lo/onMoveStarting;->onPostMessage()V

    return-void

    .line 1104
    :cond_2
    iget-object p1, p0, Lo/onMoveStarting$2;->onPostMessage:Lo/onMoveStarting;

    .line 3112
    iget-object p1, p1, Lo/onMoveStarting;->onTransact:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 3113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    const-string v2, "failure"

    .line 3114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const-string v2, "D004"

    .line 3115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GET_SESSION_TOKEN"

    const-string v2, ""

    .line 3112
    invoke-interface {p1, v0, v1, v2}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
