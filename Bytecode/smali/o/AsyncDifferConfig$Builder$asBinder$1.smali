.class public final Lo/AsyncDifferConfig$Builder$asBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncDifferConfig$Builder$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field public final synthetic onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$asBinder$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 384
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$asBinder$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v0, v0, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 474
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$asBinder$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->mayLaunchUrl(Lo/AsyncDifferConfig$Builder;)V

    .line 386
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$asBinder$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v2

    .line 2031
    iget-object v2, v2, Lo/getCurrentList;->onRelationshipValidationResult:Lo/setActive;

    .line 386
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 477
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 479
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$2$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$2$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/AsyncDifferConfig$Builder$asBinder$1;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 480
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 482
    :cond_2
    :goto_0
    new-instance v1, Lo/AsyncDifferConfig$Builder$asBinder$1$extraCallback;

    invoke-direct {v1, v3, v0}, Lo/AsyncDifferConfig$Builder$asBinder$1$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
