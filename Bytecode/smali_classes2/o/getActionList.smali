.class public final Lo/getActionList;
.super Lo/performAccessibilityAction;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrentControllerInfo;

.field private final extraCallback:Lo/onRemoveQueueItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onRemoveQueueItem<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onPostMessage:Lo/onRemoveQueueItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onRemoveQueueItem<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/performAccessibilityAction;-><init>()V

    .line 35
    iput-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 36
    new-instance v0, Lo/getActionList$3;

    invoke-direct {v0, p1}, Lo/getActionList$3;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getActionList;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 91
    new-instance v0, Lo/getActionList$1;

    invoke-direct {v0, p1}, Lo/getActionList$1;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getActionList;->extraCallback:Lo/onRemoveQueueItem;

    .line 106
    new-instance v0, Lo/getActionList$5;

    invoke-direct {v0, p1}, Lo/getActionList$5;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getActionList;->onPostMessage:Lo/onRemoveQueueItem;

    .line 166
    new-instance v0, Lo/getActionList$2;

    invoke-direct {v0, p1}, Lo/getActionList$2;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getActionList;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 173
    new-instance v0, Lo/getActionList$4;

    invoke-direct {v0, p1}, Lo/getActionList$4;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT `request`.`id` AS `id`, `request`.`request_id` AS `request_id`, `request`.`url` AS `url`, `request`.`method` AS `method`, `request`.`data` AS `data`, `request`.`status` AS `status`, `request`.`is_immediate` AS `is_immediate`, `request`.`created_at` AS `created_at`, `request`.`is_compressed` AS `is_compressed` FROM REQUEST WHERE url = ?"

    .line 289
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    if-nez p1, :cond_0

    .line 10234
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, v3, v0

    goto :goto_0

    .line 10251
    :cond_0
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x4

    aput v4, v3, v0

    .line 10252
    iget-object v3, v2, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v3, v0

    .line 296
    :goto_0
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 297
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 10351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 10352
    iget-object v3, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    .line 10353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v3}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 10354
    invoke-interface {v3}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 299
    :try_start_0
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 11323
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 11324
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 11328
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "id"

    .line 301
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "request_id"

    .line 302
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    .line 303
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "method"

    .line 304
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 305
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "status"

    .line 306
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "is_immediate"

    .line 307
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "created_at"

    .line 308
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_compressed"

    .line 309
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 310
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 314
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    move-object/from16 v16, v14

    goto :goto_2

    .line 317
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v16, v13

    .line 320
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 322
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 324
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 326
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 328
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v21, v14

    goto :goto_3

    .line 331
    :cond_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v13

    .line 334
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v22, v14

    goto :goto_4

    .line 337
    :cond_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v22, v13

    .line 340
    :goto_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v23, v14

    goto :goto_5

    .line 343
    :cond_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 346
    :goto_5
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_6
    move-object/from16 v24, v14

    goto :goto_7

    .line 349
    :cond_5
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_6

    .line 351
    :goto_7
    new-instance v13, Lo/sendAccessibilityEvent;

    move-object v15, v13

    invoke-direct/range {v15 .. v24}, Lo/sendAccessibilityEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 352
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_6
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 11395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 358
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 357
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 358
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 359
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 361
    iget-object v2, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 362
    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 4351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 4352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 4353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 4354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 5021
    :try_start_0
    invoke-super {p0, p1}, Lo/performAccessibilityAction;->ICustomTabsCallback(Ljava/util/List;)V

    .line 235
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 5395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 238
    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*) FROM REQUEST WHERE url = ?"

    .line 368
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 12234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 12251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 12252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 375
    :goto_0
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 376
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 13323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 13324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 13328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 379
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 380
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return v2

    :catchall_0
    move-exception v0

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 388
    throw v0
.end method

.method public final extraCallback()V
    .locals 5

    .line 254
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 255
    iget-object v0, p0, Lo/getActionList;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 8351
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 8352
    iget-object v2, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 8353
    iget-object v1, v1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 8354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 259
    iget-object v2, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 8395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v2, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 262
    iget-object v2, p0, Lo/getActionList;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 9096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_0

    .line 9097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 261
    iget-object v3, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 262
    iget-object v3, p0, Lo/getActionList;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 10096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_1

    .line 10097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    :cond_1
    throw v2
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 6351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 6352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 6353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 6354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 7021
    :try_start_0
    invoke-super {p0, p1}, Lo/performAccessibilityAction;->extraCallback(Ljava/util/List;)V

    .line 246
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 7395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 249
    throw p1
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT DISTINCT url FROM REQUEST"

    .line 467
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 469
    iget-object v2, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 16323
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 16324
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 16328
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v2

    .line 471
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 481
    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT `request`.`id` AS `id`, `request`.`request_id` AS `request_id`, `request`.`url` AS `url`, `request`.`method` AS `method`, `request`.`data` AS `data`, `request`.`status` AS `status`, `request`.`is_immediate` AS `is_immediate`, `request`.`created_at` AS `created_at`, `request`.`is_compressed` AS `is_compressed` FROM REQUEST WHERE url = ? and is_immediate = 1"

    .line 394
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    if-nez p1, :cond_0

    .line 14234
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, v3, v0

    goto :goto_0

    .line 14251
    :cond_0
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x4

    aput v4, v3, v0

    .line 14252
    iget-object v3, v2, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v3, v0

    .line 401
    :goto_0
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 402
    iget-object v0, v1, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 15323
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 15324
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 15328
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 404
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "request_id"

    .line 405
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    .line 406
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "method"

    .line 407
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 408
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "status"

    .line 409
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "is_immediate"

    .line 410
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "created_at"

    .line 411
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_compressed"

    .line 412
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 413
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 417
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    move-object/from16 v16, v14

    goto :goto_2

    .line 420
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v16, v13

    .line 423
    :goto_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 425
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 427
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 429
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 431
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v21, v14

    goto :goto_3

    .line 434
    :cond_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v13

    .line 437
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v22, v14

    goto :goto_4

    .line 440
    :cond_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v22, v13

    .line 443
    :goto_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v23, v14

    goto :goto_5

    .line 446
    :cond_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 449
    :goto_5
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_6
    move-object/from16 v24, v14

    goto :goto_7

    .line 452
    :cond_5
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_6

    .line 454
    :goto_7
    new-instance v13, Lo/sendAccessibilityEvent;

    move-object v15, v13

    invoke-direct/range {v15 .. v24}, Lo/sendAccessibilityEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 455
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 459
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 460
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 459
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 460
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 461
    throw v0
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 209
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 2353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lo/getActionList;->extraCallback:Lo/onRemoveQueueItem;

    invoke-virtual {v0, p1}, Lo/onRemoveQueueItem;->onPostMessage(Ljava/lang/Iterable;)I

    .line 212
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 215
    throw p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 221
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 3351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 3352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 3353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 3354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lo/getActionList;->onPostMessage:Lo/onRemoveQueueItem;

    invoke-virtual {v0, p1}, Lo/onRemoveQueueItem;->onPostMessage(Ljava/lang/Iterable;)I

    .line 224
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 3395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 227
    throw p1
.end method

.method public final onPostMessage(Lo/sendAccessibilityEvent;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 185
    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lo/getActionList;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object p1, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getActionList;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 191
    throw p1
.end method
