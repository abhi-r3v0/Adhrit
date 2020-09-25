.class public final Lo/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaMetadataCompatApi21$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;

.field public extraCallback:Lo/MediaMetadataCompatApi21$extraCallback;

.field public onMessageChannelReady:Z

.field public onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 2

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lo/MediaMetadataCompatApi21;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lo/MediaMetadataCompatApi21;->ICustomTabsCallback:Ljava/lang/Object;

    .line 144
    iget-boolean v1, p0, Lo/MediaMetadataCompatApi21;->onPostMessage:Z

    if-eqz v1, :cond_1

    .line 145
    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 148
    :cond_1
    iget-object v0, p0, Lo/MediaMetadataCompatApi21;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lo/MediaMetadataCompatApi21;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 71
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lo/MediaMetadataCompatApi21;->onPostMessage:Z

    .line 74
    iput-boolean v0, p0, Lo/MediaMetadataCompatApi21;->onMessageChannelReady:Z

    .line 75
    iget-object v0, p0, Lo/MediaMetadataCompatApi21;->extraCallback:Lo/MediaMetadataCompatApi21$extraCallback;

    .line 76
    iget-object v1, p0, Lo/MediaMetadataCompatApi21;->ICustomTabsCallback:Ljava/lang/Object;

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 81
    :try_start_1
    invoke-interface {v0}, Lo/MediaMetadataCompatApi21$extraCallback;->onMessageChannelReady()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    .line 84
    check-cast v1, Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 87
    :goto_1
    monitor-enter p0

    .line 88
    :try_start_2
    iput-boolean v2, p0, Lo/MediaMetadataCompatApi21;->onMessageChannelReady:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    throw v0

    :catchall_1
    move-exception v0

    .line 90
    monitor-exit p0

    throw v0

    .line 87
    :cond_2
    :goto_2
    monitor-enter p0

    .line 88
    :try_start_3
    iput-boolean v2, p0, Lo/MediaMetadataCompatApi21;->onMessageChannelReady:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_3
    move-exception v0

    .line 77
    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lo/MediaMetadataCompatApi21;->onPostMessage:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    throw v0
.end method
