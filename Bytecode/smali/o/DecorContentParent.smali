.class final Lo/DecorContentParent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DecorContentParent$extraCallback;,
        Lo/DecorContentParent$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/DecorContentParent$extraCallback;

.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/DecorContentParent$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/DecorContentParent;->onMessageChannelReady:Ljava/util/Map;

    .line 22
    new-instance v0, Lo/DecorContentParent$extraCallback;

    invoke-direct {v0}, Lo/DecorContentParent$extraCallback;-><init>()V

    iput-object v0, p0, Lo/DecorContentParent;->ICustomTabsCallback:Lo/DecorContentParent$extraCallback;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 5

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lo/DecorContentParent;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    if-eqz v0, :cond_4

    check-cast v0, Lo/DecorContentParent$onMessageChannelReady;

    .line 42
    iget v1, v0, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    if-lez v1, :cond_3

    .line 51
    iget v1, v0, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    .line 52
    iget v1, v0, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    if-nez v1, :cond_2

    .line 53
    iget-object v1, p0, Lo/DecorContentParent;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DecorContentParent$onMessageChannelReady;

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object p1, p0, Lo/DecorContentParent;->ICustomTabsCallback:Lo/DecorContentParent$extraCallback;

    .line 1098
    iget-object v2, p1, Lo/DecorContentParent$extraCallback;->onNavigationEvent:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1099
    :try_start_1
    iget-object v3, p1, Lo/DecorContentParent$extraCallback;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 1100
    iget-object p1, p1, Lo/DecorContentParent$extraCallback;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1102
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2

    throw p1

    .line 55
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    iget-object p1, v0, Lo/DecorContentParent$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 43
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot release a lock that is not held, safeKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1029
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 66
    monitor-exit p0

    throw p1
.end method
