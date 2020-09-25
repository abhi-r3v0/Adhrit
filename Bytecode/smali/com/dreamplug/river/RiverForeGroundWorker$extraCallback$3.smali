.class final Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;
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
.field private synthetic ICustomTabsCallback:Lo/writeToParcel$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:J

.field private synthetic onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Lo/writeToParcel$ICustomTabsCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iput-object p2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->ICustomTabsCallback:Lo/writeToParcel$ICustomTabsCallback;

    iput-wide p3, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    const-string v1, "debug_fns_job_timed_out"

    invoke-static {v0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    iget-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->ICustomTabsCallback:Lo/writeToParcel$ICustomTabsCallback;

    const-string v2, "completer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onPostMessage:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-boolean v2, v2, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onNavigationEvent:Z

    iget-wide v3, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$3;->onMessageChannelReady:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dreamplug/river/RiverForeGroundWorker;->onPostMessage(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/writeToParcel$ICustomTabsCallback;ZJ)V

    return-void
.end method
