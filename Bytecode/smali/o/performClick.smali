.class final Lo/performClick;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/performClick$onPostMessage;,
        Lo/performClick$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/setTextFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile ICustomTabsCallback$Stub:Lo/performClick$extraCallback;

.field private extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AppCompatImageHelper;",
            "Lo/performClick$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field onPostMessage:Lo/setTextFuture$onPostMessage;


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 32
    new-instance v0, Lo/performClick$3;

    invoke-direct {v0}, Lo/performClick$3;-><init>()V

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1, v0}, Lo/performClick;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/performClick;->extraCallback:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lo/performClick;->ICustomTabsCallback:Ljava/lang/ref/ReferenceQueue;

    .line 54
    iput-boolean p1, p0, Lo/performClick;->onNavigationEvent:Z

    .line 57
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private extraCallback(Lo/performClick$onPostMessage;)V
    .locals 7

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lo/performClick;->extraCallback:Ljava/util/Map;

    iget-object v1, p1, Lo/performClick$onPostMessage;->ICustomTabsCallback:Lo/AppCompatImageHelper;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-boolean v0, p1, Lo/performClick$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/performClick$onPostMessage;->onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    monitor-exit p0

    .line 117
    new-instance v0, Lo/setTextFuture;

    iget-object v2, p1, Lo/performClick$onPostMessage;->onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lo/performClick$onPostMessage;->ICustomTabsCallback:Lo/AppCompatImageHelper;

    iget-object v6, p0, Lo/performClick;->onPostMessage:Lo/setTextFuture$onPostMessage;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/setTextFuture;-><init>(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;ZZLo/AppCompatImageHelper;Lo/setTextFuture$onPostMessage;)V

    .line 120
    iget-object v1, p0, Lo/performClick;->onPostMessage:Lo/setTextFuture$onPostMessage;

    iget-object p1, p1, Lo/performClick$onPostMessage;->ICustomTabsCallback:Lo/AppCompatImageHelper;

    invoke-interface {v1, p1, v0}, Lo/setTextFuture$onPostMessage;->ICustomTabsCallback(Lo/AppCompatImageHelper;Lo/setTextFuture;)V

    return-void

    .line 113
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized extraCallback(Lo/AppCompatImageHelper;)Lo/setTextFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            ")",
            "Lo/setTextFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lo/performClick;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/performClick$onPostMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 96
    monitor-exit p0

    return-object p1

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setTextFuture;

    if-nez v0, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lo/performClick;->extraCallback(Lo/performClick$onPostMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent(Lo/AppCompatImageHelper;)V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lo/performClick;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/performClick$onPostMessage;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2194
    iput-object v0, p1, Lo/performClick$onPostMessage;->onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 2195
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage(Lo/AppCompatImageHelper;Lo/setTextFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Lo/setTextFuture<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    new-instance v0, Lo/performClick$onPostMessage;

    iget-object v1, p0, Lo/performClick;->ICustomTabsCallback:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lo/performClick;->onNavigationEvent:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lo/performClick$onPostMessage;-><init>(Lo/AppCompatImageHelper;Lo/setTextFuture;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 79
    iget-object p2, p0, Lo/performClick;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/performClick$onPostMessage;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1194
    iput-object p2, p1, Lo/performClick$onPostMessage;->onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 1195
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final run()V
    .locals 1

    .line 3128
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/performClick;->ICustomTabsCallback:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lo/performClick$onPostMessage;

    .line 3129
    invoke-direct {p0, v0}, Lo/performClick;->extraCallback(Lo/performClick$onPostMessage;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3138
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
