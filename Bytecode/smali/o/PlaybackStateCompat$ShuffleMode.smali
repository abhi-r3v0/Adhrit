.class public final Lo/PlaybackStateCompat$ShuffleMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;
    }
.end annotation


# static fields
.field static final onPostMessage:Ljava/lang/String;


# instance fields
.field ICustomTabsCallback:Lo/onDestroy;

.field private ICustomTabsCallback$Stub:Landroidx/work/WorkerParameters$extraCallback;

.field private ICustomTabsCallback$Stub$Proxy:Lo/getActions;

.field private ICustomTabsService:Lo/onPostResume;

.field private asBinder:Ljava/lang/String;

.field asInterface:Lo/getBatteryLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;

.field private extraCommand:Lo/findViewById;

.field private getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

.field private mayLaunchUrl:Ljava/lang/String;

.field private newSession:Lo/ActionBarActivity;

.field onMessageChannelReady:Lo/getSupportParentActivityIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportParentActivityIntent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Landroidx/work/ListenableWorker;

.field private onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Landroid/content/Context;

.field private postMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requestPostMessageChannel:Z

.field private updateVisuals:Lo/newIntentHandleExecutor;

.field private warmup:Landroidx/work/impl/WorkDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 75
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    new-instance v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 88
    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;

    .line 103
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->asInterface:Lo/getBatteryLevel;

    .line 112
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->extraCallback:Landroid/content/Context;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->onTransact:Landroid/content/Context;

    .line 113
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->ICustomTabsCallback:Lo/supportShouldUpRecreateTask;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    .line 114
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onPostMessage:Lo/ActionBarActivity;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->newSession:Lo/ActionBarActivity;

    .line 115
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    .line 116
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->asBinder:Ljava/util/List;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->onRelationshipValidationResult:Ljava/util/List;

    .line 117
    iget-object v1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onTransact:Landroidx/work/WorkerParameters$extraCallback;

    iput-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub:Landroidx/work/WorkerParameters$extraCallback;

    .line 118
    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    .line 120
    iget-object v0, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onMessageChannelReady:Lo/getActions;

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub$Proxy:Lo/getActions;

    .line 121
    iget-object p1, p1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onNavigationEvent:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 122
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object p1

    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    .line 123
    iget-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->asBinder()Lo/newIntentHandleExecutor;

    move-result-object p1

    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->updateVisuals:Lo/newIntentHandleExecutor;

    .line 124
    iget-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->onTransact()Lo/findViewById;

    move-result-object p1

    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCommand:Lo/findViewById;

    return-void
.end method

.method private asBinder()V
    .locals 6

    .line 531
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 17351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 17352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 17353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 17354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v0, 0x1

    .line 533
    :try_start_0
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lo/onPostResume;->onPostMessage(Ljava/lang/String;J)V

    .line 535
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;J)I

    .line 536
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 17395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 539
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 538
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 539
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    .line 540
    throw v1
.end method

.method private asInterface()V
    .locals 4

    .line 502
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 15351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 15352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 15353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 15354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v0, 0x0

    .line 504
    :try_start_0
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;

    check-cast v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    .line 15485
    iget-object v1, v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    .line 508
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lo/onPostResume;->extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Builder;)V

    .line 509
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 16395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 512
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 511
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 512
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    .line 513
    throw v1
.end method

