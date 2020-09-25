.class final Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/batcher/BatcherWorker;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "invoke",
        "com/dreamplug/batcher/BatcherWorker$onStartJob$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:J

.field private synthetic onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

.field private synthetic onNavigationEvent:Lo/writeToParcel$ICustomTabsCallback;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/dreamplug/batcher/BatcherWorker;Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iput-wide p2, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->extraCallback:J

    iput-object p4, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

    iput-object p5, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onNavigationEvent:Lo/writeToParcel$ICustomTabsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 13
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1040
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 2000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1040
    iget-object v1, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/batcher/BatcherWorker;

    invoke-static {v1}, Lcom/dreamplug/batcher/BatcherWorker;->onNavigationEvent(Lcom/dreamplug/batcher/BatcherWorker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1041
    iget-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onNavigationEvent:Lo/writeToParcel$ICustomTabsCallback;

    .line 2334
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 1041
    invoke-virtual {v0, v1}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1043
    sget-object p1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v0, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget-wide v1, p0, Lcom/dreamplug/batcher/BatcherWorker$ICustomTabsCallback;->extraCallback:J

    const-wide/16 v3, 0x3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x7080

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Ljava/lang/String;J)V

    .line 13
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
