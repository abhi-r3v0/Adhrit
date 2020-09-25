.class final Lo/onReset$mayLaunchUrl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset$mayLaunchUrl;
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
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/onReset$mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/onReset$mayLaunchUrl;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$mayLaunchUrl$3;->ICustomTabsCallback:Lo/onReset$mayLaunchUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 1506
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/onReset$mayLaunchUrl$3;->ICustomTabsCallback:Lo/onReset$mayLaunchUrl;

    iget-object v0, v0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string/jumbo v1, "this.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/onReset$mayLaunchUrl$3$1;

    invoke-direct {v1, p0}, Lo/onReset$mayLaunchUrl$3$1;-><init>(Lo/onReset$mayLaunchUrl$3;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v0, v2, v3, v1}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