.method private onMessageChannelReady()Z
    .locals 6

    .line 485
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 14351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 14352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 14353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 14354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 487
    :try_start_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v0

    .line 488
    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->onPostMessage(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 493
    :goto_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 14395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 496
    throw v0
.end method

.method private onNavigationEvent()V
    .locals 7

    .line 393
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v0

    .line 394
    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 395
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 397
    invoke-direct {p0, v2}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return-void

    .line 399
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v4, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 400
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 399
    invoke-virtual {v1, v4, v0, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 401
    invoke-direct {p0, v3}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/String;)V
    .locals 5

    .line 518
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 519
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    invoke-interface {v1, p1}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v1, v2, :cond_0

    .line 524
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->updateVisuals:Lo/newIntentHandleExecutor;

    invoke-interface {v1, p1}, Lo/newIntentHandleExecutor;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onPostMessage(Z)V
    .locals 4

    .line 427
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 13351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 13352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 13353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 13354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 435
    :try_start_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    invoke-interface {v0}, Lo/onPostResume;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onTransact:Landroid/content/Context;

    const-class v1, Lo/ResultReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/onTitleChanged;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 443
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;J)I

    .line 445
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->newSession:Lo/ActionBarActivity;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ActionBarActivity;->onPostMessage(Ljava/lang/String;)V

    .line 448
    :cond_2
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 13395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 452
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 450
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 451
    throw p1
.end method

.method private onPostMessage()Z
    .locals 6

    .line 411
    iget-boolean v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->requestPostMessageChannel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 412
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 413
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v2}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 13204
    :cond_0
    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v2, :cond_2

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v2, :cond_2

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 419
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return v3

    :cond_4
    return v1
.end method

