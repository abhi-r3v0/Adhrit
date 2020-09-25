.class final Lo/PlaybackStateCompat$ShuffleMode$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$ShuffleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

.field final synthetic onMessageChannelReady:Lo/getSupportParentActivityIntent;

.field final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/PlaybackStateCompat$ShuffleMode;Lo/getSupportParentActivityIntent;Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    iput-object p2, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    iput-object p3, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    :try_start_0
    iget-object v2, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    invoke-virtual {v2}, Lo/onCreateSupportNavigateUpTaskStack;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/ListenableWorker$ICustomTabsCallback;

    if-nez v2, :cond_0

    .line 300
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v3, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v4, "%s returned a null result. Treating it as a failure."

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v6, v6, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v6, v6, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v5, "%s returned a %s result."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v7, v7, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v7, v7, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 306
    iget-object v3, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    iput-object v2, v3, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback:Landroidx/work/ListenableWorker$ICustomTabsCallback;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    invoke-virtual {v0}, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 314
    :goto_1
    :try_start_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v5, "%s failed because it threw an exception/error"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->onPostMessage:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 315
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 314
    invoke-virtual {v3, v4, v5, v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 311
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v5, "%s was cancelled"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->onPostMessage:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :goto_2
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode$5;->ICustomTabsCallback:Lo/PlaybackStateCompat$ShuffleMode;

    invoke-virtual {v1}, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback()V

    .line 319
    throw v0
.end method
