.class final Lo/cancelLoad$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelLoad;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/cancelLoad;


# direct methods
.method constructor <init>(Lo/cancelLoad;)V
    .locals 0

    iput-object p1, p0, Lo/cancelLoad$onTransact;->onPostMessage:Lo/cancelLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 41
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;

    .line 1114
    iget-object v0, p0, Lo/cancelLoad$onTransact;->onPostMessage:Lo/cancelLoad;

    invoke-static {v0}, Lo/cancelLoad;->onPostMessage(Lo/cancelLoad;)Lo/takeContentChanged;

    move-result-object v0

    .line 2019
    iget-object v0, v0, Lo/takeContentChanged;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "AMEX"

    .line 1114
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object p1, p0, Lo/cancelLoad$onTransact;->onPostMessage:Lo/cancelLoad;

    invoke-static {p1}, Lo/cancelLoad;->onPostMessage(Lo/cancelLoad;)Lo/takeContentChanged;

    move-result-object p1

    .line 3000
    iget-object v0, p1, Lo/takeContentChanged;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    .line 2038
    invoke-interface {v0}, Lo/getMainThreadExecutor;->extraCallback()Lo/clearScrap;

    move-result-object v0

    .line 2039
    new-instance v1, Lo/takeContentChanged$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/takeContentChanged$ICustomTabsCallback;-><init>(Lo/takeContentChanged;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lo/cancelLoad$onTransact;->onPostMessage:Lo/cancelLoad;

    invoke-static {v0, p1}, Lo/cancelLoad;->onMessageChannelReady(Lo/cancelLoad;Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;)V

    return-void
.end method
