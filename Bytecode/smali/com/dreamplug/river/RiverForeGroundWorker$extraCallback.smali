.class final Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeToParcel$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/river/RiverForeGroundWorker;->ICustomTabsCallback()Lo/getBatteryLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/writeToParcel$extraCallback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "kotlin.jvm.PlatformType",
        "attachCompleter"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

.field final synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    iput-boolean p2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/writeToParcel$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "completer"

    .line 38
    invoke-static {v8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1059
    iget-boolean v2, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onNavigationEvent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const/16 v10, 0x9

    const-string v2, "RiverFGW:Adapter:showNotification:%s"

    invoke-static {v10, v2, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v1, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    const-string v2, "debug_fns_job_call_back_adapter_started"

    invoke-static {v1, v2}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V

    .line 1061
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1062
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1065
    iget-boolean v1, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "river_fns_started"

    .line 1066
    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1068
    iget-object v1, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    move-result-object v2

    .line 1225
    iput-boolean v0, v1, Landroidx/work/ListenableWorker;->asBinder:Z

    .line 1226
    iget-object v0, v1, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2194
    iget-object v0, v0, Landroidx/work/WorkerParameters;->asBinder:Lo/setTextDelegate$onMessageChannelReady;

    .line 3098
    iget-object v3, v1, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 3107
    iget-object v1, v1, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 4087
    iget-object v1, v1, Landroidx/work/WorkerParameters;->extraCallback:Ljava/util/UUID;

    .line 1227
    invoke-interface {v0, v3, v1, v2}, Lo/setTextDelegate$onMessageChannelReady;->ICustomTabsCallback(Landroid/content/Context;Ljava/util/UUID;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Lo/getBatteryLevel;

    move-result-object v15

    const-string/jumbo v0, "setForegroundAsync(createForegroundInfo())"

    .line 1068
    invoke-static {v15, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    new-instance v16, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p1

    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/writeToParcel$ICustomTabsCallback;J)V

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Runnable;

    .line 1078
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1069
    invoke-interface {v15, v0, v1}, Lo/getBatteryLevel;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1081
    :cond_0
    iget-object v0, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    new-instance v1, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;

    invoke-direct {v1, v7, v8, v13, v14}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Lo/writeToParcel$ICustomTabsCallback;J)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onPostMessage(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/Runnable;)V

    .line 1085
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Lcom/dreamplug/river/RiverForeGroundWorker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "RiverFGW:Adapter:getSms"

    .line 1086
    invoke-static {v10, v1, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    iget-object v0, v7, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    .line 4098
    iget-object v15, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    const-string v0, "applicationContext"

    .line 1087
    invoke-static {v15, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    new-instance v9, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v11

    move-object/from16 v4, p1

    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/writeToParcel$ICustomTabsCallback;J)V

    move-object/from16 v22, v9

    check-cast v22, Lo/getServerTime;

    const/16 v23, 0x1e

    invoke-static/range {v15 .. v23}, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->onNavigationEvent(Landroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJZLo/getServerTime;I)V

    .line 38
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
