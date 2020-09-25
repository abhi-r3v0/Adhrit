.class public final Lo/onInterceptFocusSearch$onMessageChannelReady$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onInterceptFocusSearch$onMessageChannelReady;
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
.field public final synthetic onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$4;->onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1173
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onMessageChannelReady(Z)V

    .line 1174
    iget-object v1, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$4;->onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object v1, v1, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v0, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1279
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1280
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$4;->onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object v0, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v0}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v0

    const-string v4, "failed"

    .line 3088
    iput-object v4, v0, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 3089
    iget-object v0, v0, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1176
    iget-object v0, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$4;->onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object v0, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v4}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    invoke-virtual {v0, v5}, Lo/getLayoutInflater;->setDragState(I)V

    .line 1177
    iget-object v0, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$4;->onNavigationEvent:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object v0, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v4}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    invoke-virtual {v0}, Lo/getLayoutInflater;->onMessageChannelReady()V

    .line 1282
    iput-boolean v5, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v4, :cond_2

    .line 1284
    new-instance v0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, v1, v2, p0}, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onInterceptFocusSearch$onMessageChannelReady$4;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1285
    iget-object v0, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1287
    :cond_2
    :goto_0
    new-instance v0, Lo/onInterceptFocusSearch$onMessageChannelReady$4$onMessageChannelReady;

    invoke-direct {v0, v3, v1}, Lo/onInterceptFocusSearch$onMessageChannelReady$4$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 41
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
