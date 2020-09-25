.class final Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/registerMediaButtonEventReceiver;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/cred/pay/repository/models/UpiPay;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 45
    move-object/from16 v1, p1

    check-cast v1, Lo/throwIfInMutationOperation;

    if-eqz v1, :cond_4

    .line 2011
    iget-boolean v2, v1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v3, v1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object v1, v1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1368
    :goto_0
    check-cast v1, Lo/registerMediaButtonEventReceiver;

    if-eqz v1, :cond_4

    .line 1369
    iget-object v2, v0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v2}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;)Lo/onMoveStarting;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "pay"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    iget-boolean v4, v2, Lo/onMoveStarting;->onNavigationEvent:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lo/onMoveStarting;->onPostMessage:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v4, :cond_2

    .line 3008
    iget-boolean v4, v1, Lo/registerMediaButtonEventReceiver;->asInterface:Z

    const-string v5, ""

    const-string v6, "-"

    const-string v7, "ACD"

    const-string/jumbo v8, "{}"

    const-string/jumbo v10, "timestamp"

    const-string v11, "remarks"

    const-string v12, "accountReferenceId"

    const-string/jumbo v14, "upiRequestId"

    const-string v15, "amount"

    const-string v9, "customerVpa"

    const-string v13, "merchantCustomerId"

    const-string v0, "merchantRequestId"

    if-eq v4, v3, :cond_1

    .line 2161
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2162
    sget-object v17, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 4004
    iget-object v3, v1, Lo/registerMediaButtonEventReceiver;->ICustomTabsCallback:Ljava/lang/String;

    .line 2165
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2166
    invoke-virtual/range {v17 .. v17}, Lcom/dreamplug/upi/UpiData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5003
    iget-object v3, v1, Lo/registerMediaButtonEventReceiver;->onNavigationEvent:Lcom/cred/pay/repository/models/VpaAccount;

    .line 5049
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 2167
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6005
    iget-object v3, v1, Lo/registerMediaButtonEventReceiver;->extraCallback:Ljava/lang/String;

    move-object/from16 v18, v2

    const-string v2, "merchantVpa"

    .line 2168
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6007
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onPostMessage:Ljava/lang/String;

    .line 2169
    invoke-virtual {v4, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7003
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onNavigationEvent:Lcom/cred/pay/repository/models/VpaAccount;

    .line 7048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7072
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 2170
    invoke-virtual {v4, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8006
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onMessageChannelReady:Ljava/lang/String;

    .line 2171
    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9004
    iget-object v1, v1, Lo/registerMediaButtonEventReceiver;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    .line 9075
    invoke-static {v1, v6, v5, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2174
    invoke-virtual/range {v17 .. v17}, Lcom/dreamplug/upi/UpiData;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v1

    .line 2175
    sget-object v2, Lo/shouldBeKeptAsChild;->ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$extraCallback;

    sget-object v2, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    const/16 v3, 0xa

    new-array v2, v3, [Ljava/lang/Object;

    .line 2176
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 2177
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 2178
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 2179
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 2180
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x5

    const-string v3, "merchantVpa"

    .line 2181
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 2182
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 2183
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    aput-object v8, v2, v0

    const/16 v0, 0x9

    .line 2185
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    .line 2175
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s%s%s%s%s%s%s%s%s%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "HmacSHA256"

    .line 10061
    invoke-static {v0, v1, v2}, Lo/shouldBeKeptAsChild$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "merchantSignature"

    .line 2174
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "udfParameters"

    .line 2188
    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v18

    .line 2189
    iget-object v0, v2, Lo/onMoveStarting;->ICustomTabsCallback$Stub:Lo/add;

    const-string v1, "PAY"

    invoke-static {v0, v1, v4}, Lo/add;->extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 2192
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2193
    sget-object v4, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v18, v2

    .line 11004
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->ICustomTabsCallback:Ljava/lang/String;

    .line 2196
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2197
    invoke-virtual {v4}, Lcom/dreamplug/upi/UpiData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12003
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onNavigationEvent:Lcom/cred/pay/repository/models/VpaAccount;

    .line 12049
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 2198
    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13005
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->extraCallback:Ljava/lang/String;

    move-object/from16 v17, v8

    const-string v8, "payeeVpa"

    .line 2199
    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13011
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v19, v8

    const-string v8, "payeeName"

    .line 2200
    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14007
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onPostMessage:Ljava/lang/String;

    .line 2201
    invoke-virtual {v3, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15004
    iget-object v7, v1, Lo/registerMediaButtonEventReceiver;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v20, v8

    const/4 v8, 0x0

    .line 15075
    invoke-static {v7, v6, v5, v8}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16003
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onNavigationEvent:Lcom/cred/pay/repository/models/VpaAccount;

    .line 16048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 16072
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 2203
    invoke-virtual {v3, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17009
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onRelationshipValidationResult:Ljava/lang/String;

    const-string/jumbo v5, "transactionReference"

    .line 2204
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18006
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onMessageChannelReady:Ljava/lang/String;

    .line 2205
    invoke-virtual {v3, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18010
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->asBinder:Ljava/lang/String;

    const-string v6, "mcc"

    .line 2207
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18012
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->onTransact:Ljava/lang/String;

    const-string v7, "payType"

    .line 2208
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18013
    iget-object v2, v1, Lo/registerMediaButtonEventReceiver;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v8, "refCategory"

    .line 2209
    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18014
    iget-object v1, v1, Lo/registerMediaButtonEventReceiver;->warmup:Ljava/lang/String;

    const-string v2, "refUrl"

    .line 2210
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    const-string v8, "INR"

    .line 2211
    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2213
    invoke-virtual {v4}, Lcom/dreamplug/upi/UpiData;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v4

    .line 2214
    sget-object v8, Lo/shouldBeKeptAsChild;->ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$extraCallback;

    sget-object v8, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    const/16 v8, 0x10

    new-array v8, v8, [Ljava/lang/Object;

    .line 2215
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v8, v16

    .line 2216
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v8, v15

    const/4 v12, 0x2

    .line 2217
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v12

    const/4 v1, 0x3

    .line 2218
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x4

    .line 2219
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v8, v1

    const/4 v1, 0x5

    .line 2220
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v8, v1

    const/4 v1, 0x6

    .line 2221
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x7

    move-object/from16 v1, v20

    .line 2222
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x8

    move-object/from16 v1, v19

    .line 2223
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x9

    .line 2224
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    .line 2225
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v8, v1

    const/16 v0, 0xb

    .line 2226
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0xc

    .line 2227
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0xd

    .line 2228
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0xe

    aput-object v17, v8, v0

    const/16 v0, 0xf

    .line 2230
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x10

    .line 2214
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "HmacSHA256"

    .line 18061
    invoke-static {v0, v4, v1}, Lo/shouldBeKeptAsChild$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "merchantSignature"

    .line 2213
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "udfParameters"

    move-object/from16 v1, v17

    .line 2233
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v18

    .line 2234
    iget-object v0, v0, Lo/onMoveStarting;->ICustomTabsCallback$Stub:Lo/add;

    const-string v1, "SEND_MONEY"

    invoke-static {v0, v1, v3}, Lo/add;->extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    .line 1370
    iget-object v1, v0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v1}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;)Lo/onMoveStarting;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 19029
    iget-object v1, v1, Lo/onMoveStarting;->ICustomTabsCallback:Lo/setActive;

    if-eqz v1, :cond_3

    .line 1370
    iget-object v2, v0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    move-object v3, v2

    check-cast v3, Lo/toLegacyStreamType;

    invoke-static {v2}, Lo/getMaxAvailableHeight;->onTransact(Lo/getMaxAvailableHeight;)Lo/setPlaybackToRemote;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 1371
    :cond_3
    iget-object v1, v0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 20000
    iget-object v1, v1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 20051
    iget-object v1, v1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1371
    new-instance v2, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
