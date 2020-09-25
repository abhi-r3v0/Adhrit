.class final Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeToParcel$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/river/RiverPeriodicWorker;->ICustomTabsCallback()Lo/getBatteryLevel;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
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
.field private synthetic onNavigationEvent:Lcom/dreamplug/river/RiverPeriodicWorker;


# direct methods
.method constructor <init>(Lcom/dreamplug/river/RiverPeriodicWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/river/RiverPeriodicWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/writeToParcel$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 10

    const-string v0, "completer"

    .line 14
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    const-string v2, "RiverPeriodicWorker:startWork:adapter"

    .line 1022
    invoke-static {v1, v2, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    iget-object v0, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/river/RiverPeriodicWorker;

    .line 1098
    iget-object v1, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    const-string v0, "applicationContext"

    .line 1023
    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    invoke-static/range {v1 .. v9}, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->onNavigationEvent(Landroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJZLo/getServerTime;I)V

    .line 1024
    iget-object v0, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/river/RiverPeriodicWorker;

    new-instance v1, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent$1;

    invoke-direct {v1, p1}, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent$1;-><init>(Lo/writeToParcel$ICustomTabsCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/dreamplug/river/RiverPeriodicWorker;->onPostMessage(Lcom/dreamplug/river/RiverPeriodicWorker;Ljava/lang/Runnable;)V

    .line 1027
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/river/RiverPeriodicWorker;

    invoke-static {v0}, Lcom/dreamplug/river/RiverPeriodicWorker;->extraCallback(Lcom/dreamplug/river/RiverPeriodicWorker;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
