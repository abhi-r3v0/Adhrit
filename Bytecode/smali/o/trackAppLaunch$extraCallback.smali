.class final Lo/trackAppLaunch$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackAppLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trackAppLaunch$extraCallback$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:I

.field private final asInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field extraCallback:Lo/setDebugLog;

.field final synthetic onMessageChannelReady:Lo/trackAppLaunch;

.field onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback.onPostMessage;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/util/Pair<",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTransact:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/trackAppLaunch;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 217
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 218
    iput-object p2, p0, Lo/trackAppLaunch$extraCallback;->asInterface:Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized onMessageChannelReady()Z
    .locals 2

    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 404
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 405
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 408
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onPostMessage()Z
    .locals 2

    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 422
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 423
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 426
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onRelationshipValidationResult()Lo/getInstallVersion;
    .locals 3

    monitor-enter p0

    .line 438
    :try_start_0
    sget-object v0, Lo/getInstallVersion;->onMessageChannelReady:Lo/getInstallVersion;

    .line 439
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 440
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lo/setPreinstallAttribution;

    invoke-interface {v2}, Lo/setPreinstallAttribution;->asInterface()Lo/getInstallVersion;

    move-result-object v2

    invoke-static {v0, v2}, Lo/getInstallVersion;->extraCallback(Lo/getInstallVersion;Lo/getInstallVersion;)Lo/getInstallVersion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 442
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 397
    monitor-exit p0

    return-object v0

    .line 399
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/setDebugLog;->onNavigationEvent(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ICustomTabsCallback(Lo/trackAppLaunch$extraCallback$onPostMessage;Ljava/io/Closeable;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback.onPostMessage;TT;I)V"
        }
    .end annotation

    .line 478
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    if-eq v0, p1, :cond_0

    .line 481
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    iget-object p1, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 7554
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7557
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 485
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    .line 487
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v5, v4

    if-eqz v5, :cond_3

    .line 490
    iget-object v5, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    invoke-virtual {v5, p2}, Lo/trackAppLaunch;->onMessageChannelReady(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v5

    iput-object v5, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    .line 491
    iput p3, p0, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback$Stub:I

    goto :goto_2

    .line 493
    :cond_3
    iget-object v5, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->clear()V

    .line 494
    iget-object v5, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    iget-object v6, p0, Lo/trackAppLaunch$extraCallback;->asInterface:Ljava/lang/Object;

    invoke-virtual {v5, v6, p0}, Lo/trackAppLaunch;->extraCallback(Ljava/lang/Object;Lo/trackAppLaunch$extraCallback;)V

    .line 496
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 500
    monitor-enter v5

    if-ne v2, v4, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    .line 502
    :try_start_3
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lo/setPreinstallAttribution;

    .line 503
    invoke-interface {v6}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lo/setPreinstallAttribution;

    iget-object v8, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    .line 11040
    iget-object v8, v8, Lo/trackAppLaunch;->extraCallback:Ljava/lang/String;

    .line 504
    invoke-interface {v6, v7, v8, p1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    iget-object v6, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    if-eqz v6, :cond_5

    .line 506
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lo/setPreinstallAttribution;

    iget-object v7, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    .line 11353
    iget-object v7, v7, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    .line 506
    invoke-interface {v6, v7}, Lo/setPreinstallAttribution;->onMessageChannelReady(Ljava/util/Map;)V

    .line 508
    :cond_5
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lo/setPreinstallAttribution;

    iget-object v7, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    .line 12040
    iget-object v7, v7, Lo/trackAppLaunch;->onPostMessage:Ljava/lang/String;

    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    :cond_6
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lo/waitForCustomerUserId;

    invoke-interface {v6, p2, p3}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    .line 511
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v5

    throw p1

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    .line 496
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized extraCallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 432
    monitor-exit p0

    return-object v0

    .line 434
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onRelationshipValidationResult()Lo/getInstallVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setDebugLog;->onMessageChannelReady(Lo/getInstallVersion;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback(Lo/trackAppLaunch$extraCallback$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback.onPostMessage;)V"
        }
    .end annotation

    .line 516
    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    if-eq v0, p1, :cond_0

    .line 519
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 522
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    .line 523
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    .line 524
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 12554
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12557
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 525
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    .line 526
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    sget-object p1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-virtual {p0, p1}, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady(Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;)V

    return-void

    :catchall_0
    move-exception p1

    .line 526
    monitor-exit p0

    throw p1
.end method

.method final onMessageChannelReady(Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;)V
    .locals 14

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 361
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 364
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object p1, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->asInterface:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lo/trackAppLaunch;->extraCallback(Ljava/lang/Object;Lo/trackAppLaunch$extraCallback;)V

    .line 366
    monitor-exit p0

    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lo/setPreinstallAttribution;

    .line 370
    new-instance v13, Lo/setDebugLog;

    .line 372
    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v4

    .line 373
    invoke-interface {v0}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v6

    .line 375
    invoke-interface {v0}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v7

    .line 376
    invoke-interface {v0}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v8

    .line 377
    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady()Z

    move-result v9

    .line 378
    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onPostMessage()Z

    move-result v10

    .line 379
    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onRelationshipValidationResult()Lo/getInstallVersion;

    move-result-object v11

    .line 380
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    move-result-object v12

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lo/setDebugLog;-><init>(Lo/getHostPrefix;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    iput-object v13, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    .line 381
    invoke-interface {v0}, Lo/setPreinstallAttribution;->newSession()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13, v0}, Lo/setDebugLog;->onMessageChannelReady(Ljava/util/Map;)V

    .line 5023
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 383
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    const-string/jumbo v3, "started_as_prefetch"

    .line 5058
    sget-object v4, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3$2;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_6

    const/4 v1, 0x2

    if-eq v4, v1, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_4

    .line 5066
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized TriState value: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5064
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No boolean equivalent for UNSET"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v1, 0x0

    .line 384
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 5321
    sget-object v1, Lo/setDebugLog;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5322
    iget-object v0, v0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_7
    new-instance p1, Lo/trackAppLaunch$extraCallback$onPostMessage;

    invoke-direct {p1, p0, v2}, Lo/trackAppLaunch$extraCallback$onPostMessage;-><init>(Lo/trackAppLaunch$extraCallback;B)V

    iput-object p1, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    .line 388
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    .line 390
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    .line 6040
    iget-object v1, v1, Lo/trackAppLaunch;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    .line 391
    invoke-interface {v1, p1, v0}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void

    .line 4111
    :cond_8
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3111
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 390
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 414
    monitor-exit p0

    return-object v0

    .line 416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    .line 417
    invoke-direct {p0}, Lo/trackAppLaunch$extraCallback;->onPostMessage()Z

    move-result v1

    .line 416
    invoke-virtual {v0, v1}, Lo/setDebugLog;->extraCallback(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent(Lo/trackAppLaunch$extraCallback$onPostMessage;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback.onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 447
    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    if-eq v0, p1, :cond_0

    .line 450
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    iget-object p1, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 456
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->asInterface:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lo/trackAppLaunch;->extraCallback(Ljava/lang/Object;Lo/trackAppLaunch$extraCallback;)V

    .line 457
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 6554
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6557
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    .line 459
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 463
    monitor-enter v1

    .line 464
    :try_start_3
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lo/setPreinstallAttribution;

    .line 465
    invoke-interface {v2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lo/setPreinstallAttribution;

    iget-object v4, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    .line 7040
    iget-object v4, v4, Lo/trackAppLaunch;->extraCallback:Ljava/lang/String;

    .line 466
    invoke-interface {v2, v3, v4, p2, v0}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 467
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lo/waitForCustomerUserId;

    invoke-interface {v2, p2}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    .line 468
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 459
    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ")Z"
        }
    .end annotation

    .line 233
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    iget-object v2, p0, Lo/trackAppLaunch$extraCallback;->asInterface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lo/trackAppLaunch;->extraCallback(Ljava/lang/Object;)Lo/trackAppLaunch$extraCallback;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const/4 p1, 0x0

    .line 246
    monitor-exit p0

    return p1

    .line 248
    :cond_0
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p0}, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lo/trackAppLaunch$extraCallback;->extraCallback()Ljava/util/List;

    move-result-object v2

    .line 251
    invoke-virtual {p0}, Lo/trackAppLaunch$extraCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    .line 253
    iget v5, p0, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback:F

    .line 254
    iget v6, p0, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback$Stub:I

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 257
    invoke-static {v1}, Lo/setDebugLog;->ICustomTabsCallback(Ljava/util/List;)V

    .line 258
    invoke-static {v2}, Lo/setDebugLog;->onMessageChannelReady(Ljava/util/List;)V

    .line 259
    invoke-static {v3}, Lo/setDebugLog;->onPostMessage(Ljava/util/List;)V

    .line 261
    monitor-enter v0

    .line 263
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    :try_start_2
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onTransact:Ljava/io/Closeable;

    if-eq v4, v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 267
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    invoke-virtual {v1, v4}, Lo/trackAppLaunch;->onMessageChannelReady(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    .line 269
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-lez v1, :cond_3

    .line 273
    :try_start_3
    invoke-interface {p1, v5}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 275
    :cond_3
    invoke-interface {p1, v4, v6}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    .line 1554
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1557
    :try_start_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 278
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2291
    new-instance p1, Lo/trackAppLaunch$extraCallback$4;

    invoke-direct {p1, p0, v0}, Lo/trackAppLaunch$extraCallback$4;-><init>(Lo/trackAppLaunch$extraCallback;Landroid/util/Pair;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 269
    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 278
    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    .line 255
    monitor-exit p0

    throw p1
.end method
