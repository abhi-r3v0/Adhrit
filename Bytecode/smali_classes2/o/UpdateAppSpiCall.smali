.class public final Lo/UpdateAppSpiCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpdateAppSpiCall$onNavigationEvent;,
        Lo/UpdateAppSpiCall$extraCallback;
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lo/UpdateAppSpiCall$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lo/UpdateAppSpiCall$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/UpdateAppSpiCall$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lo/UpdateAppSpiCall$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 312
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/UpdateAppSpiCall;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/UpdateAppSpiCall;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/UpdateAppSpiCall;->onNavigationEvent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    monitor-exit p0

    return v1

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UpdateAppSpiCall$extraCallback;

    .line 2126
    iget-object p1, p1, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpdateAppSpiCall$extraCallback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpdateAppSpiCall$extraCallback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/UpdateAppSpiCall;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onMessageChannelReady(Ljava/lang/String;)Lo/UpdateAppSpiCall$extraCallback;
    .locals 1

    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UpdateAppSpiCall$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MixpanelAPI.Tweaks"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to set a tweak \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which has never been defined."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpdateAppSpiCall$extraCallback;

    .line 1162
    new-instance v8, Lo/UpdateAppSpiCall$extraCallback;

    iget v2, v0, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent:I

    iget-object v3, v0, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    iget-object v4, v0, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    iget-object v5, v0, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    iget-object v7, v0, Lo/UpdateAppSpiCall$extraCallback;->asBinder:Ljava/lang/String;

    move-object v1, v8

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lo/UpdateAppSpiCall$extraCallback;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 9

    const-string v0, "MixpanelAPI.Tweaks"

    if-nez p1, :cond_0

    const-string p1, "Attempt to define a null tweak"

    .line 473
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Attempt to define a tweak \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" twice with the same name"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lo/UpdateAppSpiCall;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-object p2, p0, Lo/UpdateAppSpiCall;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/UpdateAppSpiCall$extraCallback;

    .line 484
    iget-object p3, p0, Lo/UpdateAppSpiCall;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 486
    :cond_2
    new-instance v8, Lo/UpdateAppSpiCall$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p3

    move-object v2, p2

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lo/UpdateAppSpiCall$extraCallback;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;B)V

    move-object p2, v8

    .line 488
    :goto_0
    iget-object p3, p0, Lo/UpdateAppSpiCall;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object p3, p0, Lo/UpdateAppSpiCall;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object p1, p0, Lo/UpdateAppSpiCall;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    .line 492
    iget-object p3, p0, Lo/UpdateAppSpiCall;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/UpdateAppSpiCall$onNavigationEvent;

    invoke-interface {p3}, Lo/UpdateAppSpiCall$onNavigationEvent;->onMessageChannelReady()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final declared-synchronized onPostMessage(Lo/UpdateAppSpiCall$onNavigationEvent;)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lo/UpdateAppSpiCall;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
