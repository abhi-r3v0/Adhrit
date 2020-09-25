.class final Lo/setMeasuredDimension$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMeasuredDimension;-><init>(Landroid/view/View;Lo/getSpanIndex;Lo/getSpanGroupIndex;)V
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
        "upiResponse",
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
.field private synthetic ICustomTabsCallback:Lo/setMeasuredDimension;


# direct methods
.method constructor <init>(Lo/setMeasuredDimension;)V
    .locals 0

    iput-object p1, p0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x75141187

    if-eq v3, v4, :cond_1

    goto/16 :goto_b

    :cond_1
    const-string v3, "GET_SESSION_TOKEN"

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 212
    iget-object v2, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 1036
    iget-object v2, v2, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    const/4 v3, 0x1

    .line 1051
    iput-boolean v3, v2, Lo/getSpanIndex;->onTransact:Z

    .line 213
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "response :- "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "tag"

    const-string v5, "STASH"

    invoke-static {v5, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v5, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 214
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "SUCCESS"

    invoke-static {v2, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_10

    const-string v2, "isDeviceBound"

    .line 215
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v7, "true"

    invoke-static {v2, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 216
    iget-object v2, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 2036
    iget-object v2, v2, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 2087
    iput-boolean v3, v2, Lo/getSpanIndex;->INotificationSideChannel$Stub$Proxy:Z

    .line 217
    new-instance v2, Lo/setMeasuredDimension$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v2}, Lo/setMeasuredDimension$onNavigationEvent$onMessageChannelReady;-><init>()V

    .line 2101
    iget-object v2, v2, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 218
    new-instance v7, Lo/writeStringNoTag;

    invoke-direct {v7}, Lo/writeStringNoTag;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_2

    move-object v1, v8

    goto :goto_0

    .line 2845
    :cond_2
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v7, v9, v2}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    :goto_0
    check-cast v1, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 3013
    iget-object v2, v1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    .line 219
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    iget-object v1, v1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    .line 221
    check-cast v1, Ljava/lang/Iterable;

    .line 269
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cred/pay/repository/models/VpaAccount;

    .line 222
    iget-object v9, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 4036
    iget-object v9, v9, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 4052
    iget-object v9, v9, Lo/getSpanIndex;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 222
    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 5017
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    .line 5048
    iget-object v12, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 5063
    iget-object v12, v12, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 223
    invoke-static {v11, v12}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_5
    move-object v10, v8

    .line 222
    :goto_2
    check-cast v10, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    goto :goto_3

    :cond_6
    move-object v10, v8

    :goto_3
    if-eqz v10, :cond_3

    .line 226
    new-instance v9, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    .line 6048
    iget-object v11, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6072
    iget-object v15, v11, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 7048
    iget-object v11, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7063
    iget-object v14, v11, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 8048
    iget-object v11, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 8066
    iget-object v13, v11, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 9048
    iget-object v11, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 9064
    iget-object v12, v11, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    .line 10048
    iget-object v11, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 10067
    iget-object v11, v11, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    .line 11048
    iget-object v7, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 11062
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 12015
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x600

    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v18, v14

    move-object v14, v10

    move-object v10, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    .line 226
    invoke-direct/range {v11 .. v22}, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_7
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "upiFetchedList :- "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12065
    invoke-static {v5, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 13036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 13075
    iput-object v2, v1, Lo/getSpanIndex;->cancelAll:Ljava/util/ArrayList;

    .line 244
    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 14036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 14080
    iget-object v1, v1, Lo/getSpanIndex;->INotificationSideChannel$Default:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 15036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 15075
    iget-object v1, v1, Lo/getSpanIndex;->cancelAll:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 244
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_11

    .line 246
    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 16036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 16075
    iget-object v1, v1, Lo/getSpanIndex;->cancelAll:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 246
    check-cast v1, Ljava/util/List;

    const-string v4, "$this$firstOrNull"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16243
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, v8

    goto :goto_4

    :cond_8
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 246
    :goto_4
    check-cast v1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    goto :goto_5

    :cond_9
    move-object v1, v8

    .line 247
    :goto_5
    iget-object v4, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 17036
    iget-object v4, v4, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 17070
    iput-object v1, v4, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    .line 248
    iget-object v4, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 18036
    iget-object v4, v4, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 18084
    iget-object v4, v4, Lo/getSpanIndex;->setDefaultImpl:Lo/getAnimationDuration;

    if-eqz v4, :cond_11

    .line 19014
    iput-boolean v3, v4, Lo/getAnimationDuration;->ICustomTabsCallback:Z

    .line 251
    iget-object v3, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 19036
    iget-object v3, v3, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 19052
    iget-object v3, v3, Lo/getSpanIndex;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-eqz v3, :cond_d

    .line 251
    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 20017
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 20074
    iget-object v7, v1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v7, v8

    .line 251
    :goto_6
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_7

    :cond_c
    move-object v5, v8

    :goto_7
    check-cast v5, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    if-eqz v5, :cond_d

    .line 21015
    iget-object v3, v5, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    goto :goto_8

    :cond_d
    move-object v3, v8

    .line 22015
    :goto_8
    iput-object v3, v4, Lo/getAnimationDuration;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 22070
    iget-object v3, v1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object v3, v8

    .line 23014
    :goto_9
    iput-object v3, v4, Lo/getAnimationDuration;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 23074
    iget-object v8, v1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asInterface:Ljava/lang/String;

    .line 24015
    :cond_f
    iput-object v8, v4, Lo/getAnimationDuration;->asInterface:Ljava/lang/String;

    .line 254
    check-cast v2, Ljava/util/List;

    const-string v1, "<set-?>"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25013
    iput-object v2, v4, Lo/getAnimationDuration;->onMessageChannelReady:Ljava/util/List;

    goto :goto_a

    .line 260
    :cond_10
    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 25036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 25087
    iput-boolean v6, v1, Lo/getSpanIndex;->INotificationSideChannel$Stub$Proxy:Z

    .line 262
    :cond_11
    :goto_a
    iget-object v1, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 26036
    iget-object v1, v1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 27032
    iget-object v1, v1, Lo/getSpanIndex;->onNavigationEvent:Lo/setActive;

    .line 262
    iget-object v2, v0, Lo/setMeasuredDimension$onNavigationEvent;->ICustomTabsCallback:Lo/setMeasuredDimension;

    .line 27036
    iget-object v2, v2, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 27084
    iget-object v2, v2, Lo/getSpanIndex;->setDefaultImpl:Lo/getAnimationDuration;

    .line 262
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_12
    :goto_b
    return-void
.end method
