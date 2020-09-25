.class final Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
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
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:J

.field final synthetic extraCallback:Lo/writeToParcel$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

.field final synthetic onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/writeToParcel$ICustomTabsCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iput-object p2, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    iput-wide p5, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->ICustomTabsCallback:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    const-string v1, "debug_fns_sms_reading_finished"

    invoke-static {v0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    const-string v2, "RiverFGW:Adapter:sms read, send to server:send"

    .line 1089
    invoke-static {v1, v2, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    sget-object v0, Lo/overridesItemVisibility;->onNavigationEvent:Lo/overridesItemVisibility$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dagger/v2/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fns"

    invoke-static {v0, v1}, Lo/overridesItemVisibility$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/overridesItemVisibility;

    move-result-object v0

    new-instance v1, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;

    invoke-direct {v1, p0}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, v1}, Lo/overridesItemVisibility;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 38
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
