.class final Lo/getDeviceFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/Object;

.field private onMessageChannelReady:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/NativeSessionFileProvider<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getDeviceFile;->extraCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/NativeSessionFileProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NativeSessionFileProvider<",
            "TResultT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getDeviceFile;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getDeviceFile;->onMessageChannelReady:Ljava/util/Queue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lo/getDeviceFile;->onMessageChannelReady:Ljava/util/Queue;

    :cond_0
    iget-object v1, p0, Lo/getDeviceFile;->onMessageChannelReady:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Lo/getMinidumpFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinidumpFile<",
            "TResultT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getDeviceFile;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getDeviceFile;->onMessageChannelReady:Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/getDeviceFile;->onPostMessage:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/getDeviceFile;->onPostMessage:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lo/getDeviceFile;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lo/getDeviceFile;->onMessageChannelReady:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/NativeSessionFileProvider;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/getDeviceFile;->onPostMessage:Z

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1, p1}, Lo/NativeSessionFileProvider;->onPostMessage(Lo/getMinidumpFile;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
