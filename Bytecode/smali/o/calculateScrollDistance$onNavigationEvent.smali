.class final Lo/calculateScrollDistance$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/calculateScrollDistance;-><init>(Lo/onSessionEvent;Ljava/lang/String;Lo/rerunTransactionQueue;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "kotlin.jvm.PlatformType",
        "command",
        "",
        "requestId",
        "onResponseFromUpiSdk"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/calculateScrollDistance;


# direct methods
.method constructor <init>(Lo/calculateScrollDistance;)V
    .locals 0

    iput-object p1, p0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v5, "SUCCESS"

    const-string/jumbo v6, "status"

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v3, "DELETE"

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 179
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 9072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 9098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 181
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    goto :goto_0

    .line 183
    :cond_1
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 10072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 10098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 184
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 185
    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 187
    :goto_0
    iget-object v3, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    .line 11019
    iget-object v3, v3, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 187
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v1, v4}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_1
    const-string v3, "GET_SESSION_TOKEN"

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 145
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    const-string v9, "pairs"

    const-string v10, "is_cache_response"

    const-string v11, "error_code"

    const/4 v12, 0x2

    const-string/jumbo v13, "track_bb_session_error_response"

    if-eqz v3, :cond_5

    const-string v3, "errorCode"

    .line 146
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NO_PERMISSION"

    invoke-static {v14, v15}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/2addr v14, v7

    if-eqz v14, :cond_5

    .line 148
    invoke-static {}, Lo/add;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 149
    sget-object v15, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v15

    const-class v7, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 2072
    sget-object v4, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {v15, v7, v4, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v14}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v4, :cond_2

    .line 3013
    iget-object v7, v4, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v7, v8

    .line 152
    :goto_1
    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_5

    .line 153
    iget-object v5, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    .line 3019
    iget-object v5, v5, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 153
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v4, v6}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v12, [Lo/addWrite;

    .line 155
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v11, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 156
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v10, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    .line 154
    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 154
    invoke-static {v13, v1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 163
    :cond_5
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 5072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 5098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 165
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    goto :goto_4

    .line 167
    :cond_6
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 6072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 6098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 168
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    new-array v3, v12, [Lo/addWrite;

    if-eqz v1, :cond_7

    .line 6135
    iget-object v8, v1, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 7043
    :cond_7
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v11, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 171
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 169
    invoke-static {v3, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 169
    invoke-static {v13, v4}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 175
    :goto_4
    iget-object v3, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    .line 9019
    iget-object v3, v3, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 175
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v1, v4}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_2
    const-string v1, "SDK_INIT"

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 141
    iget-object v1, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    const/4 v2, 0x1

    .line 1017
    iput-boolean v2, v1, Lo/calculateScrollDistance;->onPostMessage:Z

    .line 142
    iget-object v1, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    const/4 v2, 0x0

    .line 1064
    invoke-virtual {v1, v2}, Lo/calculateScrollDistance;->extraCallback(I)V

    return-void

    :sswitch_3
    const-string v3, "CHECK_BALANCE"

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 202
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 203
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiBalanceResponse;

    .line 13072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 13098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    goto :goto_5

    .line 206
    :cond_8
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 14072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 14098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 207
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 209
    :goto_5
    iget-object v3, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    .line 15019
    iget-object v3, v3, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 209
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v1, v4}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :sswitch_4
    const-string v3, "SET_MPIN"

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 191
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 192
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    .line 11072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 11098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    goto :goto_6

    .line 195
    :cond_9
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v3

    const-class v4, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 12072
    sget-object v5, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 12098
    invoke-virtual {v3, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    .line 196
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 198
    :goto_6
    iget-object v3, v0, Lo/calculateScrollDistance$onNavigationEvent;->extraCallback:Lo/calculateScrollDistance;

    .line 13019
    iget-object v3, v3, Lo/calculateScrollDistance;->onRelationshipValidationResult:Lo/rerunTransactionQueue;

    .line 198
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v1, v4}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3a781b -> :sswitch_4
        -0x45b1d99b -> :sswitch_3
        0x4081d615 -> :sswitch_2
        0x75141187 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch
.end method
