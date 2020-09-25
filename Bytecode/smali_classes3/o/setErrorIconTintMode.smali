.class final Lo/setErrorIconTintMode;
.super Lo/setHintTextColor;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Ljava/lang/Long;

.field private onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/setStartIconOnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    return-void
.end method

.method private final onMessageChannelReady(I)Lo/setStartIconOnClickListener;
    .locals 3

    .line 316
    iget-object v0, p0, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setStartIconOnClickListener;

    return-object p1

    .line 318
    :cond_0
    new-instance v0, Lo/setStartIconOnClickListener;

    iget-object v1, p0, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/setStartIconOnClickListener;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/setHintAnimationEnabled;)V

    .line 319
    iget-object v1, p0, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final onMessageChannelReady(II)Z
    .locals 2

    .line 321
    iget-object v0, p0, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 323
    :cond_0
    iget-object v0, p0, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setStartIconOnClickListener;

    invoke-static {p1}, Lo/setStartIconOnClickListener;->onMessageChannelReady(Lo/setStartIconOnClickListener;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final onMessageChannelReady(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/cH$ICustomTabsCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/cH$newSession;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lo/cH$extraCallback;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 4
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p3 .. p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    .line 7
    iput-object v0, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    .line 9
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, v10, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    move-object/from16 v0, p4

    .line 10
    iput-object v0, v10, Lo/setErrorIconTintMode;->onPostMessage:Ljava/lang/Long;

    move-object/from16 v0, p5

    .line 11
    iput-object v0, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cH$ICustomTabsCallback;

    .line 14
    invoke-virtual {v1}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {}, Lo/loadAd;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v2, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v3, Lo/zziq;->unsubscribe:Lo/setStatusBarForegroundColor;

    .line 22
    invoke-virtual {v0, v2, v3}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 24
    :goto_1
    invoke-static {}, Lo/loadAd;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v2, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v3, Lo/zziq;->sendCustomAction:Lo/setStatusBarForegroundColor;

    .line 26
    invoke-virtual {v0, v2, v3}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 29
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    iget-object v3, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Lo/setHintTextColor;->read()V

    .line 31
    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 32
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    :try_start_0
    invoke-virtual {v2}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    new-array v7, v12, [Ljava/lang/String;

    aput-object v3, v7, v11

    .line 36
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 41
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 42
    invoke-virtual {v2, v4, v3, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    .line 45
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v0

    iget-object v2, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 46
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    iget-object v3, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/zzzv;->asInterface(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 47
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    iget-object v3, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v4, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    .line 49
    invoke-virtual {v2, v3, v4}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-eqz v15, :cond_21

    .line 51
    :cond_7
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_14

    .line 53
    :cond_8
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_11

    .line 56
    iget-object v1, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-static {v15}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v3, Lo/postOrRun;

    invoke-direct {v3}, Lo/postOrRun;-><init>()V

    .line 61
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 63
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v4

    invoke-virtual {v4, v1}, Lo/zzzv;->asBinder(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 64
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/cH$asBinder;

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_f

    .line 67
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_7

    .line 71
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v8

    invoke-virtual {v6}, Lo/cH$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lo/setErrorTextColor;->extraCallback(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 72
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 74
    invoke-virtual {v6}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v9

    .line 75
    check-cast v9, Lo/fa$onNavigationEvent;

    check-cast v9, Lo/cH$asBinder$onPostMessage;

    invoke-virtual {v9}, Lo/cH$asBinder$onPostMessage;->extraCallback()Lo/cH$asBinder$onPostMessage;

    move-result-object v9

    invoke-virtual {v9, v8}, Lo/cH$asBinder$onPostMessage;->extraCallback(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v9

    invoke-virtual {v6}, Lo/cH$asBinder;->onMessageChannelReady()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lo/setErrorTextColor;->extraCallback(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 78
    invoke-virtual {v8}, Lo/cH$asBinder$onPostMessage;->onPostMessage()Lo/cH$asBinder$onPostMessage;

    move-result-object v11

    invoke-virtual {v11, v9}, Lo/cH$asBinder$onPostMessage;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    const/4 v9, 0x0

    .line 79
    :goto_5
    invoke-virtual {v6}, Lo/cH$asBinder;->onTransact()I

    move-result v11

    if-ge v9, v11, :cond_c

    .line 81
    invoke-virtual {v6, v9}, Lo/cH$asBinder;->onNavigationEvent(I)Lo/cH$onMessageChannelReady;

    move-result-object v11

    invoke-virtual {v11}, Lo/cH$onMessageChannelReady;->ICustomTabsCallback()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 82
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 83
    invoke-virtual {v8, v9}, Lo/cH$asBinder$onPostMessage;->onNavigationEvent(I)Lo/cH$asBinder$onPostMessage;

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    .line 85
    :goto_6
    invoke-virtual {v6}, Lo/cH$asBinder;->onRelationshipValidationResult()I

    move-result v11

    if-ge v9, v11, :cond_e

    .line 87
    invoke-virtual {v6, v9}, Lo/cH$asBinder;->onMessageChannelReady(I)Lo/cH$asInterface;

    move-result-object v11

    invoke-virtual {v11}, Lo/cH$asInterface;->onPostMessage()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 88
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 89
    invoke-virtual {v8, v9}, Lo/cH$asBinder$onPostMessage;->ICustomTabsCallback(I)Lo/cH$asBinder$onPostMessage;

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 91
    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v6

    check-cast v6, Lo/fa;

    check-cast v6, Lo/cH$asBinder;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 68
    :cond_f
    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_10
    move-object v11, v3

    goto :goto_9

    :cond_11
    move-object v11, v15

    .line 95
    :goto_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 96
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cH$asBinder;

    .line 97
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 98
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 101
    new-instance v7, Lo/postOrRun;

    invoke-direct {v7}, Lo/postOrRun;-><init>()V

    if-eqz v1, :cond_15

    .line 102
    invoke-virtual {v1}, Lo/cH$asBinder;->onTransact()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_d

    .line 104
    :cond_12
    invoke-virtual {v1}, Lo/cH$asBinder;->onNavigationEvent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$onMessageChannelReady;

    .line 105
    invoke-virtual {v3}, Lo/cH$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 107
    invoke-virtual {v3}, Lo/cH$onMessageChannelReady;->ICustomTabsCallback()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    invoke-virtual {v3}, Lo/cH$onMessageChannelReady;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 109
    invoke-virtual {v3}, Lo/cH$onMessageChannelReady;->extraCallback()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 111
    :goto_c
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 117
    :cond_15
    :goto_d
    new-instance v8, Lo/postOrRun;

    invoke-direct {v8}, Lo/postOrRun;-><init>()V

    if-eqz v1, :cond_18

    .line 118
    invoke-virtual {v1}, Lo/cH$asBinder;->onRelationshipValidationResult()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_f

    .line 120
    :cond_16
    invoke-virtual {v1}, Lo/cH$asBinder;->asInterface()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$asInterface;

    .line 121
    invoke-virtual {v3}, Lo/cH$asInterface;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Lo/cH$asInterface;->extraCallback()I

    move-result v4

    if-lez v4, :cond_17

    .line 123
    invoke-virtual {v3}, Lo/cH$asInterface;->onPostMessage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, Lo/cH$asInterface;->extraCallback()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v3, v9}, Lo/cH$asInterface;->ICustomTabsCallback(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 125
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_18
    :goto_f
    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    .line 130
    :goto_10
    invoke-virtual {v1}, Lo/cH$asBinder;->onPostMessage()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_1b

    .line 132
    invoke-virtual {v1}, Lo/cH$asBinder;->onMessageChannelReady()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lo/setErrorTextColor;->ICustomTabsCallback(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 133
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 135
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v12, v4, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 137
    invoke-virtual {v1}, Lo/cH$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lo/setErrorTextColor;->ICustomTabsCallback(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 138
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x1

    goto :goto_11

    :cond_19
    const/4 v3, 0x0

    :goto_11
    if-nez v3, :cond_1a

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    goto :goto_10

    .line 143
    :cond_1b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lo/cH$asBinder;

    if-eqz v14, :cond_20

    if-eqz v13, :cond_20

    .line 146
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_20

    .line 148
    iget-object v2, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    if-eqz v2, :cond_20

    iget-object v2, v10, Lo/setErrorIconTintMode;->onPostMessage:Ljava/lang/Long;

    if-nez v2, :cond_1c

    goto :goto_13

    .line 150
    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cB$onNavigationEvent;

    .line 151
    invoke-virtual {v2}, Lo/cB$onNavigationEvent;->ICustomTabsCallback()I

    move-result v3

    .line 152
    iget-object v9, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    .line 153
    invoke-virtual {v2}, Lo/cB$onNavigationEvent;->onTransact()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 154
    iget-object v2, v10, Lo/setErrorIconTintMode;->onPostMessage:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v18, v18, v20

    .line 155
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 160
    :cond_20
    :goto_13
    new-instance v12, Lo/setStartIconOnClickListener;

    iget-object v3, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v9}, Lo/setStartIconOnClickListener;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/cH$asBinder;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lo/setHintAnimationEnabled;)V

    .line 161
    iget-object v1, v10, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v18

    const/4 v12, 0x1

    goto/16 :goto_a

    :cond_21
    :goto_14
    const/4 v11, 0x0

    .line 164
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-nez v0, :cond_2b

    .line 165
    new-instance v0, Lo/setStartIconDrawable;

    invoke-direct {v0, v10, v11}, Lo/setStartIconDrawable;-><init>(Lo/setErrorIconTintMode;Lo/setHintAnimationEnabled;)V

    .line 166
    new-instance v2, Lo/postOrRun;

    invoke-direct {v2}, Lo/postOrRun;-><init>()V

    .line 167
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/cH$ICustomTabsCallback;

    .line 168
    iget-object v5, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v5, v4}, Lo/setStartIconDrawable;->onNavigationEvent(Ljava/lang/String;Lo/cH$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 172
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v6

    iget-object v13, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v5}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v13, v8}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;

    move-result-object v8

    if-nez v8, :cond_23

    .line 175
    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 176
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v8

    .line 177
    invoke-static {v13}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 178
    invoke-virtual {v6}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v6

    invoke-virtual {v6, v7}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 179
    invoke-virtual {v8, v7, v9, v6}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    new-instance v6, Lo/dispatchMessageTraced;

    move-object v12, v6

    .line 181
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x1

    const-wide/16 v19, 0x1

    .line 182
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v12 .. v28}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_15

    .line 184
    :cond_23
    new-instance v6, Lo/dispatchMessageTraced;

    move-object/from16 v29, v6

    iget-object v4, v8, Lo/dispatchMessageTraced;->onPostMessage:Ljava/lang/String;

    move-object/from16 v30, v4

    iget-object v4, v8, Lo/dispatchMessageTraced;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v31, v4

    iget-wide v12, v8, Lo/dispatchMessageTraced;->onNavigationEvent:J

    const-wide/16 v14, 0x1

    add-long v32, v12, v14

    iget-wide v12, v8, Lo/dispatchMessageTraced;->onMessageChannelReady:J

    add-long v34, v12, v14

    iget-wide v12, v8, Lo/dispatchMessageTraced;->extraCallback:J

    add-long v36, v12, v14

    iget-wide v12, v8, Lo/dispatchMessageTraced;->onTransact:J

    move-wide/from16 v38, v12

    iget-wide v12, v8, Lo/dispatchMessageTraced;->onRelationshipValidationResult:J

    move-wide/from16 v40, v12

    iget-object v4, v8, Lo/dispatchMessageTraced;->asBinder:Ljava/lang/Long;

    move-object/from16 v42, v4

    iget-object v4, v8, Lo/dispatchMessageTraced;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    move-object/from16 v43, v4

    iget-object v4, v8, Lo/dispatchMessageTraced;->asInterface:Ljava/lang/Long;

    move-object/from16 v44, v4

    iget-object v4, v8, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    move-object/from16 v45, v4

    invoke-direct/range {v29 .. v45}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 188
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lo/zzzv;->onMessageChannelReady(Lo/dispatchMessageTraced;)V

    .line 189
    iget-wide v7, v6, Lo/dispatchMessageTraced;->onNavigationEvent:J

    .line 191
    invoke-virtual {v5}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_26

    .line 194
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v9

    iget-object v12, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v9, v12, v4}, Lo/zzzv;->onTransact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 195
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v12

    if-eqz v12, :cond_24

    .line 196
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v12

    iget-object v13, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v14, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    .line 197
    invoke-virtual {v12, v13, v14}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_24
    if-nez v9, :cond_25

    .line 199
    new-instance v9, Lo/postOrRun;

    invoke-direct {v9}, Lo/postOrRun;-><init>()V

    .line 200
    :cond_25
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_26
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 204
    iget-object v12, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 205
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v12

    invoke-virtual {v12}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 208
    :cond_27
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 209
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v12, 0x1

    :goto_17
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/cB$onNavigationEvent;

    .line 210
    new-instance v14, Lo/setCounterMaxLength;

    iget-object v13, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {v14, v10, v13, v15, v12}, Lo/setCounterMaxLength;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;ILo/cB$onNavigationEvent;)V

    .line 211
    iget-object v13, v10, Lo/setErrorIconTintMode;->onPostMessage:Ljava/lang/Long;

    iget-object v11, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    .line 212
    invoke-virtual {v12}, Lo/cB$onNavigationEvent;->ICustomTabsCallback()I

    move-result v12

    invoke-direct {v10, v15, v12}, Lo/setErrorIconTintMode;->onMessageChannelReady(II)Z

    move-result v19

    move-object v12, v14

    move-object/from16 v21, v0

    move-object v0, v14

    move-object v14, v11

    move v11, v15

    move-object v15, v5

    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    .line 213
    invoke-virtual/range {v12 .. v19}, Lo/setCounterMaxLength;->onMessageChannelReady(Ljava/lang/Long;Ljava/lang/Long;Lo/cH$ICustomTabsCallback;JLo/dispatchMessageTraced;Z)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 215
    invoke-direct {v10, v11}, Lo/setErrorIconTintMode;->onMessageChannelReady(I)Lo/setStartIconOnClickListener;

    move-result-object v13

    .line 216
    invoke-virtual {v13, v0}, Lo/setStartIconOnClickListener;->extraCallback(Lo/setStartIconCheckable;)V

    move v15, v11

    move-object/from16 v0, v21

    const/4 v11, 0x0

    goto :goto_17

    .line 218
    :cond_28
    iget-object v0, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_29
    move-object/from16 v21, v0

    move v11, v15

    :goto_18
    if-nez v12, :cond_2a

    .line 220
    iget-object v0, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object/from16 v0, v21

    const/4 v11, 0x0

    goto/16 :goto_16

    .line 224
    :cond_2b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 225
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 226
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$newSession;

    .line 228
    invoke-virtual {v3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_2f

    .line 232
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v5

    iget-object v6, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lo/zzzv;->asInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 233
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 234
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    iget-object v7, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v8, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    .line 235
    invoke-virtual {v6, v7, v8}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-nez v6, :cond_2e

    :cond_2d
    if-nez v5, :cond_2e

    .line 237
    new-instance v5, Lo/postOrRun;

    invoke-direct {v5}, Lo/postOrRun;-><init>()V

    .line 238
    :cond_2e
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2f
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 242
    iget-object v7, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 243
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 246
    :cond_31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 247
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/cB$onPostMessage;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(I)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 249
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    .line 250
    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v9

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 252
    invoke-virtual {v8}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-virtual {v8}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1c

    :cond_32
    const/4 v12, 0x0

    .line 253
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v13

    invoke-virtual {v8}, Lo/cB$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Evaluating filter. audience, filter, property"

    .line 254
    invoke-virtual {v9, v14, v11, v12, v13}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v9

    .line 256
    invoke-virtual {v9}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v9

    .line 257
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v11

    invoke-virtual {v11, v8}, Lo/setErrorTextColor;->extraCallback(Lo/cB$onPostMessage;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Filter definition"

    invoke-virtual {v9, v12, v11}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    :cond_33
    invoke-virtual {v8}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-virtual {v8}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_34

    goto :goto_1d

    .line 266
    :cond_34
    new-instance v9, Lo/setCounterOverflowTextColor;

    iget-object v11, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v8}, Lo/setCounterOverflowTextColor;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;ILo/cB$onPostMessage;)V

    .line 267
    iget-object v11, v10, Lo/setErrorIconTintMode;->onPostMessage:Ljava/lang/Long;

    iget-object v12, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    .line 268
    invoke-virtual {v8}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lo/setErrorIconTintMode;->onMessageChannelReady(II)Z

    move-result v8

    .line 269
    invoke-virtual {v9, v11, v12, v3, v8}, Lo/setCounterOverflowTextColor;->onMessageChannelReady(Ljava/lang/Long;Ljava/lang/Long;Lo/cH$newSession;Z)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 271
    invoke-direct {v10, v6}, Lo/setErrorIconTintMode;->onMessageChannelReady(I)Lo/setStartIconOnClickListener;

    move-result-object v11

    .line 272
    invoke-virtual {v11, v9}, Lo/setStartIconOnClickListener;->extraCallback(Lo/setStartIconCheckable;)V

    goto/16 :goto_1b

    .line 274
    :cond_35
    iget-object v7, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 259
    :cond_36
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 260
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v7

    iget-object v9, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 261
    invoke-static {v9}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 262
    invoke-virtual {v8}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-virtual {v8}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1e

    :cond_37
    const/4 v8, 0x0

    :goto_1e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Invalid property filter ID. appId, id"

    .line 263
    invoke-virtual {v7, v11, v9, v8}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_38
    :goto_1f
    if-nez v8, :cond_30

    .line 276
    iget-object v7, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 280
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v0, v10, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 283
    iget-object v2, v10, Lo/setErrorIconTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 285
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    iget-object v3, v10, Lo/setErrorIconTintMode;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setStartIconOnClickListener;

    .line 288
    invoke-virtual {v3, v0}, Lo/setStartIconOnClickListener;->onNavigationEvent(I)Lo/cH$extraCallback;

    move-result-object v3

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v4

    iget-object v5, v10, Lo/setErrorIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 291
    invoke-virtual {v3}, Lo/cH$extraCallback;->onMessageChannelReady()Lo/cH$asBinder;

    move-result-object v3

    .line 292
    invoke-virtual {v4}, Lo/setHintTextColor;->read()V

    .line 293
    invoke-virtual {v4}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 294
    invoke-static {v5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v3}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v3

    .line 297
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 298
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "audience_id"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    .line 300
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 301
    :try_start_1
    invoke-virtual {v4}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 303
    :try_start_2
    invoke-virtual {v0, v3, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-nez v0, :cond_3a

    .line 305
    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 307
    invoke-static {v5}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    .line 310
    :goto_21
    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 312
    invoke-static {v5}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    invoke-virtual {v3, v5, v4, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_3b
    return-object v1
.end method

.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
