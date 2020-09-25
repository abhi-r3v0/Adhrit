.class final Lo/ReferredPersonData;
.super Lo/setStatementDate;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lo/setStatementDate$onPostMessage;",
            "Lo/ReferredPendingPersonResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:J

.field private final extraCallback:J

.field private final onMessageChannelReady:Landroid/os/Handler;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/findSameItem$extraCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/setStatementDate;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ReferredPersonData;->onNavigationEvent:Landroid/content/Context;

    .line 4
    new-instance v0, Lo/getActivityToLaunchOnFinish;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lo/getActivityToLaunchOnFinish;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/ReferredPersonData;->onMessageChannelReady:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object p1

    iput-object p1, p0, Lo/ReferredPersonData;->onPostMessage:Lo/findSameItem$extraCallback;

    const-wide/16 v0, 0x1388

    .line 6
    iput-wide v0, p0, Lo/ReferredPersonData;->extraCallback:J

    const-wide/32 v0, 0x493e0

    .line 7
    iput-wide v0, p0, Lo/ReferredPersonData;->asBinder:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ReferredPersonData;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lo/ReferredPersonData;->asBinder:J

    return-wide v0
.end method

.method static synthetic extraCallback(Lo/ReferredPersonData;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/ReferredPersonData;->onNavigationEvent:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/ReferredPersonData;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/ReferredPersonData;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/ReferredPersonData;->onMessageChannelReady:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/ReferredPersonData;)Lo/findSameItem$extraCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lo/ReferredPersonData;->onPostMessage:Lo/findSameItem$extraCallback;

    return-object p0
.end method


# virtual methods
.method protected final extraCallback(Lo/setStatementDate$onPostMessage;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ServiceConnection must not be null"

    .line 9
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ReferredPendingPersonResponse;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lo/ReferredPendingPersonResponse;

    invoke-direct {v1, p0, p1}, Lo/ReferredPendingPersonResponse;-><init>(Lo/ReferredPersonData;Lo/setStatementDate$onPostMessage;)V

    .line 17
    invoke-virtual {v1, p2, p2, p3}, Lo/ReferredPendingPersonResponse;->ICustomTabsCallback(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p3}, Lo/ReferredPendingPersonResponse;->extraCallback(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lo/ReferredPersonData;->onMessageChannelReady:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v1, p2}, Lo/ReferredPendingPersonResponse;->extraCallback(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 23
    invoke-virtual {v1, p2, p2, p3}, Lo/ReferredPendingPersonResponse;->ICustomTabsCallback(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lo/ReferredPendingPersonResponse;->onPostMessage()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1, p3}, Lo/ReferredPendingPersonResponse;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v1}, Lo/ReferredPendingPersonResponse;->onNavigationEvent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lo/ReferredPendingPersonResponse;->onMessageChannelReady()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 28
    :goto_0
    invoke-virtual {v1}, Lo/ReferredPendingPersonResponse;->ICustomTabsCallback()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 22
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    iget-object v0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/setStatementDate$onPostMessage;

    .line 54
    iget-object v2, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ReferredPendingPersonResponse;

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v2}, Lo/ReferredPendingPersonResponse;->onPostMessage()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    const-string v3, "GmsClientSupervisor"

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    invoke-virtual {v2}, Lo/ReferredPendingPersonResponse;->onNavigationEvent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 59
    invoke-virtual {p1}, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback()Landroid/content/ComponentName;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    .line 61
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lo/setStatementDate$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-virtual {v2, v3}, Lo/ReferredPendingPersonResponse;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 63
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 43
    :cond_4
    iget-object v0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/setStatementDate$onPostMessage;

    .line 45
    iget-object v2, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ReferredPendingPersonResponse;

    if-eqz v2, :cond_6

    .line 46
    invoke-virtual {v2}, Lo/ReferredPendingPersonResponse;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v2}, Lo/ReferredPendingPersonResponse;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GmsClientSupervisor"

    .line 48
    invoke-virtual {v2, v3}, Lo/ReferredPendingPersonResponse;->onNavigationEvent(Ljava/lang/String;)V

    .line 49
    :cond_5
    iget-object v2, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_6
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method protected final onPostMessage(Lo/setStatementDate$onPostMessage;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceConnection must not be null"

    .line 30
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lo/ReferredPersonData;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ReferredPendingPersonResponse;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1, p2}, Lo/ReferredPendingPersonResponse;->extraCallback(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v1, p2, p3}, Lo/ReferredPendingPersonResponse;->extraCallback(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lo/ReferredPendingPersonResponse;->extraCallback()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    iget-object p2, p0, Lo/ReferredPersonData;->onMessageChannelReady:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lo/ReferredPersonData;->onMessageChannelReady:Landroid/os/Handler;

    iget-wide v1, p0, Lo/ReferredPersonData;->extraCallback:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    .line 36
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
