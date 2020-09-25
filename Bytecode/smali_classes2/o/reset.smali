.class public final Lo/reset;
.super Lo/setOnScrollChangeListener;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrentControllerInfo;

.field private final extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/setFillViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lo/setOnScrollChangeListener;-><init>()V

    .line 32
    iput-object p1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 33
    new-instance v0, Lo/reset$1;

    invoke-direct {v0, p1}, Lo/reset$1;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/reset;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 95
    new-instance v0, Lo/reset$4;

    invoke-direct {v0, p1}, Lo/reset$4;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/reset;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 102
    new-instance v0, Lo/reset$3;

    invoke-direct {v0, p1}, Lo/reset$3;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/reset;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 109
    new-instance v0, Lo/reset$2;

    invoke-direct {v0, p1}, Lo/reset$2;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/reset;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setFillViewport;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 121
    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

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

    .line 123
    :try_start_0
    iget-object v0, p0, Lo/reset;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->ICustomTabsCallback(Ljava/lang/Iterable;)V

    .line 124
    iget-object p1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object p1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 127
    throw p1
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setFillViewport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT `ContactEntity`.`id` AS `id`, `ContactEntity`.`phone_number` AS `phone_number`, `ContactEntity`.`first_name` AS `first_name`, `ContactEntity`.`last_name` AS `last_name`, `ContactEntity`.`client_contact_id` AS `client_contact_id`, `ContactEntity`.`user_contact_id` AS `user_contact_id`, `ContactEntity`.`display_order` AS `display_order`, `ContactEntity`.`is_cred_user` AS `is_cred_user`, `ContactEntity`.`is_deleted` AS `is_deleted`, `ContactEntity`.`is_synced_to_server` AS `is_synced_to_server`, `ContactEntity`.`last_modified` AS `last_modified`, `ContactEntity`.`is_suggested` AS `is_suggested` FROM ContactEntity where is_deleted is 0 order by display_order"

    .line 282
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 283
    iget-object v3, v1, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 284
    iget-object v3, v1, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 9323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 9324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 9328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 286
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "phone_number"

    .line 287
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "first_name"

    .line 288
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "last_name"

    .line 289
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "client_contact_id"

    .line 290
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_contact_id"

    .line 291
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "display_order"

    .line 292
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_cred_user"

    .line 293
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_deleted"

    .line 294
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_synced_to_server"

    .line 295
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_modified"

    .line 296
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_suggested"

    .line 297
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 304
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 306
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 308
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 310
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 312
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 314
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v23, v16

    goto :goto_1

    .line 317
    :cond_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v1

    .line 321
    :goto_1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v24, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 325
    :goto_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x1

    goto :goto_3

    :cond_2
    const/16 v25, 0x0

    .line 329
    :goto_3
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x1

    goto :goto_4

    :cond_3
    const/16 v26, 0x0

    .line 332
    :goto_4
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 335
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v29, v16

    goto :goto_5

    .line 338
    :cond_4
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    :goto_5
    if-nez v29, :cond_5

    :goto_6
    move/from16 v30, v4

    move-object/from16 v29, v16

    goto :goto_8

    .line 340
    :cond_5
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_7

    :cond_6
    const/16 v24, 0x0

    :goto_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_6

    .line 341
    :goto_8
    new-instance v4, Lo/setFillViewport;

    move-object/from16 v16, v4

    move/from16 v24, v1

    invoke-direct/range {v16 .. v29}, Lo/setFillViewport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZZJLjava/lang/Boolean;)V

    .line 342
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v30

    goto/16 :goto_0

    .line 346
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 347
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 346
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 347
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 348
    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 133
    iget-object v0, p0, Lo/reset;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 136
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 142
    invoke-interface {v0, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {v0, p1, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 146
    :goto_1
    iget-object p1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object p2, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    .line 2353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 148
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 149
    iget-object p2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2395
    iget-object p2, p2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object p2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 152
    iget-object p2, p0, Lo/reset;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 3096
    iget-object v1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v1, :cond_2

    .line 3097
    iget-object p2, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 151
    iget-object v1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 152
    iget-object v1, p0, Lo/reset;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 4096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_3

    .line 4097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    :cond_3
    throw p2
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 158
    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 159
    iget-object v0, p0, Lo/reset;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 4351
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 4352
    iget-object v2, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 4353
    iget-object v1, v1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 4354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v1, 0x0

    .line 162
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 163
    iget-object v2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 4395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 166
    iget-object v2, p0, Lo/reset;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 5096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_0

    .line 5097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 165
    iget-object v3, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 166
    iget-object v3, p0, Lo/reset;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 6096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_1

    .line 6097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    :cond_1
    throw v2
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setFillViewport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT `ContactEntity`.`id` AS `id`, `ContactEntity`.`phone_number` AS `phone_number`, `ContactEntity`.`first_name` AS `first_name`, `ContactEntity`.`last_name` AS `last_name`, `ContactEntity`.`client_contact_id` AS `client_contact_id`, `ContactEntity`.`user_contact_id` AS `user_contact_id`, `ContactEntity`.`display_order` AS `display_order`, `ContactEntity`.`is_cred_user` AS `is_cred_user`, `ContactEntity`.`is_deleted` AS `is_deleted`, `ContactEntity`.`is_synced_to_server` AS `is_synced_to_server`, `ContactEntity`.`last_modified` AS `last_modified`, `ContactEntity`.`is_suggested` AS `is_suggested` FROM ContactEntity where is_deleted is 0 and is_cred_user is 0 order by is_suggested DESC,display_order"

    .line 354
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 355
    iget-object v3, v1, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 356
    iget-object v3, v1, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 10323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 10324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 10328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 358
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "phone_number"

    .line 359
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "first_name"

    .line 360
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "last_name"

    .line 361
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "client_contact_id"

    .line 362
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_contact_id"

    .line 363
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "display_order"

    .line 364
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_cred_user"

    .line 365
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_deleted"

    .line 366
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_synced_to_server"

    .line 367
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_modified"

    .line 368
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_suggested"

    .line 369
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 374
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 376
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 378
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 380
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 382
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 384
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 386
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v23, v16

    goto :goto_1

    .line 389
    :cond_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v1

    .line 393
    :goto_1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v24, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 397
    :goto_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x1

    goto :goto_3

    :cond_2
    const/16 v25, 0x0

    .line 401
    :goto_3
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x1

    goto :goto_4

    :cond_3
    const/16 v26, 0x0

    .line 404
    :goto_4
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 407
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v29, v16

    goto :goto_5

    .line 410
    :cond_4
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    :goto_5
    if-nez v29, :cond_5

    :goto_6
    move/from16 v30, v4

    move-object/from16 v29, v16

    goto :goto_8

    .line 412
    :cond_5
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_7

    :cond_6
    const/16 v24, 0x0

    :goto_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_6

    .line 413
    :goto_8
    new-instance v4, Lo/setFillViewport;

    move-object/from16 v16, v4

    move/from16 v24, v1

    invoke-direct/range {v16 .. v29}, Lo/setFillViewport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZZJLjava/lang/Boolean;)V

    .line 414
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v30

    goto/16 :goto_0

    .line 418
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 419
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 418
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 419
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 420
    throw v0
.end method

.method public final onPostMessage(IZZLjava/lang/String;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 174
    iget-object v0, p0, Lo/reset;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 176
    invoke-interface {v0, p1, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p1, 0x2

    int-to-long v1, p2

    .line 180
    invoke-interface {v0, p1, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p1, 0x3

    int-to-long p2, p3

    .line 184
    invoke-interface {v0, p1, p2, p3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p1, 0x4

    if-nez p4, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {v0, p1, p4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 191
    :goto_0
    iget-object p1, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 6351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 6352
    iget-object p2, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    .line 6353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 6354
    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 193
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 194
    iget-object p2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 6395
    iget-object p2, p2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object p2, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 197
    iget-object p2, p0, Lo/reset;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 7096
    iget-object p3, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, p3, :cond_1

    .line 7097
    iget-object p2, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 196
    iget-object p3, p0, Lo/reset;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 197
    iget-object p3, p0, Lo/reset;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 8096
    iget-object p4, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, p4, :cond_2

    .line 8097
    iget-object p3, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    :cond_2
    throw p2
.end method
