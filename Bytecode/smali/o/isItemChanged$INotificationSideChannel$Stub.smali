.class final Lo/isItemChanged$INotificationSideChannel$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/rerunTransactionQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/rerunTransactionQueue<",
        "Ljava/lang/String;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<no name provided>",
        "",
        "command",
        "",
        "response",
        "Lcom/cred/pay/repository/models/UpiResponse;",
        "isCachedResponse",
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
.field private synthetic onNavigationEvent:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$INotificationSideChannel$Stub;->onNavigationEvent:Lo/isItemChanged;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    .line 67
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p2

    check-cast v2, Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "command"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v6, 0x7f13047b

    const/4 v7, 0x0

    const/4 v11, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_18

    :sswitch_0
    const-string v3, "DELETE"

    .line 1652
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1653
    iget-object v1, v0, Lo/isItemChanged$INotificationSideChannel$Stub;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {v1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v1

    .line 45156
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    new-instance v4, Lo/throwIfInMutationOperation;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v12}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44166
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiAccountResponse;

    const-string v4, "pairs"

    const-string/jumbo v12, "result"

    const-string v14, "position"

    const-string v15, "id"

    const/4 v10, 0x4

    const-string/jumbo v5, "track_bb_delete_vpa_response"

    if-eqz v3, :cond_4

    .line 44167
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    iget-object v6, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v6, :cond_0

    .line 46048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v6, :cond_0

    .line 46062
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v11

    :goto_0
    if-eqz v3, :cond_3

    .line 44167
    invoke-static {v3}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44168
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->postMessage:Lo/setActive;

    new-instance v6, Lo/throwIfInMutationOperation;

    new-instance v13, Lo/addWrite;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v17, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v17, 0x7f130484

    invoke-static/range {v17 .. v17}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v8, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v13}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44169
    check-cast v2, Lcom/cred/pay/repository/models/UpiAccountResponse;

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/UpiAccountResponse;->onPostMessage()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 44170
    invoke-virtual {v1}, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult()V

    .line 44171
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->getInterfaceDescriptor:Lo/setActive;

    new-instance v6, Lo/throwIfInMutationOperation;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v6, v8}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44172
    iput-object v11, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    new-array v3, v10, [Lo/addWrite;

    .line 44175
    iget-object v6, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v6, :cond_1

    .line 47048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v6, :cond_1

    .line 47062
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v11

    .line 48043
    :goto_1
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v15, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v7

    .line 44176
    iget-object v6, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v6, :cond_2

    .line 48048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v6, :cond_2

    .line 48062
    iget-object v11, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 44176
    :cond_2
    invoke-virtual {v1, v11}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v14, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v6, v3, v1

    .line 50014
    iget-object v1, v2, Lcom/cred/pay/repository/models/UpiAccountResponse;->onNavigationEvent:Ljava/lang/String;

    .line 50015
    new-instance v2, Lo/addWrite;

    const-string v6, "gatewayResponseCode"

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v3, v1

    .line 50016
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "success"

    invoke-direct {v1, v12, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 44174
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50017
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 44173
    invoke-static {v5, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_18

    .line 44167
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44182
    :cond_4
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v3, :cond_33

    .line 44183
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->IPostMessageService:Lo/setActive;

    new-instance v8, Lo/throwIfInMutationOperation;

    .line 44184
    new-instance v9, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v13, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v20

    .line 44185
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v13, 0x7f13047a

    invoke-static {v13}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v21

    .line 44186
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v13, 0x7f13047e

    invoke-static {v13}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 44187
    new-instance v6, Lo/RecyclerView$OnFlingListener$extraCallback;

    invoke-direct {v6, v1}, Lo/RecyclerView$OnFlingListener$extraCallback;-><init>(Lo/RecyclerView$OnFlingListener;)V

    move-object/from16 v26, v6

    check-cast v26, Lo/onDisconnectSetValue;

    const/16 v27, 0x38

    move-object/from16 v19, v9

    .line 44184
    invoke-direct/range {v19 .. v27}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    .line 44183
    invoke-direct {v8, v9}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    new-array v3, v10, [Lo/addWrite;

    .line 44194
    iget-object v6, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v6, :cond_5

    .line 50018
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v6, :cond_5

    .line 50019
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v6, v11

    .line 50020
    :goto_2
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v15, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v7

    .line 44195
    iget-object v6, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v6, :cond_6

    .line 50021
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v6, :cond_6

    .line 50022
    iget-object v11, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 44195
    :cond_6
    invoke-virtual {v1, v11}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50023
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v14, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v6, v3, v1

    .line 44196
    check-cast v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 50024
    iget-object v1, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 50025
    new-instance v2, Lo/addWrite;

    const-string v6, "error_code"

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v3, v1

    .line 50026
    new-instance v1, Lo/addWrite;

    const-string v2, "failure"

    invoke-direct {v1, v12, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 44193
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50027
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 44192
    invoke-static {v5, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_18

    :sswitch_1
    const-string v4, "GET_SESSION_TOKEN"

    .line 1643
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1644
    iget-object v1, v0, Lo/isItemChanged$INotificationSideChannel$Stub;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {v1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v1

    .line 2206
    iput-boolean v3, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    .line 3156
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    new-instance v4, Lo/throwIfInMutationOperation;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 2209
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v3, :cond_a

    .line 2210
    check-cast v2, Lcom/cred/pay/repository/models/UpiAccountResponse;

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/UpiAccountResponse;->onPostMessage()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 2212
    iget-object v2, v1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_7

    .line 4070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 2212
    :cond_7
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 2214
    iget-object v2, v1, Lo/RecyclerView$OnFlingListener;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;

    if-eqz v2, :cond_8

    .line 2215
    invoke-virtual {v1}, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult()V

    .line 4484
    :cond_8
    invoke-virtual {v1}, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;

    move-result-object v2

    .line 5000
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->IPostMessageService$Stub:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/putRecycledView;

    .line 4485
    invoke-interface {v3, v2}, Lo/putRecycledView;->extraCallback(Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;)Lo/clearScrap;

    move-result-object v2

    .line 4486
    sget-object v3, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v5, v3, v4, v5}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 4487
    new-instance v3, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;

    invoke-direct {v3, v1}, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;-><init>(Lo/RecyclerView$OnFlingListener;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    goto :goto_3

    .line 2220
    :cond_9
    invoke-virtual {v1}, Lo/RecyclerView$OnFlingListener;->extraCallback()V

    goto :goto_3

    .line 2224
    :cond_a
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v3, :cond_c

    .line 2225
    check-cast v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 5135
    iget-object v3, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "NO_PERMISSION"

    .line 2225
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2226
    invoke-virtual {v1}, Lo/RecyclerView$OnFlingListener;->extraCallback()V

    goto :goto_3

    .line 5152
    :cond_b
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    sget-object v4, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onNavigationEvent;->extraCallback:Lo/RecyclerView$OnFlingListener$onNavigationEvent$onNavigationEvent;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 2229
    iget-boolean v3, v1, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult:Z

    if-eqz v3, :cond_c

    .line 2230
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->postMessage:Lo/setActive;

    new-instance v4, Lo/throwIfInMutationOperation;

    new-instance v5, Lo/addWrite;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2231
    sget-object v8, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    .line 6135
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v8, 0x1

    .line 2231
    invoke-static {v2, v8}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v2

    .line 7058
    iget-object v2, v2, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    .line 2230
    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8057
    :cond_c
    :goto_3
    iput-boolean v7, v1, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult:Z

    .line 8058
    iget-boolean v2, v1, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_33

    .line 8059
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    sget-object v2, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_18

    :sswitch_2
    const-string v3, "CHECK_BALANCE"

    .line 1646
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1647
    iget-object v1, v0, Lo/isItemChanged$INotificationSideChannel$Stub;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {v1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v1

    .line 8243
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;

    const/16 v4, 0x29

    const-string v5, " ("

    const-string v7, ""

    if-eqz v3, :cond_29

    .line 8244
    check-cast v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;

    .line 9120
    iget-object v3, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_d

    goto/16 :goto_11

    .line 8244
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const/16 v9, 0x600

    if-eq v8, v9, :cond_11

    const/16 v9, 0xb33

    if-eq v8, v9, :cond_e

    goto/16 :goto_11

    :cond_e
    const-string v8, "ZM"

    .line 8252
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 8253
    new-instance v3, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f13047d

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v13

    .line 8254
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f13047c

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v14

    .line 8255
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v5, 0x7f13047e

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x78

    move-object v12, v3

    .line 8253
    invoke-direct/range {v12 .. v20}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    .line 8257
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v4, :cond_10

    .line 34048
    iget-object v4, v4, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v4, :cond_10

    .line 34062
    iget-object v4, v4, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v4, :cond_f

    goto :goto_4

    :cond_f
    move-object v7, v4

    .line 34120
    :cond_10
    :goto_4
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onPostMessage:Ljava/lang/String;

    .line 8257
    invoke-static {v1, v7, v11, v2}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/RecyclerView$OnFlingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_11
    const-string v8, "00"

    .line 8245
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 10119
    iget-object v3, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onNavigationEvent:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 8246
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_5

    :cond_12
    move-object v3, v11

    :goto_5
    move-object v12, v3

    check-cast v12, Ljava/lang/Number;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    invoke-static/range {v12 .. v19}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 8247
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v5, :cond_13

    .line 11048
    iget-object v5, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v5, :cond_13

    .line 11062
    iget-object v5, v5, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v5, :cond_14

    :cond_13
    move-object v5, v7

    .line 8247
    :cond_14
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8249
    iget-boolean v4, v1, Lo/RecyclerView$OnFlingListener;->asBinder:Z

    if-nez v4, :cond_24

    .line 11567
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v4, :cond_17

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cred/pay/repository/models/VpaAccount;

    .line 12048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 12062
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 12117
    iget-object v8, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->extraCallback:Ljava/lang/String;

    .line 11568
    invoke-static {v6, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_6

    :cond_16
    move-object v5, v11

    .line 11567
    :goto_6
    check-cast v5, Lcom/cred/pay/repository/models/VpaAccount;

    goto :goto_7

    :cond_17
    move-object v5, v11

    :goto_7
    if-nez v5, :cond_18

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 12119
    :cond_18
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 11570
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_8

    :cond_19
    const-wide/16 v8, 0x0

    .line 11572
    :goto_8
    iget-object v2, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    if-eqz v2, :cond_1a

    .line 13010
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;

    if-eqz v2, :cond_1a

    .line 13026
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_9

    :cond_1a
    move-object v2, v11

    :goto_9
    if-nez v2, :cond_1b

    .line 13070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 11572
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v11

    :cond_1c
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/track/network/response/Config;

    .line 14046
    iget-wide v12, v6, Lcom/dreamplug/fabrik/ui/track/network/response/Config;->onNavigationEvent:J

    long-to-double v12, v12

    cmpl-double v10, v8, v12

    if-ltz v10, :cond_1c

    .line 14050
    iget-wide v12, v6, Lcom/dreamplug/fabrik/ui/track/network/response/Config;->onMessageChannelReady:J

    long-to-double v12, v12

    cmpg-double v10, v8, v12

    if-gtz v10, :cond_1c

    .line 11574
    new-instance v4, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;

    .line 11575
    iget-object v10, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    if-eqz v10, :cond_1d

    .line 15010
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;

    if-eqz v10, :cond_1d

    .line 15028
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;->onPostMessage:Ljava/lang/String;

    goto :goto_b

    :cond_1d
    move-object v10, v11

    .line 15048
    :goto_b
    iget-object v12, v6, Lcom/dreamplug/fabrik/ui/track/network/response/Config;->extraCallback:Ljava/lang/String;

    .line 15052
    iget-wide v13, v6, Lcom/dreamplug/fabrik/ui/track/network/response/Config;->ICustomTabsCallback:J

    long-to-double v13, v13

    div-double v13, v8, v13

    double-to-int v6, v13

    .line 11577
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 11574
    invoke-direct {v4, v10, v12, v6}, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 11581
    :cond_1e
    iget-object v2, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v2, :cond_20

    .line 16048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v2, :cond_20

    .line 16062
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_c

    :cond_1f
    move-object v13, v2

    goto :goto_d

    :cond_20
    :goto_c
    move-object v13, v7

    :goto_d
    const/4 v14, 0x0

    if-eqz v4, :cond_21

    .line 17030
    iget-object v2, v4, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;->onNavigationEvent:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_e

    :cond_21
    move-object/from16 v16, v11

    :goto_e
    if-eqz v4, :cond_22

    .line 17034
    iget-object v2, v4, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;->extraCallback:Ljava/lang/String;

    move-object/from16 v17, v2

    goto :goto_f

    :cond_22
    move-object/from16 v17, v11

    :goto_f
    if-eqz v4, :cond_23

    .line 18032
    iget-object v2, v4, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v18, v2

    goto :goto_10

    :cond_23
    move-object/from16 v18, v11

    :goto_10
    const-string v15, "00"

    move-object v12, v1

    .line 11581
    invoke-virtual/range {v12 .. v18}, Lo/RecyclerView$OnFlingListener;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11589
    new-instance v2, Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;

    .line 11591
    new-instance v6, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;

    move-object v12, v6

    .line 18049
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    move-object/from16 v27, v7

    .line 19048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 19061
    iget-object v13, v7, Lcom/cred/pay/repository/models/Account;->extraCallback:Ljava/lang/String;

    .line 20048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 20062
    iget-object v14, v7, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 21048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 21063
    iget-object v15, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 22048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 22064
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v16, v7

    .line 23048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 23065
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v17, v7

    .line 24048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 24066
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v18, v7

    .line 25048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 25067
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    move-object/from16 v20, v7

    .line 26048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 26068
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->asInterface:Ljava/lang/String;

    move-object/from16 v21, v7

    .line 27048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 27069
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    move-object/from16 v22, v7

    .line 28048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 28070
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->asBinder:Ljava/lang/String;

    move-object/from16 v23, v7

    .line 29048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 29071
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v24, v7

    .line 30048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 30072
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    move-object/from16 v25, v7

    .line 31048
    iget-object v7, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 31074
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    move-object/from16 v19, v7

    .line 32048
    iget-object v5, v5, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 32073
    iget-object v5, v5, Lcom/cred/pay/repository/models/Account;->warmup:Ljava/lang/String;

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    .line 11591
    invoke-direct/range {v12 .. v28}, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;)V

    .line 33019
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "java.util.Collections.singletonList(element)"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11609
    iget-object v5, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 11589
    invoke-direct {v2, v4, v5, v11}, Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 34000
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->IPostMessageService$Stub:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/putRecycledView;

    .line 11612
    invoke-interface {v4, v2}, Lo/putRecycledView;->extraCallback(Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;)Lo/clearScrap;

    move-result-object v2

    .line 11613
    sget-object v4, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0xe

    invoke-static/range {v12 .. v18}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 11614
    new-instance v4, Lo/RecyclerView$OnFlingListener$ICustomTabsCallback$Stub;

    invoke-direct {v4}, Lo/RecyclerView$OnFlingListener$ICustomTabsCallback$Stub;-><init>()V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_24
    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_15

    .line 8263
    :cond_25
    :goto_11
    sget-object v3, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    .line 35120
    iget-object v3, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_26

    move-object v3, v7

    .line 8263
    :cond_26
    invoke-static {v3}, Lo/onMoveFinished;->onMessageChannelReady(Ljava/lang/String;)Lo/fromPathMerge;

    move-result-object v3

    .line 36067
    iget-object v3, v3, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 8263
    check-cast v3, Ljava/lang/String;

    .line 8265
    new-instance v8, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v9, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v13

    .line 8266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v10, 0x7f13047a

    invoke-static {v10}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 8267
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f13047e

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x78

    move-object v12, v8

    .line 8265
    invoke-direct/range {v12 .. v20}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    .line 8269
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v3, :cond_28

    .line 37048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v3, :cond_28

    .line 37062
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_27

    goto :goto_12

    :cond_27
    move-object v7, v3

    .line 37120
    :cond_28
    :goto_12
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiBalanceResponse;->onPostMessage:Ljava/lang/String;

    .line 8269
    invoke-static {v1, v7, v11, v2}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/RecyclerView$OnFlingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    goto/16 :goto_14

    .line 8276
    :cond_29
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v3, :cond_2e

    .line 8277
    iget-object v3, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v3, :cond_2a

    .line 38048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v3, :cond_2a

    .line 38062
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_2b

    :cond_2a
    move-object v3, v7

    .line 8279
    :cond_2b
    check-cast v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 38135
    iget-object v8, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 8277
    invoke-static {v1, v3, v8, v11}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/RecyclerView$OnFlingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39135
    iget-object v3, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "USER_ABORTED"

    .line 8283
    invoke-static {v3, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 8284
    new-instance v2, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130493

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v13

    .line 8285
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130492

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v14

    .line 8286
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130491

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v15

    .line 8287
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130485

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x60

    move-object v12, v2

    .line 8284
    invoke-direct/range {v12 .. v20}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    move-object v3, v2

    goto :goto_14

    .line 8291
    :cond_2c
    sget-object v3, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    .line 40135
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    if-nez v2, :cond_2d

    goto :goto_13

    :cond_2d
    move-object v7, v2

    .line 8291
    :goto_13
    invoke-static {v7}, Lo/onMoveFinished;->onMessageChannelReady(Ljava/lang/String;)Lo/fromPathMerge;

    move-result-object v2

    .line 41067
    iget-object v2, v2, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 8291
    check-cast v2, Ljava/lang/String;

    .line 8293
    new-instance v3, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v13

    .line 8294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v8, 0x7f13047a

    invoke-static {v8}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 8295
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f13047e

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x78

    move-object v12, v3

    .line 8293
    invoke-direct/range {v12 .. v20}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    :goto_14
    move-object v2, v11

    goto :goto_15

    :cond_2e
    move-object v2, v11

    move-object v3, v2

    :goto_15
    if-eqz v3, :cond_2f

    .line 8300
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->mayLaunchUrl:Lo/setActive;

    new-instance v5, Lo/throwIfInMutationOperation;

    invoke-direct {v5, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8302
    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 8303
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/StaggeredGridLayoutManager;

    .line 8304
    instance-of v6, v5, Lo/onFling$ICustomTabsCallback;

    if-eqz v6, :cond_31

    move-object v12, v5

    check-cast v12, Lo/onFling$ICustomTabsCallback;

    .line 41272
    iget-object v6, v12, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 42048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 42062
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 8304
    iget-object v7, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v7, :cond_30

    .line 43048
    iget-object v7, v7, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v7, :cond_30

    .line 43062
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    goto :goto_17

    :cond_30
    move-object v7, v11

    .line 8304
    :goto_17
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7

    move-object/from16 v16, v2

    .line 8307
    invoke-static/range {v12 .. v19}, Lo/onFling$ICustomTabsCallback;->onNavigationEvent(Lo/onFling$ICustomTabsCallback;Lcom/cred/pay/repository/models/VpaAccount;Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;ZLjava/lang/CharSequence;ZZI)Lo/onFling$ICustomTabsCallback;

    move-result-object v5

    .line 8306
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 8313
    :cond_31
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 43621
    :cond_32
    iput-object v3, v1, Lo/RecyclerView$OnFlingListener;->onPostMessage:Ljava/util/List;

    .line 43622
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    new-instance v2, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v2, v3}, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_18

    :sswitch_3
    const-string v3, "SET_MPIN"

    .line 1649
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1650
    iget-object v1, v0, Lo/isItemChanged$INotificationSideChannel$Stub;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {v1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    .line 67
    :cond_33
    :goto_18
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3a781b -> :sswitch_3
        -0x45b1d99b -> :sswitch_2
        0x75141187 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch
.end method
