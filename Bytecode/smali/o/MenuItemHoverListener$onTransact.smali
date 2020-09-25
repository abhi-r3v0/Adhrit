.class final Lo/MenuItemHoverListener$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MenuItemHoverListener;->extraCallback(Lo/isInputMethodNotNeeded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/PayCallResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/PayCallResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic onNavigationEvent:Lo/MenuItemHoverListener;

.field private synthetic onPostMessage:Lo/isInputMethodNotNeeded;


# direct methods
.method constructor <init>(Lo/MenuItemHoverListener;Lo/isInputMethodNotNeeded;)V
    .locals 0

    iput-object p1, p0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    iput-object p2, p0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    .line 31
    move-object/from16 v1, p1

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v3, "pairs"

    const-string v4, "amount"

    const-string v6, "payment_instrument_group"

    const/4 v7, 0x3

    const-string v8, "payment_instrument"

    const/4 v9, 0x2

    const-string v10, "order_id"

    const-string/jumbo v11, "response"

    const/4 v12, 0x5

    const-string v13, "payments_pay_api_call_response"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    if-eqz v2, :cond_23

    new-array v2, v12, [Lo/addWrite;

    .line 2043
    new-instance v12, Lo/addWrite;

    const-string/jumbo v5, "success"

    invoke-direct {v12, v11, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v15

    .line 1161
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 3033
    iget-object v5, v5, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v5, :cond_0

    .line 4011
    iget-object v5, v5, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v5, v17

    .line 4043
    :goto_0
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v10, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v2, v14

    .line 1162
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    invoke-virtual {v5}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v5

    .line 5043
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v9

    .line 1163
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    invoke-virtual {v5}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v5

    .line 6043
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v6, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v7

    .line 1164
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 7033
    iget-object v5, v5, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v5, :cond_1

    .line 8013
    iget-object v5, v5, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    move-object/from16 v5, v17

    .line 8043
    :goto_1
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    aput-object v6, v2, v4

    .line 1160
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1159
    invoke-static {v13, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1165
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 1166
    instance-of v3, v2, Lcom/cred/pay/repository/models/CardInstrument;

    if-eqz v3, :cond_3

    .line 1167
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 9056
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCommand:Lo/setActive;

    .line 1167
    new-instance v3, Lo/throwIfInMutationOperation;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 10009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1167
    check-cast v1, Lcom/cred/pay/repository/models/PayCallResponse;

    if-eqz v1, :cond_2

    .line 10026
    iget-object v1, v1, Lcom/cred/pay/repository/models/PayCallResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/TransactionDetails;

    if-eqz v1, :cond_2

    .line 10034
    iget-object v1, v1, Lcom/cred/pay/repository/models/TransactionDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v1, v17

    .line 1167
    :goto_2
    invoke-direct {v3, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 1169
    :cond_3
    instance-of v3, v2, Lcom/cred/pay/repository/models/NetBankingInstrument;

    if-eqz v3, :cond_5

    .line 1170
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 10056
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCommand:Lo/setActive;

    .line 1170
    new-instance v3, Lo/throwIfInMutationOperation;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 11009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1170
    check-cast v1, Lcom/cred/pay/repository/models/PayCallResponse;

    if-eqz v1, :cond_4

    .line 11026
    iget-object v1, v1, Lcom/cred/pay/repository/models/PayCallResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/TransactionDetails;

    if-eqz v1, :cond_4

    .line 11034
    iget-object v1, v1, Lcom/cred/pay/repository/models/TransactionDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v1, v17

    .line 1170
    :goto_3
    invoke-direct {v3, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 1172
    :cond_5
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    if-eqz v3, :cond_8

    .line 1173
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 11050
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 1174
    new-instance v3, Lo/throwIfInMutationOperation;

    new-instance v4, Lo/onItemHoverExit$getInterfaceDescriptor;

    .line 1175
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 12009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1175
    check-cast v1, Lcom/cred/pay/repository/models/PayCallResponse;

    if-eqz v1, :cond_6

    .line 12026
    iget-object v1, v1, Lcom/cred/pay/repository/models/PayCallResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/TransactionDetails;

    goto :goto_4

    :cond_6
    move-object/from16 v1, v17

    .line 1175
    :goto_4
    invoke-static {v5, v1}, Lo/MenuItemHoverListener;->onMessageChannelReady(Lo/MenuItemHoverListener;Lcom/cred/pay/repository/models/TransactionDetails;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    check-cast v5, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 12202
    iget-object v5, v5, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    if-nez v5, :cond_7

    move-object/from16 v5, v16

    .line 1174
    :cond_7
    invoke-direct {v4, v1, v5}, Lo/onItemHoverExit$getInterfaceDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    .line 1173
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 1181
    :cond_8
    instance-of v2, v2, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v2, :cond_31

    .line 1183
    sget-object v2, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    check-cast v2, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 13269
    iget-object v2, v2, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v2, :cond_9

    .line 14048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v2, :cond_9

    .line 14062
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_9
    move-object/from16 v2, v16

    :cond_a
    const-string v3, "<set-?>"

    .line 15000
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setOnItemSelectedListener;->onPostMessage:Lo/SortedList$BatchedCallback;

    sget-object v4, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v4, v4, v15

    invoke-virtual {v3, v4, v2}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1184
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 15009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1184
    check-cast v1, Lcom/cred/pay/repository/models/PayCallResponse;

    if-eqz v1, :cond_b

    .line 15026
    iget-object v1, v1, Lcom/cred/pay/repository/models/PayCallResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/TransactionDetails;

    goto :goto_5

    :cond_b
    move-object/from16 v1, v17

    .line 1185
    :goto_5
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 15052
    iget-object v2, v2, Lo/MenuItemHoverListener;->updateVisuals:Lo/setActive;

    .line 1185
    iget-object v3, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    check-cast v3, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 15269
    iget-object v3, v3, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-nez v3, :cond_c

    .line 1185
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    if-eqz v1, :cond_e

    .line 16038
    iget-object v4, v1, Lcom/cred/pay/repository/models/TransactionDetails;->onNavigationEvent:Ljava/lang/String;

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    move-object/from16 v20, v4

    goto :goto_7

    :cond_e
    :goto_6
    move-object/from16 v20, v16

    :goto_7
    if-eqz v1, :cond_10

    .line 16044
    iget-object v4, v1, Lcom/cred/pay/repository/models/TransactionDetails;->asBinder:Ljava/lang/String;

    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v25, v4

    goto :goto_9

    :cond_10
    :goto_8
    move-object/from16 v25, v16

    :goto_9
    if-eqz v1, :cond_12

    .line 17040
    iget-object v4, v1, Lcom/cred/pay/repository/models/TransactionDetails;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v4, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v21, v4

    goto :goto_b

    :cond_12
    :goto_a
    move-object/from16 v21, v16

    :goto_b
    if-eqz v1, :cond_14

    .line 17048
    iget-object v4, v1, Lcom/cred/pay/repository/models/TransactionDetails;->onTransact:Ljava/lang/String;

    if-nez v4, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v22, v4

    goto :goto_d

    :cond_14
    :goto_c
    move-object/from16 v22, v16

    .line 1191
    :goto_d
    sget-object v4, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    new-array v4, v14, [Ljava/lang/Object;

    iget-object v5, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 18033
    iget-object v5, v5, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v5, :cond_15

    .line 19013
    iget-object v5, v5, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_e

    :cond_15
    move-object/from16 v5, v17

    :goto_e
    aput-object v5, v4, v15

    .line 1191
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_17

    .line 19042
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->asInterface:Ljava/lang/String;

    if-nez v5, :cond_16

    goto :goto_f

    :cond_16
    move-object/from16 v27, v5

    goto :goto_10

    :cond_17
    :goto_f
    move-object/from16 v27, v16

    :goto_10
    if-eqz v1, :cond_18

    .line 19050
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v5, :cond_18

    .line 1194
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_1a

    if-eqz v1, :cond_19

    .line 19052
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/ShortCircuitInfo;

    move-object/from16 v17, v5

    :cond_19
    if-eqz v17, :cond_1a

    const/16 v24, 0x1

    goto :goto_12

    :cond_1a
    const/16 v24, 0x0

    :goto_12
    if-eqz v1, :cond_1c

    .line 20046
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v5, :cond_1b

    goto :goto_13

    :cond_1b
    move-object/from16 v26, v5

    goto :goto_14

    :cond_1c
    :goto_13
    move-object/from16 v26, v16

    :goto_14
    if-eqz v1, :cond_1e

    .line 20052
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/ShortCircuitInfo;

    if-eqz v5, :cond_1e

    .line 20057
    iget-object v5, v5, Lcom/cred/pay/repository/models/ShortCircuitInfo;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_1d

    goto :goto_15

    :cond_1d
    move-object/from16 v28, v5

    goto :goto_16

    :cond_1e
    :goto_15
    move-object/from16 v28, v16

    :goto_16
    if-eqz v1, :cond_20

    .line 21052
    iget-object v5, v1, Lcom/cred/pay/repository/models/TransactionDetails;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/ShortCircuitInfo;

    if-eqz v5, :cond_20

    .line 21061
    iget-object v5, v5, Lcom/cred/pay/repository/models/ShortCircuitInfo;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v5, :cond_1f

    goto :goto_17

    :cond_1f
    move-object/from16 v30, v5

    goto :goto_18

    :cond_20
    :goto_17
    move-object/from16 v30, v16

    :goto_18
    if-eqz v1, :cond_22

    .line 22052
    iget-object v1, v1, Lcom/cred/pay/repository/models/TransactionDetails;->getInterfaceDescriptor:Lcom/cred/pay/repository/models/ShortCircuitInfo;

    if-eqz v1, :cond_22

    .line 22059
    iget-object v1, v1, Lcom/cred/pay/repository/models/ShortCircuitInfo;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_21

    goto :goto_19

    :cond_21
    move-object/from16 v29, v1

    goto :goto_1a

    :cond_22
    :goto_19
    move-object/from16 v29, v16

    .line 1185
    :goto_1a
    new-instance v1, Lo/registerMediaButtonEventReceiver;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    invoke-direct/range {v18 .. v30}, Lo/registerMediaButtonEventReceiver;-><init>(Lcom/cred/pay/repository/models/VpaAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lo/throwIfInMutationOperation;

    invoke-direct {v3, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 1204
    :cond_23
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_31

    .line 1205
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 23051
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1205
    new-instance v5, Lo/addWrite;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v12, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v5, v2, [Lo/addWrite;

    .line 24043
    new-instance v7, Lo/addWrite;

    const-string v12, "failure"

    invoke-direct {v7, v11, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v15

    .line 1208
    iget-object v7, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 25033
    iget-object v7, v7, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v7, :cond_24

    .line 26011
    iget-object v7, v7, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_1b

    :cond_24
    move-object/from16 v7, v17

    .line 26043
    :goto_1b
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v5, v14

    .line 1209
    iget-object v7, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    invoke-virtual {v7}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v7

    .line 27043
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v8, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v9

    .line 1210
    iget-object v7, v0, Lo/MenuItemHoverListener$onTransact;->onPostMessage:Lo/isInputMethodNotNeeded;

    invoke-virtual {v7}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v7

    .line 28043
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v8, v5, v6

    .line 1211
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 29014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 30014
    iget-object v7, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1211
    check-cast v7, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v6, v7}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v6

    .line 30043
    new-instance v7, Lo/addWrite;

    const-string v8, "error_message"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v7, v5, v6

    .line 1212
    iget-object v6, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 31033
    iget-object v6, v6, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v6, :cond_25

    .line 32013
    iget-object v6, v6, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    goto :goto_1c

    :cond_25
    move-object/from16 v6, v17

    .line 32043
    :goto_1c
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v4, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v7, v5, v4

    .line 1206
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 33014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1213
    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_26
    move-object/from16 v2, v17

    :goto_1d
    if-eqz v2, :cond_28

    .line 34014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1214
    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_27
    move-object/from16 v2, v17

    goto :goto_1f

    .line 35014
    :cond_28
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 1215
    instance-of v2, v2, Ljava/net/ConnectException;

    if-nez v2, :cond_2a

    .line 36014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 1215
    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_29

    goto :goto_1e

    .line 1218
    :cond_29
    sget-object v2, Lo/getEpicenterBounds;->onMessageChannelReady:Lo/getEpicenterBounds;

    invoke-static {}, Lo/getEpicenterBounds;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "log_id"

    .line 1219
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39014
    iget-object v5, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 40014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1220
    check-cast v6, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v5, v6}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n log id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    .line 37014
    :cond_2a
    :goto_1e
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 38014
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1216
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v4}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    .line 41014
    :goto_1f
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1222
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v17

    :cond_2b
    move-object/from16 v4, v17

    const-string/jumbo v5, "transaction_already_successful"

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1223
    iget-object v2, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 41050
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 1223
    new-instance v4, Lo/throwIfInMutationOperation;

    new-instance v5, Lo/onItemHoverExit$onTransact;

    .line 42014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1223
    check-cast v6, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d

    :cond_2c
    move-object/from16 v6, v16

    .line 43014
    :cond_2d
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1224
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    :cond_2e
    move-object/from16 v1, v16

    .line 1223
    :cond_2f
    invoke-direct {v5, v6, v1}, Lo/onItemHoverExit$onTransact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_20

    .line 1226
    :cond_30
    iget-object v1, v0, Lo/MenuItemHoverListener$onTransact;->onNavigationEvent:Lo/MenuItemHoverListener;

    .line 43054
    iget-object v1, v1, Lo/MenuItemHoverListener;->postMessage:Lo/setActive;

    .line 1226
    new-instance v4, Lo/throwIfInMutationOperation;

    invoke-direct {v4, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1228
    :goto_20
    invoke-static {v13, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    :cond_31
    :goto_21
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
