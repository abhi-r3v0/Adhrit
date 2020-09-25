.class public final Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LifecycleController$observer$1$getInterfaceDescriptor;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$oneLinkObserver$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/LifecycleController$observer$1$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 9

    .line 1174
    iget-object v0, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    iget-object v0, v0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1196
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1197
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 1175
    iget-object v4, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    iget-object v4, v4, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v4, v6}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onDestroyView;

    const-string v6, "loader"

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v4, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    iget-object v4, v4, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    invoke-static {v4}, Lo/LifecycleController$observer$1;->ICustomTabsCallback(Lo/LifecycleController$observer$1;)Lo/LifecycleController$observer$1$ICustomTabsCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1177
    iget-object v6, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    iget-object v6, v6, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    .line 2000
    iget-object v6, v6, Lo/LifecycleController$observer$1;->extraCallback:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getMoveDuration;

    const/4 v7, 0x4

    const-string v8, "contact_invite"

    .line 1177
    invoke-static {v6, v8, v5, v2, v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1178
    iget-object v2, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;->onMessageChannelReady:Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    iget-object v2, v2, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    .line 3000
    iget-object v2, v2, Lo/LifecycleController$observer$1;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 3190
    iget-object v4, v4, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 4077
    iget-object v4, v4, Lo/onActivityDestroyed;->onPostMessage:Ljava/lang/String;

    const-string v6, "campaignId"

    .line 1178
    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4437
    new-instance v6, Lo/onGetChildDrawingOrder$cancelAll;

    new-instance v7, Lo/onActivityStarted$extraCallback;

    const-string v8, "greeting_card"

    invoke-direct {v7, v8, v4}, Lo/onActivityStarted$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lo/onGetChildDrawingOrder$cancelAll;-><init>(Lo/onActivityStarted$extraCallback;)V

    check-cast v6, Lo/getRemoveDuration;

    invoke-virtual {v2, v6}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 1199
    :cond_1
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 1200
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_3

    .line 1201
    new-instance v2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1202
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1204
    :cond_3
    :goto_1
    new-instance v1, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady$5;

    invoke-direct {v1, v3, v0}, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady$5;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 30
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
