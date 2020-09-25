.class public final Lo/setSupportProgressBarIndeterminateVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    .line 36
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setSupportProgressBarIndeterminateVisibility;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 47
    iput-object p2, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lo/setSupportProgressBarIndeterminateVisibility;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 53
    iget-object v0, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 54
    iget-object v1, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1340
    iget-object v1, v1, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 55
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v2

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v3, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    .line 1353
    iget-object v4, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v4, v3}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v3}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 58
    :try_start_0
    iget-object v3, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lo/getName;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result v1

    .line 60
    iget-boolean v3, p0, Lo/setSupportProgressBarIndeterminateVisibility;->ICustomTabsCallback:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 61
    iget-object v1, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 2340
    iget-object v1, v1, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 62
    iget-object v2, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v1}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v1, v3, :cond_1

    .line 67
    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-interface {v2, v1, v3}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-object v1, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 3340
    iget-object v1, v1, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 72
    iget-object v2, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Lo/getName;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v1

    .line 76
    :goto_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v3, Lo/setSupportProgressBarIndeterminateVisibility;->onPostMessage:Ljava/lang/String;

    const-string v6, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lo/setSupportProgressBarIndeterminateVisibility;->onMessageChannelReady:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v4

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 76
    invoke-virtual {v2, v3, v1, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3395
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 86
    throw v1
.end method
