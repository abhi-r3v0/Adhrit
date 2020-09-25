.class public final Lo/createView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createTextView;


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrentControllerInfo;

.field private final extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 35
    new-instance v0, Lo/createView$5;

    invoke-direct {v0, p1}, Lo/createView$5;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/createView;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 80
    new-instance v0, Lo/createView$4;

    invoke-direct {v0, p1}, Lo/createView$4;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/createView;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 87
    new-instance v0, Lo/createView$2;

    invoke-direct {v0, p1}, Lo/createView$2;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/createView;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM campaigns WHERE starting_events LIKE \'%\"\' || ? || \'\"%\' ORDER BY priority ASC"

    .line 265
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    if-nez p1, :cond_0

    .line 9234
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, v3, v0

    goto :goto_0

    .line 9251
    :cond_0
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x4

    aput v4, v3, v0

    .line 9252
    iget-object v3, v2, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v3, v0

    .line 272
    :goto_0
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 273
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 10323
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 10324
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 10328
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 275
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "expiry_time"

    .line 276
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "start_time"

    .line 277
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "starting_events"

    .line 278
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "total_fire_count"

    .line 279
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "priority"

    .line 280
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "data"

    .line 281
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 282
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 286
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 288
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    move-object v14, v12

    goto :goto_2

    .line 291
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v14, v11

    .line 294
    :goto_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v15, v12

    goto :goto_3

    .line 297
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v15, v11

    .line 301
    :goto_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 302
    invoke-static {v11}, Lo/onNightModeChanged;->onPostMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 304
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 306
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v18, v12

    goto :goto_4

    .line 309
    :cond_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v18, v11

    .line 313
    :goto_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 314
    invoke-static {v11}, Lo/onNightModeChanged;->onNavigationEvent(Ljava/lang/String;)Lclub/cred/interjection/data/models/DataCampaign;

    move-result-object v19

    .line 315
    new-instance v11, Lclub/cred/interjection/data/models/Campaign;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lclub/cred/interjection/data/models/Campaign;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Integer;Lclub/cred/interjection/data/models/DataCampaign;)V

    .line 316
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 320
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 321
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 320
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 321
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 322
    throw v0
.end method

.method public final extraCallback()V
    .locals 5

    .line 130
    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 131
    iget-object v0, p0, Lo/createView;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

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

    .line 134
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 135
    iget-object v2, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 4395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v2, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 138
    iget-object v2, p0, Lo/createView;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

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

    .line 137
    iget-object v3, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 138
    iget-object v3, p0, Lo/createView;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 6096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_1

    .line 6097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    :cond_1
    throw v2
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 11045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM campaigns WHERE id in ("

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 331
    invoke-static {v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 11339
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 11340
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 11341
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 338
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 340
    :cond_0
    invoke-interface {v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onNavigationEvent()V

    .line 346
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 347
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 11395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 350
    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 111
    iget-object v0, p0, Lo/createView;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 114
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 118
    :goto_0
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 2353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 120
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 121
    iget-object v1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 124
    iget-object v1, p0, Lo/createView;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 3096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_1

    .line 3097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 123
    iget-object v2, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 124
    iget-object v2, p0, Lo/createView;->extraCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 4096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 4097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    :cond_2
    throw v1
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM campaigns"

    const/4 v2, 0x0

    .line 208
    invoke-static {v0, v2}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 209
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 210
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 8323
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 8324
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 8328
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 212
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "expiry_time"

    .line 213
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "start_time"

    .line 214
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "starting_events"

    .line 215
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "total_fire_count"

    .line 216
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "priority"

    .line 217
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "data"

    .line 218
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 219
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 223
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 225
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    move-object v14, v12

    goto :goto_1

    .line 228
    :cond_0
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v14, v11

    .line 231
    :goto_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v15, v12

    goto :goto_2

    .line 234
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v15, v11

    .line 238
    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 239
    invoke-static {v11}, Lo/onNightModeChanged;->onPostMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 241
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 243
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v18, v12

    goto :goto_3

    .line 246
    :cond_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v18, v11

    .line 250
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 251
    invoke-static {v11}, Lo/onNightModeChanged;->onNavigationEvent(Ljava/lang/String;)Lclub/cred/interjection/data/models/DataCampaign;

    move-result-object v19

    .line 252
    new-instance v11, Lclub/cred/interjection/data/models/Campaign;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lclub/cred/interjection/data/models/Campaign;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Integer;Lclub/cred/interjection/data/models/DataCampaign;)V

    .line 253
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 258
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 257
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 258
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 259
    throw v0
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 99
    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

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

    .line 101
    :try_start_0
    iget-object v0, p0, Lo/createView;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->ICustomTabsCallback(Ljava/lang/Iterable;)V

    .line 102
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object p1, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 105
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lclub/cred/interjection/data/models/Campaign;
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM campaigns WHERE id = ? LIMIT 1"

    .line 145
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    if-nez p1, :cond_0

    .line 6234
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, v3, v0

    goto :goto_0

    .line 6251
    :cond_0
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x4

    aput v4, v3, v0

    .line 6252
    iget-object v3, v2, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v3, v0

    .line 152
    :goto_0
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 153
    iget-object v0, v1, Lo/createView;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 7323
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 7324
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 7328
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 155
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "expiry_time"

    .line 156
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "start_time"

    .line 157
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "starting_events"

    .line 158
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "total_fire_count"

    .line 159
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "priority"

    .line 160
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "data"

    .line 161
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 163
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 165
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 167
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v14, v11

    goto :goto_1

    .line 170
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v14, v0

    .line 173
    :goto_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v15, v11

    goto :goto_2

    .line 176
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v15, v0

    .line 180
    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lo/onNightModeChanged;->onPostMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 183
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 185
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    move-object/from16 v18, v11

    goto :goto_4

    .line 188
    :cond_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    .line 192
    :goto_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lo/onNightModeChanged;->onNavigationEvent(Ljava/lang/String;)Lclub/cred/interjection/data/models/DataCampaign;

    move-result-object v19

    .line 194
    new-instance v11, Lclub/cred/interjection/data/models/Campaign;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lclub/cred/interjection/data/models/Campaign;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Integer;Lclub/cred/interjection/data/models/DataCampaign;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 200
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-virtual {v2}, Lo/setRccState;->onNavigationEvent()V

    .line 202
    throw v0
.end method
