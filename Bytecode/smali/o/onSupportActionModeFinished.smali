.class public final Lo/onSupportActionModeFinished;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSupportActionModeFinished$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/onSupportActionModeFinished$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private volatile onPostMessage:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/onSupportActionModeFinished;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 37
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/onSupportActionModeFinished;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onSupportActionModeFinished;->extraCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lo/onSupportActionModeFinished;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lo/onSupportActionModeFinished;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    new-instance v2, Lo/onSupportActionModeFinished$extraCallback;

    invoke-direct {v2, p0, p1}, Lo/onSupportActionModeFinished$extraCallback;-><init>(Lo/onSupportActionModeFinished;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lo/onSupportActionModeFinished;->onPostMessage:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lo/onSupportActionModeFinished;->onPostMessage()V

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lo/onSupportActionModeFinished;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lo/onSupportActionModeFinished;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0

    throw v1
.end method

.method final onPostMessage()V
    .locals 3

    .line 53
    iget-object v0, p0, Lo/onSupportActionModeFinished;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lo/onSupportActionModeFinished;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lo/onSupportActionModeFinished;->onPostMessage:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lo/onSupportActionModeFinished;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/onSupportActionModeFinished;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
