.class final Lcom/dreamplug/batcher/BatcherWorker$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeToParcel$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/batcher/BatcherWorker;->ICustomTabsCallback()Lo/getBatteryLevel;
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
.field final synthetic onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker;


# direct methods
.method constructor <init>(Lcom/dreamplug/batcher/BatcherWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/batcher/BatcherWorker$extraCallback;->onNavigationEvent:Lcom/dreamplug/batcher/BatcherWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/writeToParcel$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 2

    const-string v0, "completer"

    .line 13
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 2000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1018
    new-instance v1, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/dreamplug/batcher/BatcherWorker$extraCallback$3;-><init>(Lcom/dreamplug/batcher/BatcherWorker$extraCallback;Lo/writeToParcel$ICustomTabsCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
