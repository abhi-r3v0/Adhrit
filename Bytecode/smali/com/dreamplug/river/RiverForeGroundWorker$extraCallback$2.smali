.class final Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic extraCallback:Lo/writeToParcel$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic onNavigationEvent:J

.field private synthetic onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/writeToParcel$ICustomTabsCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iput-object p2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    iput-wide p5, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onNavigationEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x9

    const-string v3, "RiverFGW:Adapter:notification-shown"

    .line 70
    invoke-static {v2, v3, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "river_fns_shown"

    .line 71
    invoke-static {v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onNavigationEvent(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RiverFGW:Adapter:sms-read-done-complete"

    .line 74
    invoke-static {v2, v1, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    const-string v1, "debug_fns_job_end_notification_future"

    invoke-static {v0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    const-string v2, "completer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-boolean v2, v2, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onNavigationEvent:Z

    iget-wide v3, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$2;->onNavigationEvent:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dreamplug/river/RiverForeGroundWorker;->onPostMessage(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/writeToParcel$ICustomTabsCallback;ZJ)V

    :cond_0
    return-void
.end method
