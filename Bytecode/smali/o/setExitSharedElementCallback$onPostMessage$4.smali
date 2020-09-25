.class final Lo/setExitSharedElementCallback$onPostMessage$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setExitSharedElementCallback$onPostMessage;
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;

.field private synthetic onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback$onPostMessage;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iput-object p2, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 89
    iget-object v0, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v0, v0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->mayLaunchUrl(Lo/setExitSharedElementCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    iget-object v1, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;

    .line 1009
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;->extraCallback:Ljava/lang/String;

    const-string v2, "bank"

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v1, v1, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->requestPostMessageChannel(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issuer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v1, v1, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v2, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v2, v2, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v0, v0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    .line 2000
    iget-object v0, v0, Lo/setExitSharedElementCallback;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 94
    invoke-static {v0, v1, v2, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v0, v0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 97
    iget-object v0, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->onMessageChannelReady:Lo/setExitSharedElementCallback$onPostMessage;

    iget-object v0, v0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    .line 3000
    iget-object v0, v0, Lo/setExitSharedElementCallback;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 97
    new-instance v1, Lo/onDetach$onNavigationEvent;

    iget-object v2, p0, Lo/setExitSharedElementCallback$onPostMessage$4;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;

    .line 3009
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;->extraCallback:Ljava/lang/String;

    const-string v3, "AutoDebitAddAccountFragment"

    .line 97
    invoke-direct {v1, v3, v2}, Lo/onDetach$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extraData"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3367
    new-instance v2, Lo/onGetChildDrawingOrder$onPostMessage;

    invoke-direct {v2, v1}, Lo/onGetChildDrawingOrder$onPostMessage;-><init>(Lo/onDetach$onNavigationEvent;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v0, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method
