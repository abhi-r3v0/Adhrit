.class final Lo/setReturnTransition$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setReturnTransition;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/setReturnTransition;


# direct methods
.method constructor <init>(Lo/setReturnTransition;)V
    .locals 0

    iput-object p1, p0, Lo/setReturnTransition$extraCallback;->onPostMessage:Lo/setReturnTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x75141187

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "GET_SESSION_TOKEN"

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "status"

    .line 112
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const-string v2, "isDeviceBound"

    .line 113
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "true"

    invoke-static {v2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    new-instance v2, Lo/setReturnTransition$extraCallback$ICustomTabsCallback;

    invoke-direct {v2}, Lo/setReturnTransition$extraCallback$ICustomTabsCallback;-><init>()V

    .line 1101
    iget-object v2, v2, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 115
    new-instance v4, Lo/writeStringNoTag;

    invoke-direct {v4}, Lo/writeStringNoTag;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 1845
    :cond_2
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v4, v5, v2}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    :goto_0
    check-cast v1, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 2013
    iget-object v2, v1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    .line 116
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_6

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3013
    iget-object v1, v1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    .line 118
    check-cast v1, Ljava/lang/Iterable;

    .line 239
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cred/pay/repository/models/VpaAccount;

    .line 119
    iget-object v6, v0, Lo/setReturnTransition$extraCallback;->onPostMessage:Lo/setReturnTransition;

    invoke-static {v6}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v6

    .line 3033
    iget-object v6, v6, Lo/getSharedElementEnterTransition;->extraCallback:Ljava/util/List;

    .line 3048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3063
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 119
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    new-instance v6, Lo/onDetach$asInterface;

    .line 4048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 4072
    iget-object v8, v7, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 5048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 5063
    iget-object v11, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 6048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6066
    iget-object v12, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 7048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7064
    iget-object v10, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    .line 8048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 8067
    iget-object v9, v7, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9048
    iget-object v5, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 9062
    iget-object v15, v5, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x20

    move-object v7, v6

    .line 120
    invoke-direct/range {v7 .. v16}, Lo/onDetach$asInterface;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    iget-object v1, v0, Lo/setReturnTransition$extraCallback;->onPostMessage:Lo/setReturnTransition;

    invoke-static {v1}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v1

    .line 10036
    iput-boolean v4, v1, Lo/getSharedElementEnterTransition;->asBinder:Z

    .line 136
    :cond_5
    iget-object v1, v0, Lo/setReturnTransition$extraCallback;->onPostMessage:Lo/setReturnTransition;

    invoke-static {v1}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v1

    check-cast v2, Ljava/util/List;

    const-string v4, "<set-?>"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11029
    iput-object v2, v1, Lo/getSharedElementEnterTransition;->onNavigationEvent:Ljava/util/List;

    .line 140
    :cond_6
    iget-object v1, v0, Lo/setReturnTransition$extraCallback;->onPostMessage:Lo/setReturnTransition;

    invoke-static {v1}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v1

    .line 12000
    iget-object v2, v1, Lo/getSharedElementEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setReenterTransition;

    .line 12012
    invoke-interface {v2, v3, v3}, Lo/setReenterTransition;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v2

    .line 11103
    new-instance v3, Lo/getSharedElementEnterTransition$asBinder;

    invoke-direct {v3, v1}, Lo/getSharedElementEnterTransition$asBinder;-><init>(Lo/getSharedElementEnterTransition;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_7
    :goto_2
    return-void
.end method
