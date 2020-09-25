.class public final Lo/endBatchedUpdates$ICustomTabsCallback;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/endBatchedUpdates;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\u000b\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/utils/PreciseCountDownTimer$mHandler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/endBatchedUpdates;


# direct methods
.method constructor <init>(Lo/endBatchedUpdates;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    monitor-enter p1

    .line 30
    :try_start_0
    iget-object v0, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 1012
    iget-boolean v0, v0, Lo/endBatchedUpdates;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    monitor-exit p1

    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 2012
    iget-wide v0, v0, Lo/endBatchedUpdates;->extraCallback:J

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 37
    iget-object v0, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 3012
    iget-object v0, v0, Lo/endBatchedUpdates;->onMessageChannelReady:Lo/getServerTime;

    if-eqz v0, :cond_4

    .line 37
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_1

    .line 39
    :cond_1
    iget-object v4, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 4012
    iget-object v4, v4, Lo/endBatchedUpdates;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    if-eqz v4, :cond_2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    iget-object v0, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 5012
    iget-wide v0, v0, Lo/endBatchedUpdates;->onNavigationEvent:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 43
    iget-object v6, p0, Lo/endBatchedUpdates$ICustomTabsCallback;->ICustomTabsCallback:Lo/endBatchedUpdates;

    .line 7012
    iput-wide v0, v6, Lo/endBatchedUpdates;->onNavigationEvent:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v2, v4

    :goto_0
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_4
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
