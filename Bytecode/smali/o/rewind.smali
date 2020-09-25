.class public Lo/rewind;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompat;


# instance fields
.field private transient extraCallback:Lo/getPlaybackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    if-nez v0, :cond_0

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 75
    :cond_0
    monitor-exit p0

    .line 76
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo/setRepeatMode;->ICustomTabsCallback(Ljava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    throw v0
.end method

.method public final ICustomTabsCallback(Lo/MediaControllerCompat$ICustomTabsCallback;)V
    .locals 1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lo/getPlaybackInfo;

    invoke-direct {v0}, Lo/getPlaybackInfo;-><init>()V

    iput-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    .line 37
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    invoke-virtual {v0, p1}, Lo/setRepeatMode;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage()V
    .locals 2

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    if-nez v0, :cond_0

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 59
    :cond_0
    monitor-exit p0

    .line 60
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lo/setRepeatMode;->ICustomTabsCallback(Ljava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage(Lo/MediaControllerCompat$ICustomTabsCallback;)V
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    if-nez v0, :cond_0

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    iget-object v0, p0, Lo/rewind;->extraCallback:Lo/getPlaybackInfo;

    invoke-virtual {v0, p1}, Lo/setRepeatMode;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0

    throw p1
.end method
