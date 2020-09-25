.class final Lo/addOnItemTouchListener$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic onMessageChannelReady:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$warmup;->onMessageChannelReady:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 50
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 1161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lo/addOnItemTouchListener$warmup;->onMessageChannelReady:Lo/addOnItemTouchListener;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/addOnItemTouchListener$warmup$1;

    invoke-direct {v2, p0}, Lo/addOnItemTouchListener$warmup$1;-><init>(Lo/addOnItemTouchListener$warmup;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1164
    iget-object v0, p0, Lo/addOnItemTouchListener$warmup;->onMessageChannelReady:Lo/addOnItemTouchListener;

    invoke-static {v0}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;)Lo/getMoveDuration;

    move-result-object v0

    new-instance v1, Lo/releaseGlows$onNavigationEvent;

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "discover_farm"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p1, v2, v3, v4}, Lo/releaseGlows$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;IZ)V

    const-string p1, "data"

    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    new-instance p1, Lo/onGetChildDrawingOrder$onConnectionSuspended;

    invoke-direct {p1, v1}, Lo/onGetChildDrawingOrder$onConnectionSuspended;-><init>(Lo/releaseGlows$onNavigationEvent;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {v0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method
