.class public Lo/onRetainNonConfigurationInstance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/picasso/Picasso$ICustomTabsCallback;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final extraCallback:Lo/onRetainCustomNonConfigurationInstance;

.field private final onNavigationEvent:Landroid/app/job/JobScheduler;

.field private final onPostMessage:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 56
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Lo/onRetainCustomNonConfigurationInstance;

    invoke-direct {v1, p1}, Lo/onRetainCustomNonConfigurationInstance;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1, p2, v0, v1}, Lo/onRetainNonConfigurationInstance;-><init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Landroid/app/job/JobScheduler;Lo/onRetainCustomNonConfigurationInstance;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Landroid/app/job/JobScheduler;Lo/onRetainCustomNonConfigurationInstance;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 78
    iput-object p3, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    .line 79
    iput-object p4, p0, Lo/onRetainNonConfigurationInstance;->extraCallback:Lo/onRetainCustomNonConfigurationInstance;

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 341
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 331
    invoke-static {v0}, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p0, v0}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 249
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 251
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lo/onRetainNonConfigurationInstance;->onNavigationEvent(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)V
    .locals 3

    const-string v0, "jobscheduler"

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 268
    invoke-static {p0, v0}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 269
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 271
    invoke-static {v1}, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lo/onRetainNonConfigurationInstance;->onNavigationEvent(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(Landroid/app/job/JobScheduler;I)V
    .locals 6

    .line 228
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 231
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 232
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 231
    invoke-virtual {v0, v1, p1, v2}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method private static onPostMessage(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 288
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 291
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 303
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 211
    iget-object v2, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Lo/onRetainNonConfigurationInstance;->onNavigationEvent(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 9311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 216
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object v0

    .line 217
    invoke-interface {v0, p1}, Lo/setTheme;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs onMessageChannelReady([Lo/onDestroy;)V
    .locals 10

    .line 84
    iget-object v0, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 1311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 85
    new-instance v1, Lo/supportInvalidateOptionsMenu;

    invoke-direct {v1, v0}, Lo/supportInvalidateOptionsMenu;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 87
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p1, v4

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v6, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v6}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v6

    .line 1353
    iget-object v7, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v7, v6}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v6}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 90
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v6

    iget-object v7, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v6, v7}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Skipping scheduling "

    if-nez v6, :cond_0

    .line 92
    :try_start_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v6

    sget-object v8, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v5, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v5}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v5

    invoke-interface {v5}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_1
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    goto/16 :goto_4

    .line 101
    :cond_0
    :try_start_2
    iget-object v6, v6, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v8, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v6, v8, :cond_1

    .line 102
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v6

    sget-object v8, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    iget-object v5, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v5}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v5

    invoke-interface {v5}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object v6

    iget-object v7, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 114
    invoke-interface {v6, v7}, Lo/setTheme;->extraCallback(Ljava/lang/String;)Lo/getSupportActionBar;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 116
    iget v7, v6, Lo/getSupportActionBar;->onMessageChannelReady:I

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 3321
    iget-object v7, v7, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 4187
    iget v7, v7, Lo/getActions;->onRelationshipValidationResult:I

    .line 117
    iget-object v8, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 4321
    iget-object v8, v8, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 5201
    iget v8, v8, Lo/getActions;->ICustomTabsCallback$Stub:I

    .line 116
    invoke-virtual {v1, v7, v8}, Lo/supportInvalidateOptionsMenu;->onPostMessage(II)I

    move-result v7

    :goto_2
    if-nez v6, :cond_3

    .line 121
    new-instance v6, Lo/getSupportActionBar;

    iget-object v8, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lo/getSupportActionBar;-><init>(Ljava/lang/String;I)V

    .line 122
    iget-object v8, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 5311
    iget-object v8, v8, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 123
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object v8

    .line 124
    invoke-interface {v8, v6}, Lo/setTheme;->onPostMessage(Lo/getSupportActionBar;)V

    .line 127
    :cond_3
    invoke-virtual {p0, v5, v7}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Lo/onDestroy;I)V

    .line 134
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v6, v8, :cond_6

    .line 137
    iget-object v6, p0, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v8, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    iget-object v9, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 146
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 152
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_3

    .line 155
    :cond_5
    iget-object v6, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 5321
    iget-object v6, v6, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 6187
    iget v6, v6, Lo/getActions;->onRelationshipValidationResult:I

    .line 156
    iget-object v7, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 6321
    iget-object v7, v7, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 7201
    iget v7, v7, Lo/getActions;->ICustomTabsCallback$Stub:I

    .line 155
    invoke-virtual {v1, v6, v7}, Lo/supportInvalidateOptionsMenu;->onPostMessage(II)I

    move-result v6

    .line 159
    :goto_3
    invoke-virtual {p0, v5, v6}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Lo/onDestroy;I)V

    .line 7395
    :cond_6
    iget-object v5, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v5}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v5

    invoke-interface {v5}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 164
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 165
    throw p1

    :cond_7
    return-void
.end method

.method public onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPostMessage(Lo/onDestroy;I)V
    .locals 7

    .line 176
    iget-object v0, p0, Lo/onRetainNonConfigurationInstance;->extraCallback:Lo/onRetainCustomNonConfigurationInstance;

    invoke-virtual {v0, p1, p2}, Lo/onRetainCustomNonConfigurationInstance;->ICustomTabsCallback(Lo/onDestroy;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 177
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string p2, "Scheduling work ID %s Job ID %s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v4, v6, [Ljava/lang/Throwable;

    .line 177
    invoke-virtual {v1, v2, p2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 181
    :try_start_0
    iget-object p2, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 202
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const-string p1, "Unable to schedule %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v5, [Ljava/lang/Throwable;

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, p1, v2}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 185
    iget-object p2, p0, Lo/onRetainNonConfigurationInstance;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v0, p0, Lo/onRetainNonConfigurationInstance;->onNavigationEvent:Landroid/app/job/JobScheduler;

    invoke-static {p2, v0}, Lo/onRetainNonConfigurationInstance;->onPostMessage(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 186
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    iget-object p2, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 8311
    iget-object p2, p2, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 193
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object p2

    invoke-interface {p2}, Lo/onPostResume;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    iget-object p2, p0, Lo/onRetainNonConfigurationInstance;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 8321
    iget-object p2, p2, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 9216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v2, v4, :cond_1

    .line 9217
    iget p2, p2, Lo/getActions;->asInterface:I

    div-int/2addr p2, v3

    goto :goto_1

    .line 9219
    :cond_1
    iget p2, p2, Lo/getActions;->asInterface:I

    .line 194
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 188
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
