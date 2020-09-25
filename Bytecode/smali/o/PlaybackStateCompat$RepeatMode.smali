.class public final Lo/PlaybackStateCompat$RepeatMode;
.super Lo/setErrorMessage;
.source ""


# static fields
.field private static asInterface:Lo/PlaybackStateCompat$RepeatMode;

.field private static final getInterfaceDescriptor:Ljava/lang/Object;

.field private static warmup:Lo/PlaybackStateCompat$RepeatMode;


# instance fields
.field public ICustomTabsCallback:Lo/getActions;

.field private ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

.field public asBinder:Lo/setSupportProgressBarVisibility;

.field public extraCallback:Landroidx/work/impl/WorkDatabase;

.field public onMessageChannelReady:Landroid/content/Context;

.field public onNavigationEvent:Lo/supportShouldUpRecreateTask;

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Z

.field public onTransact:Lo/getName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/getAction$onNavigationEvent;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 211
    invoke-direct {p0, p1, p2, p3, v0}, Lo/PlaybackStateCompat$RepeatMode;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Landroidx/work/impl/WorkDatabase;)V
    .locals 10

    .line 258
    invoke-direct {p0}, Lo/setErrorMessage;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    new-instance v1, Lo/setActiveQueueItemId$extraCallback;

    .line 2173
    iget v2, p2, Lo/getActions;->onTransact:I

    .line 260
    invoke-direct {v1, v2}, Lo/setActiveQueueItemId$extraCallback;-><init>(I)V

    invoke-static {v1}, Lo/setActiveQueueItemId;->extraCallback(Lo/setActiveQueueItemId;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 2745
    invoke-static {v0, p0}, Lo/getIcon;->onPostMessage(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lo/PlaybackStateCompatApi21$CustomAction;

    invoke-direct {v2, v0, p2, p3, p0}, Lo/PlaybackStateCompatApi21$CustomAction;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Lo/PlaybackStateCompat$RepeatMode;)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 2744
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 263
    new-instance v1, Lo/getName;

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lo/getName;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 3715
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3716
    iput-object p1, p0, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady:Landroid/content/Context;

    .line 3717
    iput-object p2, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 3718
    iput-object p3, p0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 3719
    iput-object p4, p0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 3720
    iput-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 3721
    iput-object v1, p0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 3722
    new-instance p2, Lo/setSupportProgressBarVisibility;

    invoke-direct {p2, p4}, Lo/setSupportProgressBarVisibility;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, Lo/PlaybackStateCompat$RepeatMode;->asBinder:Lo/setSupportProgressBarVisibility;

    .line 3723
    iput-boolean v3, p0, Lo/PlaybackStateCompat$RepeatMode;->onRelationshipValidationResult:Z

    .line 3726
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3727
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3731
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)V

    invoke-interface {p2, p3}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Z)V
    .locals 2

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    invoke-interface {p3}, Lo/supportShouldUpRecreateTask;->onMessageChannelReady()Lo/onSupportActionModeFinished;

    move-result-object v1

    .line 236
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->extraCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lo/PlaybackStateCompat$RepeatMode;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;
    .locals 7

    .line 140
    sget-object v0, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-static {}, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage()Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v1

    if-nez v1, :cond_5

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 144
    instance-of v1, p0, Lo/getActions$onPostMessage;

    if-eqz v1, :cond_4

    .line 145
    move-object v1, p0

    check-cast v1, Lo/getActions$onPostMessage;

    .line 147
    invoke-interface {v1}, Lo/getActions$onPostMessage;->ICustomTabsCallback()Lo/getActions;

    move-result-object v1

    .line 1175
    sget-object v2, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1176
    :try_start_1
    sget-object v3, Lo/PlaybackStateCompat$RepeatMode;->asInterface:Lo/PlaybackStateCompat$RepeatMode;

    if-eqz v3, :cond_1

    sget-object v3, Lo/PlaybackStateCompat$RepeatMode;->warmup:Lo/PlaybackStateCompat$RepeatMode;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1177
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1184
    :cond_1
    :goto_0
    sget-object v3, Lo/PlaybackStateCompat$RepeatMode;->asInterface:Lo/PlaybackStateCompat$RepeatMode;

    if-nez v3, :cond_3

    .line 1185
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1186
    sget-object v4, Lo/PlaybackStateCompat$RepeatMode;->warmup:Lo/PlaybackStateCompat$RepeatMode;

    if-nez v4, :cond_2

    .line 1187
    new-instance v4, Lo/PlaybackStateCompat$RepeatMode;

    new-instance v5, Lo/onVolumeChanged;

    .line 2133
    iget-object v6, v1, Lo/getActions;->extraCallback:Ljava/util/concurrent/Executor;

    .line 1190
    invoke-direct {v5, v6}, Lo/onVolumeChanged;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v4, v3, v1, v5}, Lo/PlaybackStateCompat$RepeatMode;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;)V

    sput-object v4, Lo/PlaybackStateCompat$RepeatMode;->warmup:Lo/PlaybackStateCompat$RepeatMode;

    .line 1192
    :cond_2
    sget-object v1, Lo/PlaybackStateCompat$RepeatMode;->warmup:Lo/PlaybackStateCompat$RepeatMode;

    sput-object v1, Lo/PlaybackStateCompat$RepeatMode;->asInterface:Lo/PlaybackStateCompat$RepeatMode;

    .line 1194
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-static {p0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1194
    monitor-exit v2

    throw p0

    .line 150
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception p0

    .line 158
    monitor-exit v0

    throw p0
.end method

.method private static onPostMessage()Lo/PlaybackStateCompat$RepeatMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    sget-object v0, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lo/PlaybackStateCompat$RepeatMode;->asInterface:Lo/PlaybackStateCompat$RepeatMode;

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lo/PlaybackStateCompat$RepeatMode;->asInterface:Lo/PlaybackStateCompat$RepeatMode;

    monitor-exit v0

    return-object v1

    .line 127
    :cond_0
    sget-object v1, Lo/PlaybackStateCompat$RepeatMode;->warmup:Lo/PlaybackStateCompat$RepeatMode;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lo/getActiveQueueItemId;Lo/fromCustomAction;)Lo/setActions;
    .locals 1

    .line 4423
    sget-object v0, Lo/getActiveQueueItemId;->onMessageChannelReady:Lo/getActiveQueueItemId;

    if-ne p2, v0, :cond_0

    .line 4424
    sget-object p2, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    goto :goto_0

    .line 4426
    :cond_0
    sget-object p2, Lo/PlaybackStateCompat$Actions;->onPostMessage:Lo/PlaybackStateCompat$Actions;

    .line 4428
    :goto_0
    new-instance v0, Lo/PlaybackStateCompatApi21;

    .line 4432
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lo/PlaybackStateCompatApi21;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)V

    .line 415
    invoke-virtual {v0}, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback()Lo/setActions;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/setActions;
    .locals 2

    .line 6176
    new-instance v0, Lo/supportRequestWindowFeature$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lo/supportRequestWindowFeature$2;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    .line 453
    iget-object p1, p0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    invoke-interface {p1, v0}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 7055
    iget-object p1, v0, Lo/supportRequestWindowFeature;->extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)Lo/setActions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$Actions;",
            "Ljava/util/List<",
            "Lo/setBufferedPosition;",
            ">;)",
            "Lo/setActions;"
        }
    .end annotation

    .line 401
    new-instance v0, Lo/PlaybackStateCompatApi21;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/PlaybackStateCompatApi21;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)V

    invoke-virtual {v0}, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback()Lo/setActions;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;)Lo/setActions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;)",
            "Lo/setActions;"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lo/PlaybackStateCompatApi21;

    invoke-direct {v0, p0, p1}, Lo/PlaybackStateCompatApi21;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/List;)V

    invoke-virtual {v0}, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback()Lo/setActions;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 7301
    iget-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady:Landroid/content/Context;

    .line 651
    invoke-static {v0}, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 7311
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 655
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    invoke-interface {v0}, Lo/onPostResume;->onPostMessage()I

    .line 7321
    iget-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 8311
    iget-object v1, p0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 8331
    iget-object v2, p0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 660
    invoke-static {v0, v1, v2}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 690
    sget-object v0, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iput-object p1, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

    .line 692
    iget-boolean v1, p0, Lo/PlaybackStateCompat$RepeatMode;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

    .line 696
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 670
    sget-object v0, Lo/PlaybackStateCompat$RepeatMode;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 671
    :try_start_0
    iput-boolean v1, p0, Lo/PlaybackStateCompat$RepeatMode;->onRelationshipValidationResult:Z

    .line 672
    iget-object v1, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 674
    iput-object v1, p0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback$Stub:Landroid/content/BroadcastReceiver$PendingResult;

    .line 676
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/setActions;
    .locals 1

    .line 5143
    new-instance v0, Lo/supportRequestWindowFeature$3;

    invoke-direct {v0, p0, p1}, Lo/supportRequestWindowFeature$3;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    invoke-interface {p1, v0}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 6055
    iget-object p1, v0, Lo/supportRequestWindowFeature;->extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;

    return-object p1
.end method
