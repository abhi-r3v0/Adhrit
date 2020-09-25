.class public final Lo/calculateScrollDistance;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012 \u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u00020\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010!\u001a\u00020\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010\"\u001a\u00020\n2\u0008\u0008\u0002\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020\nJ\u0006\u0010&\u001a\u00020\nJ\u000e\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020)J\u0010\u0010*\u001a\u00020\n2\u0008\u0008\u0002\u0010+\u001a\u00020$R+\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiTrackData;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "userId",
        "",
        "callback",
        "Lkotlin/Function3;",
        "Lcom/cred/pay/repository/models/UpiResponse;",
        "",
        "",
        "commandTimeouts",
        "",
        "",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Ljava/util/Map;)V",
        "getCallback",
        "()Lkotlin/jvm/functions/Function3;",
        "callbacks",
        "Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;",
        "getCommandTimeouts",
        "()Ljava/util/Map;",
        "juspaySessionToken",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "upiCommandManager",
        "Lcom/dreamplug/upi/commandmanager/UpiCommandManager;",
        "getUpiCommandManager",
        "()Lcom/dreamplug/upi/commandmanager/UpiCommandManager;",
        "upiInit",
        "getUserId",
        "()Ljava/lang/String;",
        "checkBalance",
        "account",
        "Lcom/cred/pay/repository/models/Account;",
        "deleteAccount",
        "getSessionToken",
        "retryCount",
        "",
        "onDestroy",
        "onOnUpiConfigApiFailure",
        "setMpin",
        "pinData",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
        "startTrackUpiSetup",
        "sessionRetryCount",
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
.field public ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

.field public final extraCallback:Lo/add;

.field public final onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

.field final onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Z

.field final onRelationshipValidationResult:Lo/rerunTransactionQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rerunTransactionQueue<",
            "Ljava/lang/String;",
            "Lo/MediaSessionCompat$1$onMessageChannelReady;",
            "Ljava/lang/Boolean;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Ljava/lang/String;Lo/rerunTransactionQueue;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onSessionEvent;",
            "Ljava/lang/String;",
            "Lo/rerunTransactionQueue<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lo/MediaSessionCompat$1$onMessageChannelReady;",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/addWrites;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandTimeouts"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/calculateScrollDistance;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 4031
    sget-object p2, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 6000
    sget-object p2, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setActive;

    .line 5028
    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 4031
    new-instance p3, Lo/calculateScrollDistance$onMessageChannelReady;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lo/calculateScrollDistance$onMessageChannelReady;-><init>(Lo/calculateScrollDistance;I)V

    check-cast p3, Lo/setPlaybackToRemote;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 138
    new-instance p2, Lo/calculateScrollDistance$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/calculateScrollDistance$onNavigationEvent;-><init>(Lo/calculateScrollDistance;)V

    check-cast p2, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    iput-object p2, p0, Lo/calculateScrollDistance;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 218
    new-instance p2, Lo/add;

    check-cast p1, Landroid/app/Activity;

    iget-object p3, p0, Lo/calculateScrollDistance;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-direct {p2, p1, p3}, Lo/add;-><init>(Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    iput-object p2, p0, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 12

    .line 65
    iget-boolean v0, p0, Lo/calculateScrollDistance;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v0, :cond_0

    .line 66
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 67
    sget-object v0, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "axis_hmac_key"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getMcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getMerchantId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "merchantId"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "merchantChannelId"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "merchantCustomerId"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "timestamp"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    const-string v8, "INR"

    .line 75
    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "udfParameters"

    const-string/jumbo v9, "{}"

    .line 76
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v9, Lo/shouldBeKeptAsChild;->ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$extraCallback;

    sget-object v9, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    const/4 v9, 0x7

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 79
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v10, v11

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x2

    .line 81
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x3

    .line 82
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x4

    .line 83
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x5

    .line 84
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x6

    .line 85
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v1

    .line 78
    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s%s%s%s%s%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "HmacSHA256"

    .line 1061
    invoke-static {v1, v0, v2}, Lo/shouldBeKeptAsChild$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "merchantSignature"

    .line 77
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v1, p0, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    .line 89
    iget-object v4, p0, Lo/calculateScrollDistance;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    const/4 v5, 0x0

    .line 90
    new-instance v6, Lo/add$ICustomTabsCallback;

    sget-object v0, Lo/calculateScrollDistance$extraCallback;->extraCallback:Lo/calculateScrollDistance$extraCallback;

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-direct {v6, p1, v0}, Lo/add$ICustomTabsCallback;-><init>(ILo/onDisconnectSetValue;)V

    const/16 v7, 0x8

    const-string v2, "GET_SESSION_TOKEN"

    .line 87
    invoke-static/range {v1 .. v7}, Lo/add;->onMessageChannelReady(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;I)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lcom/cred/pay/repository/models/Account;)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lo/calculateScrollDistance;->onPostMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 3072
    iget-object p1, p1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "accountReferenceId"

    .line 132
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "udfParameters"

    const-string/jumbo v1, "{}"

    .line 133
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object p1, p0, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    const-string v1, "DELETE"

    invoke-static {p1, v1, v0}, Lo/add;->extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lcom/cred/pay/repository/models/Account;)V
    .locals 6

    .line 119
    iget-boolean v0, p0, Lo/calculateScrollDistance;->onPostMessage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UUID.randomUUID().toString()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "-"

    const-string v5, ""

    .line 1075
    invoke-static {v2, v4, v5, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upiRequestId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2072
    iget-object v2, p1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "accountReferenceId"

    .line 122
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "udfParameters"

    const-string/jumbo v3, "{}"

    .line 123
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 3063
    iget-object v1, p1, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    :cond_1
    const-string p1, "bank_code"

    .line 124
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object p1, p0, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    const-string v1, "CHECK_BALANCE"

    invoke-static {p1, v1, v0}, Lo/add;->extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method
