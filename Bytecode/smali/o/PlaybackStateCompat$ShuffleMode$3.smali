.class final Lo/PlaybackStateCompat$ShuffleMode$3;
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
.field final synthetic ICustomTabsCallback:Lo/getSupportParentActivityIntent;

.field final synthetic onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;


# direct methods
.method constructor <init>(Lo/PlaybackStateCompat$ShuffleMode;Lo/getSupportParentActivityIntent;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;

    iput-object p2, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->ICustomTabsCallback:Lo/getSupportParentActivityIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 279
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompat$ShuffleMode;->onPostMessage:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v4, v4, Lo/PlaybackStateCompat$ShuffleMode;->ICustomTabsCallback:Lo/onDestroy;

    iget-object v4, v4, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 281
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v1, v1, Lo/PlaybackStateCompat$ShuffleMode;->onNavigationEvent:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->ICustomTabsCallback()Lo/getBatteryLevel;

    move-result-object v1

    iput-object v1, v0, Lo/PlaybackStateCompat$ShuffleMode;->asInterface:Lo/getBatteryLevel;

    .line 282
    iget-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->ICustomTabsCallback:Lo/getSupportParentActivityIntent;

    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->onPostMessage:Lo/PlaybackStateCompat$ShuffleMode;

    iget-object v1, v1, Lo/PlaybackStateCompat$ShuffleMode;->asInterface:Lo/getBatteryLevel;

    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->extraCallback(Lo/getBatteryLevel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 284
    iget-object v1, p0, Lo/PlaybackStateCompat$ShuffleMode$3;->ICustomTabsCallback:Lo/getSupportParentActivityIntent;

    invoke-virtual {v1, v0}, Lo/getSupportParentActivityIntent;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    return-void
.end method
