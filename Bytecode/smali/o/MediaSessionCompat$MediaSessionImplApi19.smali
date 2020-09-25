.class final Lo/MediaSessionCompat$MediaSessionImplApi19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final extraCallback:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->extraCallback:Ljava/util/ArrayDeque;

    .line 38
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->extraCallback:Ljava/util/ArrayDeque;

    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi19$2;

    invoke-direct {v1, p0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi19$2;-><init>(Lo/MediaSessionCompat$MediaSessionImplApi19;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->onPostMessage:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lo/MediaSessionCompat$MediaSessionImplApi19;->onNavigationEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->extraCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->onPostMessage:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi19;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
