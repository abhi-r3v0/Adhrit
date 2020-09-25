.class final Lo/cancelLoad$extraCallback;
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
        "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
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
        "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
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
.field private synthetic onNavigationEvent:Lo/cancelLoad;


# direct methods
.method constructor <init>(Lo/cancelLoad;)V
    .locals 0

    iput-object p1, p0, Lo/cancelLoad$extraCallback;->onNavigationEvent:Lo/cancelLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 41
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2011
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "active"

    .line 1109
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 3011
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, "inprogress"

    .line 1109
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1110
    :goto_2
    iget-object p1, p0, Lo/cancelLoad$extraCallback;->onNavigationEvent:Lo/cancelLoad;

    invoke-static {p1}, Lo/cancelLoad;->onPostMessage(Lo/cancelLoad;)Lo/takeContentChanged;

    move-result-object v1

    .line 3017
    iget-object v1, v1, Lo/takeContentChanged;->onNavigationEvent:Lo/setActive;

    .line 3320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v3, :cond_3

    move-object v0, v1

    .line 1110
    :cond_3
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;

    invoke-static {p1, v0, v2}, Lo/cancelLoad;->onNavigationEvent(Lo/cancelLoad;Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;Z)V

    return-void
.end method
