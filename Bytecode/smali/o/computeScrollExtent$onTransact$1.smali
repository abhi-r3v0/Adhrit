.class public final Lo/computeScrollExtent$onTransact$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollExtent$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/computeScrollExtent$onTransact;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onTransact$1;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1230
    iget-object v0, p0, Lo/computeScrollExtent$onTransact$1;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object v0, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1514
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1515
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 1231
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$1;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v2}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v2

    const-string v4, "failed"

    .line 3088
    iput-object v4, v2, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 3089
    iget-object v2, v2, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1232
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$1;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v2, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getLayoutInflater;

    invoke-virtual {v2, v5}, Lo/getLayoutInflater;->setDragState(I)V

    .line 1233
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$1;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v2, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getLayoutInflater;

    invoke-virtual {v2}, Lo/getLayoutInflater;->onMessageChannelReady()V

    .line 1517
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 1518
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 1519
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/computeScrollExtent$onTransact$1;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1520
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1522
    :cond_2
    :goto_0
    new-instance v1, Lo/computeScrollExtent$onTransact$1$onPostMessage;

    invoke-direct {v1, v3, v0}, Lo/computeScrollExtent$onTransact$1$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 65
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
