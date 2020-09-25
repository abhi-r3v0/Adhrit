.class final Lo/clearSelection$ICustomTabsService$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearSelection$ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "triggerPay",
        "",
        "userConsentToEnroll",
        "",
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
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic ICustomTabsCallback$Stub:Ljava/lang/String;

.field final synthetic extraCallback:Ljava/lang/String;

.field final synthetic onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

.field final synthetic onNavigationEvent:Ljava/lang/String;

.field final synthetic onPostMessage:Ljava/lang/String;

.field final synthetic onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/clearSelection$ICustomTabsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iput-object p2, p0, Lo/clearSelection$ICustomTabsService$1;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/clearSelection$ICustomTabsService$1;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lo/clearSelection$ICustomTabsService$1;->extraCallback:Ljava/lang/String;

    iput-object p6, p0, Lo/clearSelection$ICustomTabsService$1;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p7, p0, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/clearSelection$ICustomTabsService$1;->onPostMessage(Z)V

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final onPostMessage(Z)V
    .locals 27

    move-object/from16 v0, p0

    .line 215
    iget-object v1, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {v1}, Lo/clearSelection;->onNavigationEvent(Lo/clearSelection;)Lo/setWidth;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1031
    iget-object v1, v1, Lo/setWidth;->onPostMessage:Lo/setActive;

    if-eqz v1, :cond_1

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 215
    :goto_0
    check-cast v1, Lo/setWidth$onMessageChannelReady;

    if-eqz v1, :cond_1

    .line 2241
    iget-object v1, v1, Lo/setWidth$onMessageChannelReady;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 215
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 216
    :cond_2
    iget-object v3, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v3, v3, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 3000
    iget-object v3, v3, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/inflate;

    .line 3347
    iget-object v3, v3, Lo/inflate;->updateVisuals:Ljava/lang/String;

    const-string v4, "SURCHARGE_AMOUNT"

    invoke-static {v4, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    new-instance v3, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 219
    new-instance v18, Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    .line 222
    iget-object v8, v0, Lo/clearSelection$ICustomTabsService$1;->onPostMessage:Ljava/lang/String;

    if-nez v8, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 223
    :cond_3
    iget-object v7, v0, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v7, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 225
    :cond_4
    iget-object v14, v0, Lo/clearSelection$ICustomTabsService$1;->onNavigationEvent:Ljava/lang/String;

    .line 226
    iget-object v15, v0, Lo/clearSelection$ICustomTabsService$1;->extraCallback:Ljava/lang/String;

    .line 227
    iget-object v13, v0, Lo/clearSelection$ICustomTabsService$1;->onRelationshipValidationResult:Ljava/lang/String;

    .line 4040
    iget-object v12, v1, Lcom/cred/pay/repository/models/CardBinDetails;->extraCallback:Ljava/lang/String;

    .line 229
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 232
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v9, 0x0

    const/16 v16, 0x0

    const-string v11, "NEW_CARD"

    const-string v10, "addNewCard"

    move-object/from16 v4, v18

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v17

    move/from16 v17, p1

    .line 219
    invoke-direct/range {v4 .. v17}, Lcom/cred/pay/repository/models/checkout/InstrumentAction;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    new-array v5, v4, [Lo/addWrite;

    const/4 v6, 0x0

    .line 235
    new-instance v7, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;

    .line 236
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 238
    new-instance v15, Lcom/cred/pay/repository/models/checkout/InstrumentView;

    .line 4041
    iget-object v14, v1, Lcom/cred/pay/repository/models/CardBinDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 240
    iget-object v12, v0, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 4046
    iget-object v10, v1, Lcom/cred/pay/repository/models/CardBinDetails;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 4047
    iget-object v11, v1, Lcom/cred/pay/repository/models/CardBinDetails;->onTransact:Ljava/lang/String;

    .line 243
    new-instance v13, Lcom/cred/pay/repository/models/Status;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1f

    const/16 v26, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v19 .. v26}, Lcom/cred/pay/repository/models/Status;-><init>(ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v15

    .line 238
    invoke-direct/range {v9 .. v14}, Lcom/cred/pay/repository/models/checkout/InstrumentView;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;)V

    const-string v1, "INSTRUMENT_LIST"

    .line 235
    invoke-direct {v7, v8, v1, v15}, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentView;)V

    .line 5043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v8, "suggested_view"

    invoke-direct {v1, v8, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v6

    const-string v1, "pairs"

    .line 235
    invoke-static {v5, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object v10, v1

    check-cast v10, Ljava/util/Map;

    invoke-static {v10, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v5, "addNewCard"

    const-string v6, "NEW_CARD"

    move-object v4, v3

    move-object/from16 v8, v18

    .line 217
    invoke-direct/range {v4 .. v10}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)V

    .line 248
    iget-object v1, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 6000
    iget-object v1, v1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/inflate;

    .line 6061
    iget-object v1, v1, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 248
    new-instance v4, Lo/addWrite;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 249
    iget-object v1, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 7000
    iget-object v1, v1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/inflate;

    .line 7170
    iget-object v4, v3, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    if-eqz v4, :cond_5

    .line 251
    invoke-static {v4}, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->ICustomTabsCallback(Lcom/cred/pay/repository/models/checkout/InstrumentAction;)Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    move-result-object v2

    .line 249
    :cond_5
    invoke-static {v3, v2}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Lcom/cred/pay/repository/models/checkout/InstrumentAction;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object v2

    .line 252
    new-instance v4, Lo/clearSelection$ICustomTabsService$1$3;

    move/from16 v11, p1

    invoke-direct {v4, v0, v3, v11}, Lo/clearSelection$ICustomTabsService$1$3;-><init>(Lo/clearSelection$ICustomTabsService$1;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Z)V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    .line 249
    invoke-virtual {v1, v2, v4}, Lo/inflate;->onMessageChannelReady(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Lo/getScrapOrCachedViewForId;)V

    return-void

    :cond_6
    move/from16 v11, p1

    .line 270
    iget-object v1, v0, Lo/clearSelection$ICustomTabsService$1;->onMessageChannelReady:Lo/clearSelection$ICustomTabsService;

    iget-object v1, v1, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 8000
    iget-object v1, v1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lo/inflate;

    .line 270
    iget-object v6, v0, Lo/clearSelection$ICustomTabsService$1;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v6, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    iget-object v7, v0, Lo/clearSelection$ICustomTabsService$1;->onPostMessage:Ljava/lang/String;

    if-nez v7, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    iget-object v8, v0, Lo/clearSelection$ICustomTabsService$1;->extraCallback:Ljava/lang/String;

    iget-object v9, v0, Lo/clearSelection$ICustomTabsService$1;->onNavigationEvent:Ljava/lang/String;

    iget-object v10, v0, Lo/clearSelection$ICustomTabsService$1;->onRelationshipValidationResult:Ljava/lang/String;

    move/from16 v11, p1

    invoke-virtual/range {v5 .. v11}, Lo/inflate;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
