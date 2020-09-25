.class public final Lcom/dreamplug/batcher/BatcherWorker;
.super Landroidx/work/ListenableWorker;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/batcher/BatcherWorker;",
        "Landroidx/work/ListenableWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "jobEndCallback",
        "Ljava/lang/Runnable;",
        "getParams",
        "()Landroidx/work/WorkerParameters;",
        "requestDispatcher",
        "Lcom/dreamplug/batcher/sync/RequestDispatcher;",
        "onStartJob",
        "",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "onStopped",
        "startWork",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Companion",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Lo/overridesItemVisibility;

.field private onMessageChannelReady:Ljava/lang/Runnable;

.field private final onTransact:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Lcom/dreamplug/batcher/BatcherWorker;->onTransact:Landroidx/work/WorkerParameters;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/batcher/BatcherWorker;Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0xa

    const-string v3, "BatcherWorker:onStartJob"

    .line 3028
    invoke-static {v2, v3, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3029
    new-instance v1, Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;

    invoke-direct {v1, p0}, Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;-><init>(Lcom/dreamplug/batcher/BatcherWorker;)V

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    .line 3033
    sget-object v1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 4000
    sget-object v1, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 3033
    iget-object v3, p0, Lcom/dreamplug/batcher/BatcherWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    const-wide/32 v4, 0x249f0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3034
    iget-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker;->onTransact:Landroidx/work/WorkerParameters;

    .line 4098
    iget-object v1, v1, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 4303
    iget-object v1, v1, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    const-string/jumbo v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4304
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4305
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 3035
    iget-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker;->onTransact:Landroidx/work/WorkerParameters;

    .line 5098
    iget-object v1, v1, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 5196
    iget-object v1, v1, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5197
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 5198
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0xa

    :goto_1
    if-eqz v4, :cond_3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BatcherWorker:send"

    .line 3037
    invoke-static {v2, v1, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3038
    sget-object v0, Lo/overridesItemVisibility;->onNavigationEvent:Lo/overridesItemVisibility$extraCallback;

    const-string v0, "batcher"

    invoke-static {v4, v0}, Lo/overridesItemVisibility$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/overridesItemVisibility;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker;->extraCallback:Lo/overridesItemVisibility;

    if-eqz v0, :cond_2

    .line 3039
    new-instance v1, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;

    move-object v3, v1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;-><init>(Ljava/lang/String;JLcom/dreamplug/batcher/BatcherWorker;Lo/writeToParcel$ICustomTabsCallback;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, v1}, Lo/overridesItemVisibility;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    :cond_2
    return-void

    .line 5334
    :cond_3
    new-instance p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 3047
    invoke-virtual {p1, p0}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/batcher/BatcherWorker;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/dreamplug/batcher/BatcherWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/batcher/BatcherWorker;)Ljava/lang/Runnable;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/dreamplug/batcher/BatcherWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/batcher/BatcherWorker;)Lo/overridesItemVisibility;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/dreamplug/batcher/BatcherWorker;->extraCallback:Lo/overridesItemVisibility;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getBatteryLevel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1118
    iget-object v1, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2098
    iget-object v1, v1, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "BatcherWorker:startWork:%s"

    .line 16
    invoke-static {v1, v2, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback;

    invoke-direct {v0, p0}, Lcom/dreamplug/batcher/BatcherWorker$extraCallback;-><init>(Lcom/dreamplug/batcher/BatcherWorker;)V

    check-cast v0, Lo/writeToParcel$extraCallback;

    invoke-static {v0}, Lo/writeToParcel;->onPostMessage(Lo/writeToParcel$extraCallback;)Lo/getBatteryLevel;

    move-result-object v0

    const-string v1, "CallbackToFutureAdapter.\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 4

    .line 53
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onMessageChannelReady()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0xa

    const-string v3, "BatcherWorker:onStopped"

    .line 54
    invoke-static {v2, v3, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker;->extraCallback:Lo/overridesItemVisibility;

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "RequestDispatcher:cancel"

    .line 2155
    invoke-static {v2, v3, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2156
    iget-object v0, v1, Lo/overridesItemVisibility;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
