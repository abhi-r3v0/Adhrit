.class final Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/RiverForeGroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:Lo/isFromUser;

.field private onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Ljava/lang/Object;

.field private synthetic onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1054
    sget-object v2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 137
    iget v3, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v6, 0x3

    const/16 v7, 0x9

    const-string v8, "pairs"

    const-string v9, "notif_count"

    const-string v10, "hasFns"

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v13, :cond_4

    if-eq v3, v12, :cond_2

    if-ne v3, v6, :cond_1

    .line 13126
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_2
    iget-object v3, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Lo/hasSubMenu$ICustomTabsCallback;

    iget-object v14, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v14, Lo/isFromUser;

    .line 8126
    instance-of v15, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v15, :cond_3

    goto/16 :goto_1

    :cond_3
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 137
    :cond_4
    iget-object v3, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v3, Lo/isFromUser;

    .line 2126
    instance-of v14, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v14, :cond_5

    move-object v14, v3

    goto :goto_0

    :cond_5
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 1126
    :cond_6
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_e

    .line 137
    iget-object v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->extraCallback:Lo/isFromUser;

    const-wide/16 v14, 0x1388

    .line 139
    iput-object v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    iput v13, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-static {v14, v15, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    return-object v2

    :cond_7
    move-object v14, v1

    .line 140
    :goto_0
    new-instance v3, Lo/hasSubMenu$ICustomTabsCallback;

    sget-object v1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lo/hasSubMenu$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    new-array v15, v12, [Lo/addWrite;

    .line 3014
    iget-boolean v6, v3, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 3020
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v10, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v15, v11

    .line 4013
    iget v4, v3, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 4032
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v9, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v15, v13

    .line 141
    invoke-static {v15, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v15}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v5, "debug_fns_delayed_check"

    .line 141
    invoke-static {v1, v5, v4}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;Ljava/util/Map;)V

    new-array v1, v12, [Ljava/lang/Object;

    .line 5014
    iget-boolean v4, v3, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 5020
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v11

    .line 6013
    iget v4, v3, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 6032
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v13

    const-string v4, "RiverFGW:detect:attempt-1:hasFns=%s,notif_count=%s"

    .line 146
    invoke-static {v7, v4, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 7014
    iget-boolean v1, v3, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    if-nez v1, :cond_8

    .line 150
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 153
    :cond_8
    iget-object v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->ICustomTabsCallback(Lcom/dreamplug/river/RiverForeGroundWorker;)Landroid/content/Context;

    move-result-object v1

    .line 7184
    invoke-static {v1}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v1

    const-string v4, "RiverPeriodicForegroundWork"

    .line 153
    invoke-virtual {v1, v4}, Lo/setErrorMessage;->onPostMessage(Ljava/lang/String;)Lo/setActions;

    .line 154
    sget-object v1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    iget-object v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->ICustomTabsCallback(Lcom/dreamplug/river/RiverForeGroundWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lo/isPendingInitialRun;->onPostMessage(Landroid/content/Context;Z)V

    .line 156
    iput-object v14, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v3, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    iput v12, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->ICustomTabsCallback:I

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    return-object v2

    .line 157
    :cond_9
    :goto_1
    new-instance v1, Lo/hasSubMenu$ICustomTabsCallback;

    sget-object v4, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lo/hasSubMenu$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v4, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    new-array v5, v12, [Lo/addWrite;

    .line 9014
    iget-boolean v6, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 9020
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 9043
    new-instance v15, Lo/addWrite;

    invoke-direct {v15, v10, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v5, v11

    .line 10013
    iget v6, v1, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 10032
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 10043
    new-instance v15, Lo/addWrite;

    invoke-direct {v15, v9, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v5, v13

    .line 158
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10088
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v15

    invoke-direct {v6, v15}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v5, "debug_fns_delayed_check2"

    .line 158
    invoke-static {v4, v5, v6}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;Ljava/util/Map;)V

    new-array v4, v12, [Ljava/lang/Object;

    .line 11014
    iget-boolean v5, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 11020
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v11

    .line 12013
    iget v5, v1, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 12032
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "RiverFGW:detect:attempt-2:hasFns=%s,notif_count=%s"

    .line 163
    invoke-static {v7, v5, v4}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 13014
    iget-boolean v4, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    if-nez v4, :cond_a

    .line 167
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 13034
    :cond_a
    iget-object v4, v1, Lo/hasSubMenu$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v4, :cond_b

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v1, v1, Lo/hasSubMenu$ICustomTabsCallback;->onNavigationEvent:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    :cond_b
    iput-object v14, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v3, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->ICustomTabsCallback:I

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_c

    return-object v2

    .line 173
    :cond_c
    :goto_2
    new-instance v1, Lo/hasSubMenu$ICustomTabsCallback;

    sget-object v2, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/hasSubMenu$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v2, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    new-array v3, v12, [Lo/addWrite;

    .line 14014
    iget-boolean v4, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 14020
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 14043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v11

    .line 15013
    iget v4, v1, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 15032
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 15043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v9, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v13

    .line 174
    invoke-static {v3, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "debug_fns_delayed_check3"

    .line 174
    invoke-static {v2, v3, v4}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;Ljava/util/Map;)V

    new-array v2, v12, [Ljava/lang/Object;

    .line 16014
    iget-boolean v3, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    .line 16020
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    .line 17013
    iget v3, v1, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 17032
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "RiverFGW:detect:attempt-3:hasFns=%s,notif_count=%s"

    .line 179
    invoke-static {v7, v3, v2}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 18014
    iget-boolean v1, v1, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_d

    .line 183
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 186
    :cond_d
    sget-object v1, Lo/start;->ICustomTabsCallback:Lo/start;

    invoke-static {}, Lo/start;->extraCallback()V

    .line 187
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 1126
    :cond_e
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string v0, "completion"

    .line 19000
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;

    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-direct {v0, v1, p2}, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->extraCallback:Lo/isFromUser;

    check-cast v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, p1}, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;

    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-direct {v0, v1, p2}, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;->extraCallback:Lo/isFromUser;

    return-object v0
.end method
