.class public final Lo/setStrokeAlpha;
.super Lo/getFillColor;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "SerialExecutor"

    invoke-direct {p0, v1, p1, v0}, Lo/getFillColor;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-super {p0, p1}, Lo/getFillColor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
