.class final Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Integer;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;->onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1091
    iget-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;->onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;

    iget-object p1, p1, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5;->onNavigationEvent:Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/river/RiverForeGroundWorker;

    const-string v0, "debug_fns_sms_uploading_finished"

    invoke-static {p1, v0}, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x9

    const-string v1, "RiverFGW:Adapter:send:done"

    .line 1092
    invoke-static {v0, v1, p1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5$3;

    invoke-direct {v0, p0}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5$3;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback$5$5;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
