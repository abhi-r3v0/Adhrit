.class final Lo/getNextVisibleChildIndex;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getNextVisibleChildIndex$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private onNavigationEvent:Z

.field private final onPostMessage:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/getNextVisibleChildIndex$onMessageChannelReady;

    invoke-direct {v2}, Lo/getNextVisibleChildIndex$onMessageChannelReady;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/getNextVisibleChildIndex;->onPostMessage:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final declared-synchronized onNavigationEvent(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p0, Lo/getNextVisibleChildIndex;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lo/getNextVisibleChildIndex;->onNavigationEvent:Z

    .line 22
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lo/getNextVisibleChildIndex;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 19
    :cond_1
    :goto_0
    :try_start_1
    iget-object p2, p0, Lo/getNextVisibleChildIndex;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
