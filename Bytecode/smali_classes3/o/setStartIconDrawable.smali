.class final Lo/setStartIconDrawable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private extraCallback:J

.field private onMessageChannelReady:Ljava/lang/Long;

.field private onNavigationEvent:Lo/cH$ICustomTabsCallback;

.field private final synthetic onPostMessage:Lo/setErrorIconTintMode;


# direct methods
.method private constructor <init>(Lo/setErrorIconTintMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setErrorIconTintMode;Lo/setHintAnimationEnabled;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lo/setStartIconDrawable;-><init>(Lo/setErrorIconTintMode;)V

    return-void
.end method


# virtual methods
.method final onNavigationEvent(Ljava/lang/String;Lo/cH$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 2
    invoke-virtual/range {p2 .. p2}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-virtual/range {p2 .. p2}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v10

    .line 4
    iget-object v2, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v2}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v2

    const-string v3, "_eid"

    invoke-virtual {v2, v8, v3}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    const-string v7, "_ep"

    .line 7
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v7, :cond_b

    .line 9
    iget-object v6, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v6

    const-string v7, "_en"

    invoke-virtual {v6, v8, v7}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .line 10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 11
    iget-object v0, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    .line 13
    :cond_2
    iget-object v6, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lo/setStartIconDrawable;->onMessageChannelReady:Ljava/lang/Long;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v6, v1, Lo/setStartIconDrawable;->onMessageChannelReady:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-eqz v6, :cond_5

    .line 14
    :cond_3
    iget-object v6, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    .line 15
    invoke-virtual {v6}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lo/zzzv;->onPostMessage(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 16
    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v13, :cond_4

    goto/16 :goto_4

    .line 21
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lo/cH$ICustomTabsCallback;

    iput-object v7, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    .line 22
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lo/setStartIconDrawable;->extraCallback:J

    .line 23
    iget-object v6, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    .line 24
    invoke-virtual {v6}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v6

    iget-object v7, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    invoke-virtual {v6, v7, v3}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iput-object v3, v1, Lo/setStartIconDrawable;->onMessageChannelReady:Ljava/lang/Long;

    .line 25
    :cond_5
    iget-wide v6, v1, Lo/setStartIconDrawable;->extraCallback:J

    const-wide/16 v13, 0x1

    sub-long/2addr v6, v13

    iput-wide v6, v1, Lo/setStartIconDrawable;->extraCallback:J

    cmp-long v3, v6, v11

    if-gtz v3, :cond_6

    .line 27
    iget-object v3, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v3}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 29
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v6, "Clearing complex main event info. appId"

    invoke-virtual {v4, v6, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-virtual {v3}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "delete from main_event_params where app_id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    .line 31
    invoke-virtual {v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_6
    iget-object v2, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v2}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    iget-wide v5, v1, Lo/setStartIconDrawable;->extraCallback:J

    iget-object v7, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Long;JLo/cH$ICustomTabsCallback;)Z

    .line 37
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$onNavigationEvent;

    .line 39
    iget-object v4, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v4}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object v4

    if-nez v4, :cond_7

    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 44
    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v10, v0

    goto :goto_6

    .line 46
    :cond_9
    iget-object v0, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    .line 48
    invoke-virtual {v0, v2, v9}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 17
    :cond_a
    :goto_4
    iget-object v0, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 19
    invoke-virtual {v0, v2, v9, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_b
    if-eqz v6, :cond_e

    .line 50
    iput-object v4, v1, Lo/setStartIconDrawable;->onMessageChannelReady:Ljava/lang/Long;

    .line 51
    iput-object v8, v1, Lo/setStartIconDrawable;->onNavigationEvent:Lo/cH$ICustomTabsCallback;

    .line 52
    iget-object v2, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    .line 53
    invoke-virtual {v2}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "_epc"

    .line 54
    invoke-virtual {v2, v8, v5}, Lo/setErrorTextColor;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    move-object v3, v2

    .line 56
    :goto_5
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lo/setStartIconDrawable;->extraCallback:J

    cmp-long v5, v2, v11

    if-gtz v5, :cond_d

    .line 58
    iget-object v0, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Complex event with zero extra param count. eventName"

    .line 60
    invoke-virtual {v0, v2, v9}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 61
    :cond_d
    iget-object v2, v1, Lo/setStartIconDrawable;->onPostMessage:Lo/setErrorIconTintMode;

    invoke-virtual {v2}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v2

    iget-wide v5, v1, Lo/setStartIconDrawable;->extraCallback:J

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Long;JLo/cH$ICustomTabsCallback;)Z

    .line 63
    :cond_e
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v0

    .line 64
    check-cast v0, Lo/fa$onNavigationEvent;

    check-cast v0, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    invoke-virtual {v0, v9}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    return-object v0
.end method
