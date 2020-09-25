.class final Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/batcher/BatcherWorker$extraCallback;
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
.field private synthetic onMessageChannelReady:Lo/writeToParcel$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker$extraCallback;


# direct methods
.method constructor <init>(Lcom/dreamplug/batcher/BatcherWorker$extraCallback;Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;->onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker$extraCallback;

    iput-object p2, p0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;->onMessageChannelReady:Lo/writeToParcel$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;->onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback;->onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker;

    iget-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;->onMessageChannelReady:Lo/writeToParcel$ICustomTabsCallback;

    const-string v2, "completer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dreamplug/batcher/BatcherWorker;->ICustomTabsCallback(Lcom/dreamplug/batcher/BatcherWorker;Lo/writeToParcel$ICustomTabsCallback;)V

    return-void
.end method