.method private onTransact()V
    .locals 5

    .line 544
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 18351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 18352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 18353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 18354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v0, 0x0

    .line 550
    :try_start_0
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lo/onPostResume;->onPostMessage(Ljava/lang/String;J)V

    .line 551
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;J)I

    .line 554
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 18395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 557
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 556
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 557
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    .line 558
    throw v1
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 10

    .line 329
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_d

    .line 330
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 7351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 7352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 7353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 7354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 332
    :try_start_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ICustomTabsService()Lo/setContentView;

    move-result-object v1

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/setContentView;->extraCallback(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    goto/16 :goto_2

    .line 340
    :cond_0
    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_9

    .line 341
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;

    .line 7456
    instance-of v2, v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_5

    .line 7457
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v6, "Worker result SUCCESS for %s"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 7459
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    .line 7457
    invoke-virtual {v0, v2, v6, v7}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7460
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    .line 8179
    iget-wide v6, v0, Lo/onDestroy;->onRelationshipValidationResult:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7461
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onTransact()V

    goto/16 :goto_2

    .line 8562
    :cond_2
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 9351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 9352
    iget-object v2, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 9353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 9354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8564
    :try_start_1
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-interface {v0, v2, v4}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 8565
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;

    check-cast v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    .line 9430
    iget-object v0, v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;->onNavigationEvent:Lo/PlaybackStateCompat$Builder;

    .line 8568
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lo/onPostResume;->extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Builder;)V

    .line 8571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 8572
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->updateVisuals:Lo/newIntentHandleExecutor;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v2}, Lo/newIntentHandleExecutor;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8574
    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    invoke-interface {v6, v2}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v6

    sget-object v7, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->updateVisuals:Lo/newIntentHandleExecutor;

    .line 8575
    invoke-interface {v6, v2}, Lo/newIntentHandleExecutor;->onPostMessage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8576
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v6

    sget-object v7, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v8, "Setting status to enqueued for %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v1

    .line 8577
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Throwable;

    .line 8576
    invoke-virtual {v6, v7, v8, v9}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8578
    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    sget-object v7, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v2, v8, v1

    invoke-interface {v6, v7, v8}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 8579
    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    invoke-interface {v6, v2, v4, v5}, Lo/onPostResume;->onPostMessage(Ljava/lang/String;J)V

    goto :goto_1

    .line 8583
    :cond_4
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 10395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8585
    :try_start_2
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 8586
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 8585
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 8586
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V

    .line 8587
    throw v0

    .line 7466
    :cond_5
    instance-of v0, v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;

    if-eqz v0, :cond_6

    .line 7467
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v4, "Worker result RETRY for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 7469
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 7467
    invoke-virtual {v0, v2, v3, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7470
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asBinder()V

    goto :goto_2

    .line 7472
    :cond_6
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v6, "Worker result FAILURE for %s"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 7474
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    .line 7472
    invoke-virtual {v0, v2, v6, v7}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7475
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    .line 11179
    iget-wide v6, v0, Lo/onDestroy;->onRelationshipValidationResult:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 7476
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onTransact()V

    goto :goto_2

    .line 7478
    :cond_8
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asInterface()V

    goto :goto_2

    .line 11204
    :cond_9
    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v2, :cond_a

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v2, :cond_a

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v0, v2, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    if-nez v1, :cond_c

    .line 343
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asBinder()V

    .line 345
    :cond_c
    :goto_2
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 11395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 348
    throw v0

    .line 358
    :cond_d
    :goto_3
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 360
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)V

    goto :goto_4

    .line 362
    :cond_e
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub$Proxy:Lo/getActions;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->onRelationshipValidationResult:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public final extraCallback()V
    .locals 4

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->requestPostMessageChannel:Z

    .line 375
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage()Z

    .line 377
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asInterface:Lo/getBatteryLevel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 379
    invoke-interface {v1}, Lo/getBatteryLevel;->isDone()Z

    move-result v1

    .line 380
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->asInterface:Lo/getBatteryLevel;

    invoke-interface {v3, v0}, Lo/getBatteryLevel;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 383
    :goto_0
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 12247
    iput-boolean v0, v3, Landroidx/work/ListenableWorker;->ICustomTabsCallback:Z

    .line 12248
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->onMessageChannelReady()V

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    aput-object v1, v0, v2

    const-string v1, "WorkSpec %s is already done. Not interrupting."

    .line 387
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v3, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v0, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final run()V
    .locals 14

    .line 134
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->extraCommand:Lo/findViewById;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/findViewById;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->postMessage:Ljava/util/List;

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    .line 1592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 1593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 1600
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 1604
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    .line 2140
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2144
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onNavigationEvent()V

    .line 2146
    :try_start_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    if-nez v0, :cond_2

    .line 2148
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v3, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 2150
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 2148
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2151
    invoke-direct {p0, v5}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    .line 2157
    :cond_2
    :try_start_1
    iget-object v0, v0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v1, :cond_3

    .line 2158
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent()V

    .line 2159
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 2395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V

    .line 2160
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v4, v4, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 2161
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 2160
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    .line 2177
    :cond_3
    :try_start_2
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    .line 3179
    iget-wide v0, v0, Lo/onDestroy;->onRelationshipValidationResult:J

    const-wide/16 v3, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 2177
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    .line 3183
    iget-object v1, v0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v6, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v1, v6, :cond_5

    iget v0, v0, Lo/onDestroy;->getInterfaceDescriptor:I

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 2178
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2183
    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-wide v6, v6, Lo/onDestroy;->newSession:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_8

    .line 2184
    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    invoke-virtual {v6}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-gez v8, :cond_8

    .line 2185
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v3, "Delaying execution for %s because it is being executed before schedule."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v6, v6, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 2186
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 2185
    invoke-virtual {v0, v1, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2193
    invoke-direct {p0, v2}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2202
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    .line 2200
    :cond_8
    :try_start_3
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    .line 3395
    iget-object v0, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2202
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 2208
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    .line 4179
    iget-wide v0, v0, Lo/onDestroy;->onRelationshipValidationResult:J

    cmp-long v6, v0, v3

    if-eqz v6, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 2209
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v0, v0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    :goto_6
    move-object v8, v0

    goto :goto_7

    .line 2212
    :cond_a
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v0, v0, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 6061
    invoke-static {v0}, Lo/fromPlaybackState;->onNavigationEvent(Ljava/lang/String;)Lo/fromPlaybackState;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2216
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v3, v3, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2218
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asInterface()V

    return-void

    .line 2221
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v3, v3, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsService:Lo/onPostResume;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    invoke-interface {v3, v4}, Lo/onPostResume;->onTransact(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2224
    invoke-virtual {v0, v1}, Lo/fromPlaybackState;->onNavigationEvent(Ljava/util/List;)Lo/PlaybackStateCompat$Builder;

    move-result-object v0

    goto :goto_6

    .line 2227
    :goto_7
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->asBinder:Ljava/lang/String;

    .line 2228
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iget-object v9, p0, Lo/PlaybackStateCompat$ShuffleMode;->postMessage:Ljava/util/List;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub$Proxy:Lo/getActions;

    .line 6123
    iget-object v10, v1, Lo/getActions;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 2233
    iget-object v11, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub$Proxy:Lo/getActions;

    .line 6144
    iget-object v12, v1, Lo/getActions;->ICustomTabsCallback:Lo/PlaybackStateCompat$ErrorCode;

    .line 2235
    new-instance v1, Lo/setSupportProgressBarIndeterminate;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    invoke-direct {v1, v3, v4}, Lo/setSupportProgressBarIndeterminate;-><init>(Landroidx/work/impl/WorkDatabase;Lo/supportShouldUpRecreateTask;)V

    new-instance v13, Lo/onSupportNavigateUp;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->newSession:Lo/ActionBarActivity;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    invoke-direct {v13, v1, v3, v4}, Lo/onSupportNavigateUp;-><init>(Landroidx/work/impl/WorkDatabase;Lo/ActionBarActivity;Lo/supportShouldUpRecreateTask;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Lo/PlaybackStateCompat$Builder;Ljava/util/Collection;Ljava/util/concurrent/Executor;Lo/supportShouldUpRecreateTask;Lo/PlaybackStateCompat$ErrorCode;Lo/setTextDelegate$onMessageChannelReady;)V

    .line 2241
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_c

    .line 2242
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback$Stub$Proxy:Lo/getActions;

    .line 7144
    iget-object v1, v1, Lo/getActions;->ICustomTabsCallback:Lo/PlaybackStateCompat$ErrorCode;

    .line 2242
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->onTransact:Landroid/content/Context;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v4, v4, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0}, Lo/PlaybackStateCompat$ErrorCode;->extraCallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    .line 2248
    :cond_c
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_d

    .line 2249
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v3, v3, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Worker %s"

    .line 2250
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 2249
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2251
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asInterface()V

    return-void

    .line 7271
    :cond_d
    iget-boolean v0, v0, Landroidx/work/ListenableWorker;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_e

    .line 2256
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v3, v3, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 2257
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 2256
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2260
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->asInterface()V

    return-void

    .line 2263
    :cond_e
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    .line 7282
    iput-boolean v2, v0, Landroidx/work/ListenableWorker;->ICustomTabsCallback$Stub:Z

    .line 2267
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2268
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2272
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object v0

    .line 2274
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    invoke-interface {v1}, Lo/supportShouldUpRecreateTask;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/PlaybackStateCompat$ShuffleMode$3;

    invoke-direct {v2, p0, v0}, Lo/PlaybackStateCompat$ShuffleMode$3;-><init>(Lo/PlaybackStateCompat$ShuffleMode;Lo/getSupportParentActivityIntent;)V

    .line 2275
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2291
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->mayLaunchUrl:Ljava/lang/String;

    .line 2292
    new-instance v2, Lo/PlaybackStateCompat$ShuffleMode$5;

    invoke-direct {v2, p0, v0, v1}, Lo/PlaybackStateCompat$ShuffleMode$5;-><init>(Lo/PlaybackStateCompat$ShuffleMode;Lo/getSupportParentActivityIntent;Ljava/lang/String;)V

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->getInterfaceDescriptor:Lo/supportShouldUpRecreateTask;

    .line 2321
    invoke-interface {v1}, Lo/supportShouldUpRecreateTask;->onMessageChannelReady()Lo/onSupportActionModeFinished;

    move-result-object v1

    .line 2292
    invoke-virtual {v0, v2, v1}, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 2323
    :cond_f
    invoke-direct {p0}, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent()V

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 2202
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode;->warmup:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 2203
    throw v0

    :cond_10
    :goto_8
    return-void
.end method
