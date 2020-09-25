.class public final Lo/endBatchedUpdates;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/endBatchedUpdates$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\n\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0014\u001a\u00020\u0010J\u0014\u0010\u0015\u001a\u00020\u00102\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u001a\u0010\u0016\u001a\u00020\u00102\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00100\u0012J\u0006\u0010\u0017\u001a\u00020\u0010J\u0006\u0010\u0018\u001a\u00020\u0010J\u0006\u0010\u0019\u001a\u00020\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/utils/PreciseCountDownTimer;",
        "",
        "mMillisInFuture",
        "",
        "mCountdownInterval",
        "(JJ)V",
        "cancelled",
        "",
        "lastTickTime",
        "mHandler",
        "com/dreamplug/utils/PreciseCountDownTimer$mHandler$1",
        "Lcom/dreamplug/utils/PreciseCountDownTimer$mHandler$1;",
        "mStopTimeInFuture",
        "millisInFuture",
        "onFinishCallback",
        "Lkotlin/Function0;",
        "",
        "onTickCallback",
        "Lkotlin/Function1;",
        "startTime",
        "cancel",
        "onFinish",
        "onTick",
        "pause",
        "resume",
        "start",
        "Companion",
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
.field public ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Long;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:J

.field private asBinder:J

.field extraCallback:J

.field public onMessageChannelReady:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:J

.field onPostMessage:Z

.field private final onTransact:Lo/endBatchedUpdates$ICustomTabsCallback;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lo/endBatchedUpdates;->ICustomTabsCallback$Stub:J

    .line 14
    iput-wide p1, p0, Lo/endBatchedUpdates;->asBinder:J

    .line 26
    new-instance p1, Lo/endBatchedUpdates$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/endBatchedUpdates$ICustomTabsCallback;-><init>(Lo/endBatchedUpdates;)V

    iput-object p1, p0, Lo/endBatchedUpdates;->onTransact:Lo/endBatchedUpdates$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Lo/endBatchedUpdates;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 61
    :try_start_0
    iput-boolean v0, p0, Lo/endBatchedUpdates;->onPostMessage:Z

    .line 62
    iget-wide v0, p0, Lo/endBatchedUpdates;->asBinder:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 63
    iget-object v0, p0, Lo/endBatchedUpdates;->onMessageChannelReady:Lo/getServerTime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-object p0

    .line 66
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/endBatchedUpdates;->onNavigationEvent:J

    .line 67
    iget-wide v2, p0, Lo/endBatchedUpdates;->asBinder:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/endBatchedUpdates;->extraCallback:J

    .line 68
    iget-object v0, p0, Lo/endBatchedUpdates;->onTransact:Lo/endBatchedUpdates$ICustomTabsCallback;

    iget-object v1, p0, Lo/endBatchedUpdates;->onTransact:Lo/endBatchedUpdates$ICustomTabsCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 55
    :try_start_0
    iput-boolean v0, p0, Lo/endBatchedUpdates;->onPostMessage:Z

    .line 56
    iget-object v1, p0, Lo/endBatchedUpdates;->onTransact:Lo/endBatchedUpdates$ICustomTabsCallback;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
