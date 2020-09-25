.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source ""


# instance fields
.field private volatile ICustomTabsCallback$Stub:Lo/onPostResume;

.field private volatile ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

.field private volatile asBinder:Lo/findViewById;

.field private volatile asInterface:Lo/newIntentHandleExecutor;

.field private volatile newSession:Lo/attachBaseContext;

.field private volatile onTransact:Lo/setTheme;

.field private volatile warmup:Lo/onConfigurationChanged;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asBinder(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asInterface(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Landroidx/work/impl/WorkDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Landroidx/work/impl/WorkDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    return-object p1
.end method

.method static synthetic onRelationshipValidationResult(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub()Lo/setTheme;
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->onTransact:Lo/setTheme;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->onTransact:Lo/setTheme;

    return-object v0

    .line 345
    :cond_0
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->onTransact:Lo/setTheme;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lo/setSupportActionBar;

    invoke-direct {v0, p0}, Lo/setSupportActionBar;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->onTransact:Lo/setTheme;

    .line 349
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->onTransact:Lo/setTheme;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 350
    monitor-exit p0

    throw v0
.end method

.method public final ICustomTabsService()Lo/setContentView;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

    return-object v0

    .line 373
    :cond_0
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Lo/getMenuInflater;

    invoke-direct {v0, p0}, Lo/getMenuInflater;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

    .line 377
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:Lo/setContentView;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 378
    monitor-exit p0

    throw v0
.end method

.method public final asBinder()Lo/newIntentHandleExecutor;
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asInterface:Lo/newIntentHandleExecutor;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asInterface:Lo/newIntentHandleExecutor;

    return-object v0

    .line 317
    :cond_0
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asInterface:Lo/newIntentHandleExecutor;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Lo/newNetworkIOExecutor;

    invoke-direct {v0, p0}, Lo/newNetworkIOExecutor;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asInterface:Lo/newIntentHandleExecutor;

    .line 321
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asInterface:Lo/newIntentHandleExecutor;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 322
    monitor-exit p0

    throw v0
.end method

.method public final asInterface()Lo/onPostResume;
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub:Lo/onPostResume;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub:Lo/onPostResume;

    return-object v0

    .line 303
    :cond_0
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub:Lo/onPostResume;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Lo/onStart;

    invoke-direct {v0, p0}, Lo/onStart;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub:Lo/onPostResume;

    .line 307
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->ICustomTabsCallback$Stub:Lo/onPostResume;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 308
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;
    .locals 10

    .line 260
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 262
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImpl;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lo/MediaSessionCompat$MediaSessionImpl;-><init>(Lo/setCurrentControllerInfo;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final newSession()Lo/attachBaseContext;
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->newSession:Lo/attachBaseContext;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->newSession:Lo/attachBaseContext;

    return-object v0

    .line 387
    :cond_0
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->newSession:Lo/attachBaseContext;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Lo/onPostCreate;

    invoke-direct {v0, p0}, Lo/onPostCreate;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->newSession:Lo/attachBaseContext;

    .line 391
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->newSession:Lo/attachBaseContext;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 392
    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
    .locals 4

    .line 61
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplApi18;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$3;

    invoke-direct {v1, p0}, Landroidx/work/impl/WorkDatabase_Impl$3;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    const-string v2, "cf029002fffdcadf079e8d0a1c9a70ac"

    const-string v3, "8aff2efc47fafe870c738f727dfcfc6e"

    invoke-direct {v0, p1, v1, v2, v3}, Lo/MediaSessionCompat$MediaSessionImplApi18;-><init>(Lo/onAddQueueItem;Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p1, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    .line 1351
    new-instance v2, Lo/update$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v2, v1}, Lo/update$onNavigationEvent$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object v1, p1, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 1402
    iput-object v1, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 1412
    iput-object v0, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/update$onPostMessage;

    .line 253
    invoke-virtual {v2}, Lo/update$onNavigationEvent$onMessageChannelReady;->onPostMessage()Lo/update$onNavigationEvent;

    move-result-object v0

    .line 254
    iget-object p1, p1, Lo/onAddQueueItem;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/update$ICustomTabsCallback;->onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Lo/findViewById;
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asBinder:Lo/findViewById;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asBinder:Lo/findViewById;

    return-object v0

    .line 331
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asBinder:Lo/findViewById;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lo/onMenuItemSelected;

    invoke-direct {v0, p0}, Lo/onMenuItemSelected;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asBinder:Lo/findViewById;

    .line 335
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->asBinder:Lo/findViewById;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 336
    monitor-exit p0

    throw v0
.end method

.method public final warmup()Lo/onConfigurationChanged;
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->warmup:Lo/onConfigurationChanged;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->warmup:Lo/onConfigurationChanged;

    return-object v0

    .line 359
    :cond_0
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->warmup:Lo/onConfigurationChanged;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Lo/addContentView;

    invoke-direct {v0, p0}, Lo/addContentView;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->warmup:Lo/onConfigurationChanged;

    .line 363
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->warmup:Lo/onConfigurationChanged;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 364
    monitor-exit p0

    throw v0
.end method
