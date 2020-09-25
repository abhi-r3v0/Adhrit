.class final Lo/MediaSessionCompat$MediaSessionImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$MediaSessionImpl;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onMessageChannelReady()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 414
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, v1, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    new-instance v2, Lo/IPostMessageService;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Lo/IPostMessageService;-><init>(Ljava/lang/String;)V

    .line 5323
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5324
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 5328
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v1

    .line 417
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 418
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, v1, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback$Stub:Lo/getDrawerToggleDelegate$onNavigationEvent;

    invoke-interface {v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 423
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 361
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 1111
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 366
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    .line 1343
    iget-object v5, v4, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 2234
    iget-object v5, v5, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    if-eqz v5, :cond_0

    .line 2235
    invoke-interface {v5}, Lo/MediaControllerCompatApi21$Callback;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1346
    :cond_1
    iget-boolean v5, v4, Lo/MediaSessionCompat$MediaSessionImpl;->extraCallback:Z

    if-nez v5, :cond_2

    .line 1348
    iget-object v5, v4, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 3189
    iget-object v5, v5, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    .line 1348
    invoke-interface {v5}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    .line 1350
    :cond_2
    iget-boolean v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->extraCallback:Z

    if-nez v4, :cond_3

    const-string v4, "ROOM"

    const-string v5, "database is not initialized even though it is open"

    .line 1351
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_4

    .line 401
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 370
    :cond_4
    :try_start_1
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_5

    .line 401
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 375
    :cond_5
    :try_start_2
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 3476
    iget-object v4, v4, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v4}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v4

    invoke-interface {v4}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_6

    .line 401
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 382
    :cond_6
    :try_start_3
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    iget-boolean v4, v4, Lo/setCurrentControllerInfo;->onMessageChannelReady:Z

    if-eqz v4, :cond_7

    .line 385
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 4189
    iget-object v4, v4, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    .line 385
    invoke-interface {v4}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v4

    .line 386
    invoke-interface {v4}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 388
    :try_start_4
    invoke-direct {p0}, Lo/MediaSessionCompat$MediaSessionImpl$2;->onMessageChannelReady()Ljava/util/Set;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    :try_start_5
    invoke-interface {v4}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    :try_start_6
    invoke-interface {v4}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    goto :goto_6

    :catchall_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v5, v1

    :goto_3
    invoke-interface {v4}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 392
    throw v6
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_5

    .line 394
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lo/MediaSessionCompat$MediaSessionImpl$2;->onMessageChannelReady()Ljava/util/Set;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    goto/16 :goto_a

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    :goto_4
    move-object v5, v1

    :goto_5
    :try_start_8
    const-string v6, "ROOM"

    const-string v7, "Cannot run invalidation tracker. Is the db closed?"

    .line 398
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 401
    :goto_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v5, :cond_e

    .line 403
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 404
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    monitor-enter v0

    .line 405
    :try_start_9
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl$2;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v4, v4, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;

    .line 4618
    iget-object v7, v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->ICustomTabsCallback:[I

    array-length v7, v7

    move-object v9, v1

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_c

    .line 4620
    iget-object v10, v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->ICustomTabsCallback:[I

    aget v10, v10, v8

    .line 4621
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-ne v7, v2, :cond_9

    .line 4624
    iget-object v9, v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onNavigationEvent:Ljava/util/Set;

    goto :goto_9

    :cond_9
    if-nez v9, :cond_a

    .line 4627
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 4629
    :cond_a
    iget-object v10, v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_8

    .line 4634
    iget-object v6, v6, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v6, v9}, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;->onMessageChannelReady(Ljava/util/Set;)V

    goto :goto_7

    .line 408
    :cond_d
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_e
    return-void

    .line 401
    :goto_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 402
    throw v1
.end method
