.class final Lo/getRccTransportControlFlagsFromActions$1;
.super Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRccTransportControlFlagsFromActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;


# direct methods
.method constructor <init>(Lo/getRccTransportControlFlagsFromActions;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    invoke-direct {p0}, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/MediaSessionCompat$Callback$StubApi21;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v1, v1, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v2, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget v3, v2, Lo/getRccTransportControlFlagsFromActions;->onPostMessage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo/getRccTransportControlFlagsFromActions;->onPostMessage:I

    .line 73
    iget-object v2, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v2, v2, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object p1, p1, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v1

    return v3

    .line 77
    :cond_1
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget p2, p1, Lo/getRccTransportControlFlagsFromActions;->onPostMessage:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/getRccTransportControlFlagsFromActions;->onPostMessage:I

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v1

    throw p1
.end method

.method public final onMessageChannelReady(I[Ljava/lang/String;)V
    .locals 7

    .line 99
    iget-object v0, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v0, v0, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v1, v1, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p1, "ROOM"

    const-string p2, "Remote invalidation client ID not registered"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v0

    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v2, v2, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 108
    :try_start_1
    iget-object v4, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v4, v4, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 109
    iget-object v5, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v5, v5, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eq p1, v4, :cond_1

    .line 111
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 115
    :try_start_2
    iget-object v4, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v4, v4, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    .line 116
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lo/MediaSessionCompat$Callback$StubApi21;

    .line 117
    invoke-interface {v4, p2}, Lo/MediaSessionCompat$Callback$StubApi21;->extraCallback([Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "ROOM"

    const-string v6, "Error invoking a remote callback"

    .line 119
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 123
    :try_start_4
    iget-object p2, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object p2, p2, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 124
    throw p1

    .line 123
    :cond_2
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object p1, p1, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Lo/MediaSessionCompat$Callback$StubApi21;I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v0, v0, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object v1, v1, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 91
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions$1;->ICustomTabsCallback:Lo/getRccTransportControlFlagsFromActions;

    iget-object p1, p1, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
