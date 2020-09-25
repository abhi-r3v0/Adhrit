.class final Lo/inflate$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lorg/json/JSONObject;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/json/JSONObject;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/inflate;

.field private synthetic extraCallback:Lo/inflate$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

.field private synthetic onPostMessage:Lcom/cred/pay/repository/models/checkout/PayResponse;


# direct methods
.method constructor <init>(Lo/inflate;Lcom/cred/pay/repository/models/checkout/PayResponse;Lo/inflate$ICustomTabsCallback;Lcom/cred/pay/repository/models/checkout/CardDetails;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    iput-object p2, p0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lcom/cred/pay/repository/models/checkout/PayResponse;

    iput-object p3, p0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/inflate$ICustomTabsCallback;

    iput-object p4, p0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 44
    move-object/from16 v1, p1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "payload"

    if-eqz v1, :cond_0

    .line 1572
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1573
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 1575
    :goto_0
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1574
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1575
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "enrolled"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2074
    iput-object v1, v5, Lo/inflate;->mayLaunchUrl:Ljava/lang/Boolean;

    .line 1577
    iget-object v1, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    invoke-static {v1}, Lo/inflate;->asBinder(Lo/inflate;)Lo/show;

    move-result-object v1

    .line 1578
    iget-object v3, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    .line 3051
    iget-object v3, v3, Lo/inflate;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1578
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1579
    :cond_2
    new-instance v5, Lcom/cred/pay/repository/visa/InstrumentAttributeUpdateRequest;

    .line 1580
    new-instance v16, Lcom/cred/pay/repository/visa/InstrumentAttribute;

    .line 1581
    iget-object v7, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lcom/cred/pay/repository/models/checkout/PayResponse;

    .line 3073
    iget-object v7, v7, Lcom/cred/pay/repository/models/checkout/PayResponse;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrument;

    if-eqz v7, :cond_3

    .line 3109
    iget-object v2, v7, Lcom/cred/pay/repository/models/checkout/PaymentInstrument;->onNavigationEvent:Ljava/lang/String;

    :cond_3
    move-object v8, v2

    if-nez v8, :cond_4

    .line 1581
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1582
    :cond_4
    iget-object v2, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/inflate$ICustomTabsCallback;

    .line 3918
    iget-object v9, v2, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    const/4 v10, 0x0

    .line 1583
    iget-object v2, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    .line 4074
    iget-object v11, v2, Lo/inflate;->mayLaunchUrl:Ljava/lang/Boolean;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x34

    const/4 v15, 0x0

    move-object/from16 v7, v16

    .line 1580
    invoke-direct/range {v7 .. v15}, Lcom/cred/pay/repository/visa/InstrumentAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5019
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v7, "java.util.Collections.singletonList(element)"

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    invoke-direct {v5, v2}, Lcom/cred/pay/repository/visa/InstrumentAttributeUpdateRequest;-><init>(Ljava/util/List;)V

    .line 1577
    invoke-interface {v1, v3, v5}, Lo/show;->onPostMessage(Ljava/lang/String;Lcom/cred/pay/repository/visa/InstrumentAttributeUpdateRequest;)Lo/clearScrap;

    move-result-object v1

    .line 1587
    sget-object v2, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0xe

    invoke-static/range {v7 .. v13}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 1588
    new-instance v2, Lo/dispatchViewRecycled;

    invoke-direct {v2}, Lo/dispatchViewRecycled;-><init>()V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    const/4 v1, 0x7

    new-array v2, v1, [Lo/addWrite;

    .line 1591
    iget-object v3, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    .line 5233
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/CardDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v7, "bin"

    invoke-direct {v5, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v6

    const/4 v3, 0x1

    .line 7043
    new-instance v5, Lo/addWrite;

    const-string v6, "payment_status"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 1593
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    .line 7074
    iget-object v5, v5, Lo/inflate;->mayLaunchUrl:Ljava/lang/Boolean;

    .line 8043
    new-instance v6, Lo/addWrite;

    const-string v7, "enrollment_status"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 1594
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/inflate$ICustomTabsCallback;

    .line 8914
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    .line 9056
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onTransact:Ljava/lang/String;

    .line 10043
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_sub_method"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x4

    .line 1595
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/inflate$ICustomTabsCallback;

    .line 10914
    iget-object v5, v5, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    .line 11058
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->asInterface:Ljava/lang/String;

    .line 12043
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_method"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 1596
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    invoke-virtual {v5}, Lo/inflate;->onTransact()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 13043
    new-instance v6, Lo/addWrite;

    const-string v7, "cart_value"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x6

    .line 1597
    iget-object v5, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    invoke-virtual {v5}, Lo/inflate;->asBinder()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 14043
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_amount"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const-string v3, "pairs"

    .line 1590
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "juspay_sdk_vsc_pay_request"

    .line 1589
    invoke-static {v1, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "ERROR"

    .line 1601
    invoke-static {v4, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1604
    iget-object v1, v0, Lo/inflate$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/inflate;

    invoke-virtual {v1}, Lo/inflate;->ICustomTabsCallback()V

    .line 44
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
