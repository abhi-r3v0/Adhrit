.class final Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/batcher/BatcherWorker;
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
.field private synthetic onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;


# direct methods
.method constructor <init>(Lcom/dreamplug/batcher/BatcherWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;->onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;->onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

    invoke-static {v0}, Lcom/dreamplug/batcher/BatcherWorker;->onPostMessage(Lcom/dreamplug/batcher/BatcherWorker;)Lo/overridesItemVisibility;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RequestDispatcher:cancel"

    .line 1155
    invoke-static {v1, v3, v2}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    iget-object v0, v0, Lo/overridesItemVisibility;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker$onMessageChannelReady;->onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dreamplug/batcher/BatcherWorker;->extraCallback(Lcom/dreamplug/batcher/BatcherWorker;Ljava/lang/Runnable;)V

    return-void
.end method
