.class final Lo/ensureClassLoader$3;
.super Lo/ensureClassLoader$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureClassLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ensureClassLoader$onNavigationEvent<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ensureClassLoader;


# direct methods
.method constructor <init>(Lo/ensureClassLoader;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    invoke-direct {p0}, Lo/ensureClassLoader$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    iget-object v0, v0, Lo/ensureClassLoader;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 139
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    iget-object v0, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    invoke-virtual {v0}, Lo/ensureClassLoader;->extraCallback()Ljava/lang/Object;

    move-result-object v3

    .line 142
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    .line 1183
    invoke-static {}, Lo/ensureClassLoader;->onPostMessage()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lo/ensureClassLoader$ICustomTabsCallback;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-direct {v5, v0, v6}, Lo/ensureClassLoader$ICustomTabsCallback;-><init>(Lo/ensureClassLoader;[Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 144
    :try_start_1
    iget-object v4, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    iget-object v4, v4, Lo/ensureClassLoader;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 147
    iget-object v4, p0, Lo/ensureClassLoader$3;->onMessageChannelReady:Lo/ensureClassLoader;

    .line 2183
    invoke-static {}, Lo/ensureClassLoader;->onPostMessage()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lo/ensureClassLoader$ICustomTabsCallback;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-direct {v6, v4, v7}, Lo/ensureClassLoader$ICustomTabsCallback;-><init>(Lo/ensureClassLoader;[Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2185
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    throw v0
.end method
