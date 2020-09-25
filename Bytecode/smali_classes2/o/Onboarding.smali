.class public final Lo/Onboarding;
.super Lo/getMinidumpFile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getMinidumpFile<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getDeviceFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDeviceFile<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/lang/Exception;

.field private onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getMinidumpFile;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    new-instance v0, Lo/getDeviceFile;

    invoke-direct {v0}, Lo/getDeviceFile;-><init>()V

    iput-object v0, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    invoke-virtual {v0, p0}, Lo/getDeviceFile;->extraCallback(Lo/getMinidumpFile;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Onboarding;->extraCallback:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ICustomTabsCallback(Lo/getAppFile;)Lo/getMinidumpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAppFile<",
            "-TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation

    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lo/getMinidumpFile;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getAppFile;)Lo/getMinidumpFile;

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    iput-object p1, p0, Lo/Onboarding;->onMessageChannelReady:Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    invoke-virtual {p1, p0}, Lo/getDeviceFile;->extraCallback(Lo/getMinidumpFile;)V

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    const-string v2, "Task is not yet complete"

    if-eqz v1, :cond_1

    .line 2000
    iget-object v1, p0, Lo/Onboarding;->extraCallback:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/Onboarding;->onMessageChannelReady:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final extraCallback(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 3000
    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    if-eqz v1, :cond_0

    .line 4000
    iput-boolean v2, p0, Lo/Onboarding;->onPostMessage:Z

    iput-object p1, p0, Lo/Onboarding;->onMessageChannelReady:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    invoke-virtual {p1, p0}, Lo/getDeviceFile;->extraCallback(Lo/getMinidumpFile;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Exception;)Z
    .locals 2

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    iput-object p1, p0, Lo/Onboarding;->extraCallback:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    invoke-virtual {p1, p0}, Lo/getDeviceFile;->extraCallback(Lo/getMinidumpFile;)V

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 5000
    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    if-eqz v1, :cond_0

    .line 6000
    iput-boolean v2, p0, Lo/Onboarding;->onPostMessage:Z

    iput-object p1, p0, Lo/Onboarding;->extraCallback:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    invoke-virtual {p1, p0}, Lo/getDeviceFile;->extraCallback(Lo/getMinidumpFile;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getAppFile;)Lo/getMinidumpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getAppFile<",
            "-TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    new-instance v1, Lo/getMetadataFile;

    invoke-direct {v1, p1, p2}, Lo/getMetadataFile;-><init>(Ljava/util/concurrent/Executor;Lo/getAppFile;)V

    invoke-virtual {v0, v1}, Lo/getDeviceFile;->ICustomTabsCallback(Lo/NativeSessionFileProvider;)V

    invoke-direct {p0}, Lo/Onboarding;->onMessageChannelReady()V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getLogger;)Lo/getMinidumpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getLogger;",
            ")",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    new-instance v1, Lo/getBinaryImagesFile;

    invoke-direct {v1, p1, p2}, Lo/getBinaryImagesFile;-><init>(Ljava/util/concurrent/Executor;Lo/getLogger;)V

    invoke-virtual {v0, v1}, Lo/getDeviceFile;->ICustomTabsCallback(Lo/NativeSessionFileProvider;)V

    invoke-direct {p0}, Lo/Onboarding;->onMessageChannelReady()V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/MissingNativeComponent$1;)Lo/getMinidumpFile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MissingNativeComponent$1<",
            "TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation

    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/Onboarding;->ICustomTabsCallback:Lo/getDeviceFile;

    new-instance v2, Lo/getSessionFile;

    invoke-direct {v2, v0, p1}, Lo/getSessionFile;-><init>(Ljava/util/concurrent/Executor;Lo/MissingNativeComponent$1;)V

    invoke-virtual {v1, v2}, Lo/getDeviceFile;->ICustomTabsCallback(Lo/NativeSessionFileProvider;)V

    invoke-direct {p0}, Lo/Onboarding;->onMessageChannelReady()V

    return-object p0
.end method

.method public final onNavigationEvent()Z
    .locals 3

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/Onboarding;->extraCallback:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage()Z
    .locals 2

    iget-object v0, p0, Lo/Onboarding;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/Onboarding;->onPostMessage:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
