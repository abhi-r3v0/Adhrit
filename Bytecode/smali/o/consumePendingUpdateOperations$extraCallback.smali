.class final Lo/consumePendingUpdateOperations$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic ICustomTabsCallback:Lo/consumePendingUpdateOperations;

.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;


# direct methods
.method constructor <init>(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    iput-object p2, p0, Lo/consumePendingUpdateOperations$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1298
    iget-object v0, p0, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    .line 2021
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 2072
    iget-object v0, v0, Lo/pullGlows;->requestPostMessageChannel:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1298
    sget-object v1, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 2108
    iget-object v0, v0, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v1, v0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    .line 3021
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 3072
    iget-object v0, v0, Lo/pullGlows;->requestPostMessageChannel:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1299
    sget-object v1, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    new-instance v2, Lo/consumePendingUpdateOperations$extraCallback$3;

    invoke-direct {v2, p0}, Lo/consumePendingUpdateOperations$extraCallback$3;-><init>(Lo/consumePendingUpdateOperations$extraCallback;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 21
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
